--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

package A0B.ATSAM3X8E.PIO.PIOD
  with Preelaborate, Elaborate_Body
is

   PIOD : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_PIO_Controller
     (Controller => D,
      Peripheral => A0B.ATSAM3X8E.SVD.PIO.PIOD_Periph'Access,
      Identifier => Parallel_IO_Controller_D);

   PD0  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 0);
   PD1  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 1);
   PD2  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 2);
   PD3  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 3);
   PD4  : aliased A0B.ATSAM3X8E.PIO.PD4_Line
     (Controller => PIOD'Access, Line => 4);
   PD5  : aliased A0B.ATSAM3X8E.PIO.PD5_Line
     (Controller => PIOD'Access, Line => 5);
   PD6  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 6);
   PD7  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 7);
   PD8  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 8);
   PD9  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 9);
   PD10 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOD'Access, Line => 10);

end A0B.ATSAM3X8E.PIO.PIOD;
