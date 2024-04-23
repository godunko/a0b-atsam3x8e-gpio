
pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with Ada.Synchronous_Task_Control;

with A0B.Callbacks;
with A0B.EXTI;
with A0B.GPIO;
with A0B.Types;

with A0B.SVD.ATSAM3X8E.PIO;

package A0B.ATSAM3X8E_PIO
  with Preelaborate
is

   type SPI0_MISO_Pin is limited interface;

   not overriding procedure Configure_SPI_MISO
     (Self   : in out SPI0_MISO_Pin;
      Pullup : Boolean := False) is abstract;

   type SPI0_MOSI_Pin is limited interface;

   not overriding procedure Configure_SPI_MOSI
     (Self       : in out SPI0_MOSI_Pin;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type SPI0_SPCK_Pin is limited interface;

   not overriding procedure Configure_SPI_SPCK
     (Self       : in out SPI0_SPCK_Pin;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type ATSAM3X8E_PIO_Controller is tagged;

   type ATSAM3X8E_Peripheral_Identifier is range 0 .. 44;
   --  Peripheral identifier, value is equal to NVIC interrupt number.

   Parallel_IO_Controller_A : constant ATSAM3X8E_Peripheral_Identifier := 11;
   Parallel_IO_Controller_B : constant ATSAM3X8E_Peripheral_Identifier := 12;
   Parallel_IO_Controller_C : constant ATSAM3X8E_Peripheral_Identifier := 13;
   Parallel_IO_Controller_D : constant ATSAM3X8E_Peripheral_Identifier := 14;

   type Input_Filter is (None, Glitch, Debouncing);

   type ATSAM3X8E_PIO_Line is range 0 .. 31;

   type ATSAM3X8E_Pin_Base
     (Controller : not null access ATSAM3X8E_PIO_Controller;
      Line       : ATSAM3X8E_PIO_Line) is abstract tagged limited null record;

   type ATSAM3X8E_EXTI_Pin is limited interface and A0B.EXTI.EXTI_Pin;

   type EXTI_Mode is
     (Both_Edge, Rising_Edge, Falling_Edge, Low_Level, High_Level);

   not overriding procedure Configure_EXTI
     (Self   : aliased in out ATSAM3X8E_EXTI_Pin;
      Mode   : EXTI_Mode;
      Filter : Input_Filter := None;
      Pullup : Boolean      := False) is abstract;

   type ATSAM3X8E_Pin is
     limited new ATSAM3X8E_Pin_Base
       and A0B.GPIO.Input_Pin
       and A0B.GPIO.Output_Pin
       and ATSAM3X8E_EXTI_Pin with
   record
      SO : aliased Ada.Synchronous_Task_Control.Suspension_Object;
      CB : A0B.Callbacks.Callback;
   end record
     with Preelaborable_Initialization;

   procedure Configure_Input
     (Self   : in out ATSAM3X8E_Pin'Class;
      Filter : Input_Filter := None;
      Pullup : Boolean      := False);

   procedure Configure_Output
     (Self       : in out ATSAM3X8E_Pin'Class;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   overriding procedure Configure_EXTI
     (Self   : aliased in out ATSAM3X8E_Pin;
      Mode   : EXTI_Mode;
      Filter : Input_Filter := None;
      Pullup : Boolean      := False);

   overriding procedure Enable_Interrupt (Self : in out ATSAM3X8E_Pin);

   overriding procedure Disable_Interrupt (Self : in out ATSAM3X8E_Pin);

   overriding function Suspension_Object
     (Self : aliased in out ATSAM3X8E_Pin)
      return not null access Ada.Synchronous_Task_Control.Suspension_Object;

   overriding function Get (Self : ATSAM3X8E_Pin) return Boolean;

   overriding procedure Set (Self : ATSAM3X8E_Pin; To : Boolean);

   overriding procedure Set_Callback
     (Self : in out ATSAM3X8E_Pin; Callback : A0B.Callbacks.Callback);

   type PA25_Pin is new ATSAM3X8E_Pin and SPI0_MISO_Pin with null record;

   overriding procedure Configure_SPI_MISO
     (Self   : in out PA25_Pin;
      Pullup : Boolean := False);

   type PA26_Pin is new ATSAM3X8E_Pin and SPI0_MOSI_Pin with null record;

   overriding procedure Configure_SPI_MOSI
     (Self       : in out PA26_Pin;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PA27_Pin is new ATSAM3X8E_Pin and SPI0_SPCK_Pin with null record;

   overriding procedure Configure_SPI_SPCK
     (Self       : in out PA27_Pin;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PIO_Pin_Array is array (ATSAM3X8E_PIO_Line) of access ATSAM3X8E_Pin;

   type ATSAM3X8E_PIO_Controller
    (Peripheral : not null access A0B.SVD.ATSAM3X8E.PIO.PIO_Peripheral;
     Identifier : ATSAM3X8E_Peripheral_Identifier) is
   tagged limited record
      Line : PIO_Pin_Array;
   end record;

   procedure Configure_Debouncing_Divider
     (Self : in out ATSAM3X8E_PIO_Controller'Class;
      Div  : A0B.Types.Unsigned_14);
   --  Configure Slow Clock Divider for Debouncing.

end A0B.ATSAM3X8E_PIO;
