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
