--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with A0B.ATSAM3X8E_PIO.Controllers;

package A0B.ATSAM3X8E.PA25_Line
  with Preelaborate
is

   PA25 : aliased A0B.ATSAM3X8E_PIO.PA25_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 25);

end A0B.ATSAM3X8E.PA25_Line;
