--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with Ada.Synchronous_Task_Control;

with A0B.Callbacks;
with A0B.EXTI;
with A0B.GPIO;
with A0B.Types;

with A0B.SVD.ATSAM3X8E.PIO;

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

   type RXD0_Line is limited interface;

   not overriding procedure Configure_RXD0
     (Self   : in out RXD0_Line;
      Pullup : Boolean := False) is abstract;

   type RTS0_Line is limited interface;

   not overriding procedure Configure_RTS0
     (Self       : in out RTS0_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type TXD0_Line is limited interface;

   not overriding procedure Configure_TXD0
     (Self       : in out TXD0_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type CTS0_Line is limited interface;

   not overriding procedure Configure_CTS0
     (Self   : in out CTS0_Line;
      Pullup : Boolean := False) is abstract;

   type SCK0_Line is limited interface;

   not overriding procedure Configure_SCK0
     (Self       : in out SCK0_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type RXD1_Line is limited interface;

   not overriding procedure Configure_RXD1
     (Self   : in out RXD1_Line;
      Pullup : Boolean := False) is abstract;

   type RTS1_Line is limited interface;

   not overriding procedure Configure_RTS1
     (Self       : in out RTS1_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type TXD1_Line is limited interface;

   not overriding procedure Configure_TXD1
     (Self       : in out TXD1_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type CTS1_Line is limited interface;

   not overriding procedure Configure_CTS1
     (Self   : in out CTS1_Line;
      Pullup : Boolean := False) is abstract;

   type SCK1_Line is limited interface;

   not overriding procedure Configure_SCK1
     (Self       : in out SCK1_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type RXD2_Line is limited interface;

   not overriding procedure Configure_RXD2
     (Self   : in out RXD2_Line;
      Pullup : Boolean := False) is abstract;

   type RTS2_Line is limited interface;

   not overriding procedure Configure_RTS2
     (Self       : in out RTS2_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type TXD2_Line is limited interface;

   not overriding procedure Configure_TXD2
     (Self       : in out TXD2_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type CTS2_Line is limited interface;

   not overriding procedure Configure_CTS2
     (Self   : in out CTS2_Line;
      Pullup : Boolean := False) is abstract;

   type SCK2_Line is limited interface;

   not overriding procedure Configure_SCK2
     (Self       : in out SCK2_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type RXD3_Line is limited interface;

   not overriding procedure Configure_RXD3
     (Self   : in out RXD3_Line;
      Pullup : Boolean := False) is abstract;

   type RTS3_Line is limited interface;

   not overriding procedure Configure_RTS3
     (Self       : in out RTS3_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type TXD3_Line is limited interface;

   not overriding procedure Configure_TXD3
     (Self       : in out TXD3_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False) is abstract;

   type CTS3_Line is limited interface;

   not overriding procedure Configure_CTS3
     (Self   : in out CTS3_Line;
      Pullup : Boolean := False) is abstract;

   type SCK3_Line is limited interface;

   not overriding procedure Configure_SCK3
     (Self       : in out SCK3_Line;
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

   overriding function Suspension_Object
     (Self : aliased in out ATSAM3X8E_Pin)
      return not null access Ada.Synchronous_Task_Control.Suspension_Object;

   overriding function Get (Self : ATSAM3X8E_Pin) return Boolean;

   overriding procedure Set (Self : ATSAM3X8E_Pin; To : Boolean);

   overriding procedure Set_Callback
     (Self : in out ATSAM3X8E_Pin; Callback : A0B.Callbacks.Callback);

   type PA10_Line is new ATSAM3X8E_Pin and RXD0_Line with null record;

   overriding procedure Configure_RXD0
     (Self   : in out PA10_Line;
      Pullup : Boolean := False);

   type PA11_Line is new ATSAM3X8E_Pin and TXD0_Line with null record;

   overriding procedure Configure_TXD0
     (Self       : in out PA11_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PA12_Line is new ATSAM3X8E_Pin and RXD1_Line with null record;

   overriding procedure Configure_RXD1
     (Self   : in out PA12_Line;
      Pullup : Boolean := False);

   type PA13_Line is new ATSAM3X8E_Pin and TXD1_Line with null record;

   overriding procedure Configure_TXD1
     (Self       : in out PA13_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PA14_Line is new ATSAM3X8E_Pin and RTS1_Line with null record;

   overriding procedure Configure_RTS1
     (Self       : in out PA14_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PA15_Line is new ATSAM3X8E_Pin and CTS1_Line with null record;

   overriding procedure Configure_CTS1
     (Self   : in out PA15_Line;
      Pullup : Boolean := False);

   type PA16_Line is new ATSAM3X8E_Pin and SCK1_Line with null record;

   overriding procedure Configure_SCK1
     (Self       : in out PA16_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PA17_Line is new ATSAM3X8E_Pin and SCK0_Line with null record;

   overriding procedure Configure_SCK0
     (Self       : in out PA17_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

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

   type PB20_Line is new ATSAM3X8E_Pin and TXD2_Line with null record;

   overriding procedure Configure_TXD2
     (Self       : in out PB20_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PB21_Line is new ATSAM3X8E_Pin and RXD2_Line with null record;

   overriding procedure Configure_RXD2
     (Self   : in out PB21_Line;
      Pullup : Boolean := False);

   type PB22_Line is new ATSAM3X8E_Pin and RTS2_Line with null record;

   overriding procedure Configure_RTS2
     (Self       : in out PB22_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PB23_Line is new ATSAM3X8E_Pin and CTS2_Line with null record;

   overriding procedure Configure_CTS2
     (Self   : in out PB23_Line;
      Pullup : Boolean := False);

   type PB24_Line is new ATSAM3X8E_Pin and SCK2_Line with null record;

   overriding procedure Configure_SCK2
     (Self       : in out PB24_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PB25_Line is new ATSAM3X8E_Pin and RTS0_Line with null record;

   overriding procedure Configure_RTS0
     (Self       : in out PB25_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PB26_Line is new ATSAM3X8E_Pin and CTS0_Line with null record;

   overriding procedure Configure_CTS0
     (Self   : in out PB26_Line;
      Pullup : Boolean := False);

   type PD4_Line is new ATSAM3X8E_Pin and TXD3_Line with null record;

   overriding procedure Configure_TXD3
     (Self       : in out PD4_Line;
      Open_Drain : Boolean := False;
      Pullup     : Boolean := False);

   type PD5_Line is new ATSAM3X8E_Pin and RXD3_Line with null record;

   overriding procedure Configure_RXD3
     (Self   : in out PD5_Line;
      Pullup : Boolean := False);

   type PIO_Pin_Array is array (ATSAM3X8E_PIO_Line) of access ATSAM3X8E_Pin;

   type ATSAM3X8E_PIO_Controller
     (Controller : PIO.Controller;
      Peripheral : not null access A0B.SVD.ATSAM3X8E.PIO.PIO_Peripheral;
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
