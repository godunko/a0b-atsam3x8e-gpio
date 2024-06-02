--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

package A0B.ATSAM3X8E.PIO.PIOB
  with Preelaborate, Elaborate_Body
is

   PIOB : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_PIO_Controller
     (B, A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Parallel_IO_Controller_B);

   PB0  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 0);
   PB1  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 1);
   PB2  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 2);
   PB3  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 3);
   PB4  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 4);
   PB5  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 5);
   PB6  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 6);
   PB7  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 7);
   PB8  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 8);
   PB9  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 9);
   PB10 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 10);
   PB11 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 11);
   PB12 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 12);
   PB13 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 13);
   PB14 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 14);
   PB15 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 15);
   PB16 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 16);
   PB17 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 17);
   PB18 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 18);
   PB19 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 19);
   PB20 : aliased A0B.ATSAM3X8E.PIO.PB20_Line
     (Controller => PIOB'Access, Line => 20);
   PB21 : aliased A0B.ATSAM3X8E.PIO.PB21_Line
     (Controller => PIOB'Access, Line => 21);
   PB22 : aliased A0B.ATSAM3X8E.PIO.PB22_Line
     (Controller => PIOB'Access, Line => 22);
   PB23 : aliased A0B.ATSAM3X8E.PIO.PB23_Line
     (Controller => PIOB'Access, Line => 23);
   PB24 : aliased A0B.ATSAM3X8E.PIO.PB24_Line
     (Controller => PIOB'Access, Line => 24);
   PB25 : aliased A0B.ATSAM3X8E.PIO.PB25_Line
     (Controller => PIOB'Access, Line => 25);
   PB26 : aliased A0B.ATSAM3X8E.PIO.PB26_Line
     (Controller => PIOB'Access, Line => 26);
   PB27 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 27);
   PB28 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 28);
   PB29 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 29);
   PB30 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 30);
   PB31 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOB'Access, Line => 31);

end A0B.ATSAM3X8E.PIO.PIOB;
