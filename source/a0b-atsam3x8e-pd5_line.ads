--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with A0B.ATSAM3X8E_PIO.Controllers;

package A0B.ATSAM3X8E.PD5_Line
  with Preelaborate
is

   PD5 : aliased A0B.ATSAM3X8E_PIO.ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 5);

end A0B.ATSAM3X8E.PD5_Line;