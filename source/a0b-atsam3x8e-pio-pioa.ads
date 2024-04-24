--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

package A0B.ATSAM3X8E.PIO.PIOA
  with Preelaborate, Elaborate_Body
is

   PIOA : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_PIO_Controller
     (A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Parallel_IO_Controller_A);

   PA0  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 0);
   PA1  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 1);
   PA2  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 2);
   PA3  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 3);
   PA4  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 4);
   PA5  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 5);
   PA6  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 6);
   PA7  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 7);
   PA8  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 8);
   PA9  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 9);
   PA10 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 10);
   PA11 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 11);
   PA12 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 12);
   PA13 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 13);
   PA14 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 14);
   PA15 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 15);
   PA16 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 16);
   PA17 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 17);
   PA18 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 18);
   PA19 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 19);
   PA20 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 20);
   PA21 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 21);
   PA22 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 22);
   PA23 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 23);
   PA24 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 24);
   PA25 : aliased A0B.ATSAM3X8E.PIO.PA25_Pin
     (Controller => PIOA'Access, Line => 25);
   PA26 : aliased A0B.ATSAM3X8E.PIO.PA26_Pin
     (Controller => PIOA'Access, Line => 26);
   PA27 : aliased A0B.ATSAM3X8E.PIO.PA27_Pin
     (Controller => PIOA'Access, Line => 27);
   PA28 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 28);
   PA29 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOA'Access, Line => 29);

end A0B.ATSAM3X8E.PIO.PIOA;
