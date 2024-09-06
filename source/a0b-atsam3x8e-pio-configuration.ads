--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

private package A0B.ATSAM3X8E.PIO.Configuration
  with Preelaborate
is

   type Alternative_Function is (A, B);

   type Line_Descriptor is record
      Supported            : Boolean;
      PIO_Line             : ATSAM3X8E_PIO_Line;
      Alternative_Function : Configuration.Alternative_Function;
   end record with Pack, Size => 8;

   AF_Map : constant array (Line_Function, Controller) of Line_Descriptor
     := (URXD  =>
           (A => (True, 8, A),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         UTXD  =>
           ((True, 9, A), (False, others => <>), (False, others => <>), (False, others => <>)),

         CTS0  =>
           (A => (False, others => <>),
            B => (True, 26, A),
            C => (False, others => <>),
            D => (False, others => <>)),
         RTS0  =>
           (A => (False, others => <>),
            B => (True, 25, A),
            C => (False, others => <>),
            D => (False, others => <>)),
         RXD0  =>
           (A => (True, 10, A),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         SCK0  =>
           (A => (True, 17, B),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         TXD0  =>
           (A => (True, 11, A),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         CTS1  =>
           (A => (True, 15, A),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         RTS1  =>
           (A => (True, 14, A),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         RXD1  =>
           (A => (True, 12, A),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         SCK1  =>
           (A => (True, 16, A),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         TXD1  =>
           (A => (True, 13, A),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         CTS2  =>
           (A => (False, others => <>),
            B => (True, 23, A),
            C => (False, others => <>),
            D => (False, others => <>)),
         RTS2  =>
           (A => (False, others => <>),
            B => (True, 22, A),
            C => (False, others => <>),
            D => (False, others => <>)),
         RXD2  =>
           (A => (False, others => <>),
            B => (True, 21, A),
            C => (False, others => <>),
            D => (False, others => <>)),
         SCK2  =>
           (A => (False, others => <>),
            B => (True, 24, A),
            C => (False, others => <>),
            D => (False, others => <>)),
         TXD2  =>
           (A => (False, others => <>),
            B => (True, 20, A),
            C => (False, others => <>),
            D => (False, others => <>)),
         CTS3  =>  --  PF4, unavailable
           (A => (False, others => <>),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         RTS3  =>  --  PF5, unavailable
           (A => (False, others => <>),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         RXD3  =>
           (A => (False, others => <>),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (True, 5, B)),
         SCK3  =>  --  PE16, unavailable
           (A => (False, others => <>),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (False, others => <>)),
         TXD3  =>
           (A => (False, others => <>),
            B => (False, others => <>),
            C => (False, others => <>),
            D => (True, 4, B)),

         TWCK0 =>
           ((True, 18, A), (False, others => <>), (False, others => <>), (False, others => <>)),
         TWD0  =>
           ((True, 17, A), (False, others => <>), (False, others => <>), (False, others => <>)),
         TWCK1 =>
           ((False, others => <>), (True, 13, A), (False, others => <>), (False, others => <>)),
         TWD1  =>
           ((False, others => <>), (True, 12, A), (False, others => <>), (False, others => <>))
        );

end A0B.ATSAM3X8E.PIO.Configuration;
