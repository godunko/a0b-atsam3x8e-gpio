--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with A0B.Callbacks;
with A0B.EXTI;
with A0B.GPIO;
with A0B.Types;

with A0B.ATSAM3X8E.SVD.PIO;

package A0B.ATSAM3X8E.PIO
  with Preelaborate
is

   type Controller is (A, B, C, D);

   type SPI0_MISO_Line is limited interface;

   not overriding procedure Configure_SPI_MISO
     (Self   : in out SPI0_MISO_Line;
      Pullup : Boolean := False) is abstract;

   type SPI0_MOSI_Line is limited interface;

   not overriding procedure Configure_SPI_MOSI
     (Self       : in out SPI0_MOSI_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type SPI0_SPCK_Line is limited interface;

   not overriding procedure Configure_SPI_SPCK
     (Self       : in out SPI0_SPCK_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type ATSAM3X8E_PIO_Controller is tagged;

   type Input_Filter is (None, Glitch, Debouncing);

   type ATSAM3X8E_PIO_Line_Base is range 0 .. 32;
   subtype ATSAM3X8E_PIO_Line is ATSAM3X8E_PIO_Line_Base range 0 .. 31;

   type ATSAM3X8E_Pin_Base
     (Controller : not null access ATSAM3X8E_PIO_Controller;
      Line       : ATSAM3X8E_PIO_Line) is abstract tagged limited null record;

   type ATSAM3X8E_EXTI_Pin is limited interface
     and A0B.EXTI.External_Interrupt_Line;

   type EXTI_Mode is
     (Both_Edge, Rising_Edge, Falling_Edge, Low_Level, High_Level);

   not overriding procedure Configure_EXTI
     (Self   : aliased in out ATSAM3X8E_EXTI_Pin;
      Mode   : EXTI_Mode;
      Filter : Input_Filter := None;
      Pullup : Boolean      := False) is abstract;

   type ATSAM3X8E_Pin is
     limited new ATSAM3X8E_Pin_Base
       and A0B.GPIO.Input_Line
       and A0B.GPIO.Output_Line
       and ATSAM3X8E_EXTI_Pin with
   record
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

   procedure Configure_Alternative_Function
     (Self   : in out ATSAM3X8E_Pin'Class;
      Line   : Line_Function;
      Pullup : Boolean := False);
   --  with Supports (Self.Controller.Controller, Line); ???

   overriding procedure Configure_EXTI
     (Self   : aliased in out ATSAM3X8E_Pin;
      Mode   : EXTI_Mode;
      Filter : Input_Filter := None;
      Pullup : Boolean      := False);

   overriding procedure Enable_Interrupt (Self : in out ATSAM3X8E_Pin);

   overriding procedure Disable_Interrupt (Self : in out ATSAM3X8E_Pin);

   overriding function Get (Self : ATSAM3X8E_Pin) return Boolean;

   overriding procedure Set (Self : ATSAM3X8E_Pin; To : Boolean);

   overriding procedure Set_Callback
     (Self : in out ATSAM3X8E_Pin; Callback : A0B.Callbacks.Callback);

   type PA25_Pin is new ATSAM3X8E_Pin and SPI0_MISO_Line with null record;

   overriding procedure Configure_SPI_MISO
     (Self   : in out PA25_Pin;
      Pullup : Boolean := False);

   type PA26_Pin is new ATSAM3X8E_Pin and SPI0_MOSI_Line with null record;

   overriding procedure Configure_SPI_MOSI
     (Self       : in out PA26_Pin;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PA27_Pin is new ATSAM3X8E_Pin and SPI0_SPCK_Line with null record;

   overriding procedure Configure_SPI_SPCK
     (Self       : in out PA27_Pin;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PIO_Pin_Array is array (ATSAM3X8E_PIO_Line) of access ATSAM3X8E_Pin;

   type ATSAM3X8E_PIO_Controller
     (Controller : PIO.Controller;
      Peripheral : not null access A0B.ATSAM3X8E.SVD.PIO.PIO_Peripheral;
      Identifier : Peripheral_Identifier) is
   tagged limited record
      Line : PIO_Pin_Array;
   end record;

   procedure Configure_Debouncing_Divider
     (Self : in out ATSAM3X8E_PIO_Controller'Class;
      Div  : A0B.Types.Unsigned_14);
   --  Configure Slow Clock Divider for Debouncing.

private

   procedure PIO_Handler (Self : in out ATSAM3X8E_PIO_Controller'Class);
   --  PIO controller's interrupt handler.

end A0B.ATSAM3X8E.PIO;
