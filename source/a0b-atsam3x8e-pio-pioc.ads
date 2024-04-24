--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

package A0B.ATSAM3X8E.PIO.PIOC
  with Preelaborate, Elaborate_Body
is

   PIOC : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_PIO_Controller
     (A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Parallel_IO_Controller_C);

   PC0  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 0);
   PC1  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 1);
   PC2  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 2);
   PC3  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 3);
   PC4  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 4);
   PC5  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 5);
   PC6  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 6);
   PC7  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 7);
   PC8  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 8);
   PC9  : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 9);
   PC10 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 10);
   PC11 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 11);
   PC12 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 12);
   PC13 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 13);
   PC14 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 14);
   PC15 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 15);
   PC16 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 16);
   PC17 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 17);
   PC18 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 18);
   PC19 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 19);
   PC20 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 20);
   PC21 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 21);
   PC22 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 22);
   PC23 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 23);
   PC24 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 24);
   PC25 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 25);
   PC26 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 26);
   PC27 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 27);
   PC28 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 28);
   PC29 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 29);
   PC30 : aliased A0B.ATSAM3X8E.PIO.ATSAM3X8E_Pin
     (Controller => PIOC'Access, Line => 30);

end A0B.ATSAM3X8E.PIO.PIOC;
