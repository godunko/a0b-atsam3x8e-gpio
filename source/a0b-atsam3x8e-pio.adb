--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with A0B.ARMv7M.NVIC_Utilities;     use A0B.ARMv7M.NVIC_Utilities;
with A0B.ATSAM3X8E.SVD.PMC;         use A0B.ATSAM3X8E.SVD.PMC;
with A0B.ATSAM3X8E.SVD.PIO;         use A0B.ATSAM3X8E.SVD.PIO;
with A0B.Types.GCC_Builtins;        use A0B.Types.GCC_Builtins;

with A0B.ATSAM3X8E.PIO.Configuration;

package body A0B.ATSAM3X8E.PIO is

   procedure Enable_Clock (Self : in out ATSAM3X8E_PIO_Controller);

   procedure Enable_EXTI
     (Self : in out ATSAM3X8E_PIO_Controller;
      Mask : A0B.Types.Unsigned_32);

   procedure Disable_EXTI (Self : in out ATSAM3X8E_PIO_Controller);

   procedure Configure_Open_Drain
     (Self       : in out ATSAM3X8E_PIO_Controller'Class;
      Mask       : A0B.Types.Unsigned_32;
      Open_Drain : Boolean);
   --  Configure Open Drain (Multi Drive) output.

   procedure Configure_Pullup
     (Self   : in out ATSAM3X8E_PIO_Controller'Class;
      Mask   : A0B.Types.Unsigned_32;
      Pullup : Boolean);
   --  Configure pull-up resistor on the given line.

   procedure Configure_Input_Filter
     (Self   : in out ATSAM3X8E_PIO_Controller'Class;
      Mask   : A0B.Types.Unsigned_32;
      Filter : Input_Filter);
   --  Configure input filter.

   procedure Configure_Alternative_Function_A
     (Self : in out ATSAM3X8E_PIO_Controller'Class;
      Mask : A0B.Types.Unsigned_32);
   --  Disable PIO control of the lines specified by the Mask and switch
   --  control to alternative function A

   procedure Configure_Alternative_Function_B
     (Self : in out ATSAM3X8E_PIO_Controller'Class;
      Mask : A0B.Types.Unsigned_32);
   --  Disable PIO control of the lines specified by the Mask and switch
   --  control to alternative function B

   ------------------------------------
   -- Configure_Alternative_Function --
   ------------------------------------

   procedure Configure_Alternative_Function
     (Self   : in out ATSAM3X8E_Pin'Class;
      Line   : Line_Function;
      Pullup : Boolean := False)
   is
      Mask       : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));
      Descriptor : constant Configuration.Line_Descriptor :=
        Configuration.AF_Map (Line, Self.Controller.Controller);

   begin
      if Descriptor.Supported then
         case Descriptor.Alternative_Function is
            when Configuration.A =>
               Configure_Alternative_Function_A (Self.Controller.all, Mask);

            when Configuration.B =>
               Configure_Alternative_Function_B (Self.Controller.all, Mask);
         end case;

         Self.Controller.Configure_Pullup (Mask, Pullup);

      else
         raise Program_Error;
      end if;
   end Configure_Alternative_Function;

   --------------------------------------
   -- Configure_Alternative_Function_A --
   --------------------------------------

   procedure Configure_Alternative_Function_A
     (Self : in out ATSAM3X8E_PIO_Controller'Class;
      Mask : A0B.Types.Unsigned_32)
   is
      use type A0B.Types.Unsigned_32;

   begin
      Self.Peripheral.PDR.Val := Mask;
      --  Disable PIO control of the pin

      Self.Peripheral.ABSR.Val := @ and (not Mask);
      --  Select Peripheral A (clear mask's bits)
   end Configure_Alternative_Function_A;

   --------------------------------------
   -- Configure_Alternative_Function_B --
   --------------------------------------

   procedure Configure_Alternative_Function_B
     (Self : in out ATSAM3X8E_PIO_Controller'Class;
      Mask : A0B.Types.Unsigned_32)
   is
      use type A0B.Types.Unsigned_32;

   begin
      Self.Peripheral.PDR.Val := Mask;
      --  Disable PIO control of the pin

      Self.Peripheral.ABSR.Val := @ or Mask;
      --  Select Peripheral B (set mask's bits)
   end Configure_Alternative_Function_B;

   --------------------
   -- Configure_CTS0 --
   --------------------

   overriding procedure Configure_CTS0
     (Self   : in out PB26_Line;
      Pullup : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_CTS0;

   --------------------
   -- Configure_CTS1 --
   --------------------

   overriding procedure Configure_CTS1
     (Self   : in out PA15_Line;
      Pullup : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_CTS1;

   --------------------
   -- Configure_CTS2 --
   --------------------

   overriding procedure Configure_CTS2
     (Self   : in out PB23_Line;
      Pullup : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_CTS2;

   ----------------------------------
   -- Configure_Debouncing_Divider --
   ----------------------------------

   procedure Configure_Debouncing_Divider
     (Self : in out ATSAM3X8E_PIO_Controller'Class;
      Div  : A0B.Types.Unsigned_14) is
   begin
      Self.Peripheral.SCDR.DIV  := Div;
   end Configure_Debouncing_Divider;

   --------------------
   -- Configure_EXTI --
   --------------------

   overriding procedure Configure_EXTI
     (Self   : aliased in out ATSAM3X8E_Pin;
      Mode   : EXTI_Mode;
      Filter : Input_Filter := None;
      Pullup : Boolean      := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Line (Self.Line) := Self'Unchecked_Access;

      Enable_Clock (Self.Controller.all);
      --  Enable PIO's clock to be able to handle external interrupts.

      Self.Disable_Interrupt;

      --  XXX Should input mode be forced (it is not required)? Or forced on
      --  the request?
      --
      --  Self.Peripheral.PER.Arr := [Self.Line => True, others => False];
      --  enable PIO
      --  Self.Peripheral.ODR.Arr := [Pin_Id => True, others => False];
      --  output disable

      case Mode is
         when Both_Edge =>
            Self.Controller.Peripheral.AIMDR.Val := Mask;

         when Rising_Edge =>
            Self.Controller.Peripheral.AIMER.Val  := Mask;
            Self.Controller.Peripheral.ESR.Val    := Mask;
            Self.Controller.Peripheral.REHLSR.Val := Mask;

         when Falling_Edge =>
            Self.Controller.Peripheral.AIMER.Val  := Mask;
            Self.Controller.Peripheral.ESR.Val    := Mask;
            Self.Controller.Peripheral.FELLSR.Val := Mask;

         when Low_Level =>
            Self.Controller.Peripheral.AIMER.Val  := Mask;
            Self.Controller.Peripheral.LSR.Val    := Mask;
            Self.Controller.Peripheral.FELLSR.Val := Mask;

         when High_Level =>
            Self.Controller.Peripheral.AIMER.Val  := Mask;
            Self.Controller.Peripheral.LSR.Val    := Mask;
            Self.Controller.Peripheral.REHLSR.Val := Mask;
      end case;

      Self.Controller.Configure_Pullup (Mask, Pullup);
      Self.Controller.Configure_Input_Filter (Mask, Filter);
   end Configure_EXTI;

   ---------------------
   -- Configure_Input --
   ---------------------

   procedure Configure_Input
     (Self   : in out ATSAM3X8E_Pin'Class;
      Filter : Input_Filter := None;
      Pullup : Boolean      := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Enable_Clock (Self.Controller.all);
      --  Enable PIO's clock to be able to input.

      Self.Controller.Peripheral.PER.Val := Mask;
      --  Enables the PIO to control the corresponding pin (disables
      --  peripheral control of the pin)

      Self.Controller.Peripheral.ODR.Val := Mask;
      --  Disables the output on the I/O line.

      Self.Controller.Configure_Pullup (Mask, Pullup);
      Self.Controller.Configure_Input_Filter (Mask, Filter);
   end Configure_Input;

   ----------------------------
   -- Configure_Input_Filter --
   ----------------------------

   procedure Configure_Input_Filter
     (Self   : in out ATSAM3X8E_PIO_Controller'Class;
      Mask   : A0B.Types.Unsigned_32;
      Filter : Input_Filter) is
   begin
      case Filter is
         when None =>
            Self.Peripheral.IFDR.Val := Mask;

         when Glitch =>
            Self.Peripheral.IFER.Val   := Mask;
            Self.Peripheral.SCIFSR.Val := Mask;

         when Debouncing =>
            Self.Peripheral.IFER.Val  := Mask;
            Self.Peripheral.DIFSR.Val := Mask;
      end case;
   end Configure_Input_Filter;

   --------------------------
   -- Configure_Open_Drain --
   --------------------------

   procedure Configure_Open_Drain
     (Self       : in out ATSAM3X8E_PIO_Controller'Class;
      Mask       : A0B.Types.Unsigned_32;
      Open_Drain : Boolean) is
   begin
      case Open_Drain is
         when False =>
            Self.Peripheral.MDDR.Val := Mask;

         when True =>
            Self.Peripheral.MDER.Val := Mask;
      end case;
   end Configure_Open_Drain;

   ----------------------
   -- Configure_Output --
   ----------------------

   procedure Configure_Output
     (Self       : in out ATSAM3X8E_Pin'Class;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Peripheral.PER.Val := Mask;
      --  Enables the PIO to control the corresponding pin (disables
      --  peripheral control of the pin)

      Self.Controller.Peripheral.OER.Val := Mask;
      --  Enables the output on the I/O line.

      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_Output;

   ----------------------
   -- Configure_Pullup --
   ----------------------

   procedure Configure_Pullup
     (Self   : in out ATSAM3X8E_PIO_Controller'Class;
      Mask   : A0B.Types.Unsigned_32;
      Pullup : Boolean) is
   begin
      if Pullup then
         Self.Peripheral.PUER.Val := Mask;
         --  pull-up enable

      else
         Self.Peripheral.PUDR.Val := Mask;
         --  pull-up disable
      end if;
   end Configure_Pullup;

   --------------------
   -- Configure_RTS0 --
   --------------------

   overriding procedure Configure_RTS0
     (Self       : in out PB25_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_RTS0;

   --------------------
   -- Configure_RTS1 --
   --------------------

   overriding procedure Configure_RTS1
     (Self       : in out PA14_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_RTS1;

   --------------------
   -- Configure_RTS2 --
   --------------------

   overriding procedure Configure_RTS2
     (Self       : in out PB22_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_RTS2;

   --------------------
   -- Configure_RXD0 --
   --------------------

   overriding procedure Configure_RXD0
     (Self   : in out PA10_Line;
      Pullup : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_RXD0;

   --------------------
   -- Configure_RXD1 --
   --------------------

   overriding procedure Configure_RXD1
     (Self   : in out PA12_Line;
      Pullup : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_RXD1;

   --------------------
   -- Configure_RXD2 --
   --------------------

   overriding procedure Configure_RXD2
     (Self   : in out PB21_Line;
      Pullup : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_RXD2;

   --------------------
   -- Configure_RXD3 --
   --------------------

   overriding procedure Configure_RXD3
     (Self   : in out PD5_Line;
      Pullup : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_B (Mask);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_RXD3;

   --------------------
   -- Configure_SCK0 --
   --------------------

   overriding procedure Configure_SCK0
     (Self       : in out PA17_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_B (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_SCK0;

   --------------------
   -- Configure_SCK1 --
   --------------------

   overriding procedure Configure_SCK1
     (Self       : in out PA16_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      --  Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_SCK1;

   --------------------
   -- Configure_SCK2 --
   --------------------

   overriding procedure Configure_SCK2
     (Self       : in out PB24_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_SCK2;

   ------------------------
   -- Configure_SPI_MISO --
   ------------------------

   overriding procedure Configure_SPI_MISO
     (Self   : in out PA25_Pin;
      Pullup : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_SPI_MISO;

   ------------------------
   -- Configure_SPI_MOSI --
   ------------------------

   overriding procedure Configure_SPI_MOSI
     (Self       : in out PA26_Pin;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_SPI_MOSI;

   ------------------------
   -- Configure_SPI_SPCK --
   ------------------------

   overriding procedure Configure_SPI_SPCK
     (Self       : in out PA27_Pin;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_SPI_SPCK;

   --------------------
   -- Configure_TXD0 --
   --------------------

   overriding procedure Configure_TXD0
     (Self       : in out PA11_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_TXD0;

   --------------------
   -- Configure_TXD1 --
   --------------------

   overriding procedure Configure_TXD1
     (Self       : in out PA13_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      --  Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_TXD1;

   --------------------
   -- Configure_TXD2 --
   --------------------

   overriding procedure Configure_TXD2
     (Self       : in out PB20_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_A (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_TXD2;

   --------------------
   -- Configure_TXD3 --
   --------------------

   overriding procedure Configure_TXD3
     (Self       : in out PD4_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False)
   is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Configure_Alternative_Function_B (Mask);
      Self.Controller.Configure_Open_Drain (Mask, Open_Drain);
      Self.Controller.Configure_Pullup (Mask, Pullup);
   end Configure_TXD3;

   ------------------
   -- Disable_EXTI --
   ------------------

   procedure Disable_EXTI (Self : in out ATSAM3X8E_PIO_Controller) is
      use type A0B.Types.Unsigned_32;

      Interrupt : constant A0B.ARMv7M.External_Interrupt_Number
        := A0B.ARMv7M.External_Interrupt_Number (Self.Identifier);

   begin
      if Self.Peripheral.IMR.Val = 0 then
         Disable_Interrupt (Interrupt);
      end if;
   end Disable_EXTI;

   -----------------------
   -- Disable_Interrupt --
   -----------------------

   overriding procedure Disable_Interrupt (Self : in out ATSAM3X8E_Pin) is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Self.Controller.Peripheral.IDR.Val := Mask;

      Disable_EXTI (Self.Controller.all);
   end Disable_Interrupt;

   ------------------
   -- Enable_Clock --
   ------------------

   procedure Enable_Clock (Self : in out ATSAM3X8E_PIO_Controller) is
      Value : PMC_PCER0_PID_Field_Array := [others => False];

   begin
      Value (Integer (Self.Identifier)) := True;

      PMC_Periph.PMC_PCER0 :=
        (PID    => (As_Array => True, Arr => Value),
         others => <>);
   end Enable_Clock;

   -----------------
   -- Enable_EXTI --
   -----------------

   procedure Enable_EXTI
     (Self : in out ATSAM3X8E_PIO_Controller;
      Mask : A0B.Types.Unsigned_32)
   is
      use type A0B.Types.Unsigned_32;

      Interrupt : constant A0B.ARMv7M.External_Interrupt_Number
        := A0B.ARMv7M.External_Interrupt_Number (Self.Identifier);

   begin
      if Self.Peripheral.IMR.Val = 0 then
         --  When enabling interrupts for the first line, read PIO_ISR
         --  register to clean it. Otherwise PIO generates interrupt for
         --  all lines once after reset.

         declare
            Aux : PIOA_ISR_Register := Self.Peripheral.ISR;
            pragma Unreferenced (Aux);

         begin
            null;
         end;

         Self.Peripheral.IER.Val := Mask;

         Clear_Pending (Interrupt);
         Enable_Interrupt (Interrupt);
         --  NVIC.IPR (Interrupt) := bla...;
         --  XXX How to get priority without dependency from A0B_Tasking crate?

      else
         Self.Peripheral.IER.Val := Mask;
      end if;
   end Enable_EXTI;

   ----------------------
   -- Enable_Interrupt --
   ----------------------

   overriding procedure Enable_Interrupt (Self : in out ATSAM3X8E_Pin) is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      Enable_EXTI (Self.Controller.all, Mask);
   end Enable_Interrupt;

   ---------
   -- Get --
   ---------

   overriding function Get (Self : ATSAM3X8E_Pin) return Boolean is
   begin
      return Self.Controller.Peripheral.PDSR.Arr (Integer (Self.Line));
   end Get;

   -----------------
   -- PIO_Handler --
   -----------------

   procedure PIO_Handler (Self : in out ATSAM3X8E_PIO_Controller'Class) is

      use type A0B.Types.Unsigned_32;

      Status : A0B.Types.Unsigned_32 :=
        Self.Peripheral.ISR.Val and Self.Peripheral.IMR.Val;
      --  Read operation on the register resets status of the controller.
      --  Hide status of the disabled interrupts by applying IMR value.
      Line   : Integer;
      Mask   : A0B.Types.Unsigned_32;

   begin
      while Status /= 0 loop
         Line   := Integer (ctz (Status));
         Mask   := A0B.Types.Shift_Left (1, Line);
         Status := @ and (not Mask);

         Ada.Synchronous_Task_Control.Set_True
           (Self.Line (ATSAM3X8E_PIO_Line (Line)).SO);
         A0B.Callbacks.Emit (Self.Line (ATSAM3X8E_PIO_Line (Line)).CB);
      end loop;
   end PIO_Handler;

   ---------
   -- Set --
   ---------

   overriding procedure Set (Self : ATSAM3X8E_Pin; To : Boolean) is
      Mask : constant A0B.Types.Unsigned_32 :=
        A0B.Types.Shift_Left (1, Integer (Self.Line));

   begin
      case To is
         when False =>
            Self.Controller.Peripheral.CODR.Val := Mask;

         when True =>
            Self.Controller.Peripheral.SODR.Val := Mask;
      end case;
   end Set;

   ------------------
   -- Set_Callback --
   ------------------

   overriding procedure Set_Callback
     (Self : in out ATSAM3X8E_Pin; Callback : A0B.Callbacks.Callback) is
   begin
      Self.CB := Callback;
   end Set_Callback;

   -----------------------
   -- Suspension_Object --
   -----------------------

   overriding function Suspension_Object
     (Self : aliased in out ATSAM3X8E_Pin)
      return not null access Ada.Synchronous_Task_Control.Suspension_Object is
   begin
      return Self.SO'Access;
   end Suspension_Object;

end A0B.ATSAM3X8E.PIO;
