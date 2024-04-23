--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with A0B.ATSAM3X8E.PIO.Controllers;

package A0B.ATSAM3X8E.PA27_Line
  with Preelaborate
is

   PA27 : aliased A0B.ATSAM3X8E.PIO.PA27_Pin
     (Controller => A0B.ATSAM3X8E.PIO.Controllers.PIOA'Access, Line => 27);

end A0B.ATSAM3X8E.PA27_Line;
