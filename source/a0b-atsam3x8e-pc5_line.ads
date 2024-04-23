--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with A0B.ATSAM3X8E.PIO.Controllers;

package A0B.ATSAM3X8E.PC5_Line
  with Preelaborate
is

   PC5 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E.PIO.Controllers.PIOC'Access, Line => 5);

end A0B.ATSAM3X8E.PC5_Line;
