
--  pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

with A0B.ATSAM3X8E_PIO.Controllers;

package A0B.ATSAM3X8E_PIO.Lines
  with Preelaborate
is

   PA00 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 0);
   PA01 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 1);
   PA02 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 2);
   PA03 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 3);
   PA04 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 4);
   PA05 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 5);
   PA06 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 6);
   PA07 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 7);
   PA08 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 8);
   PA09 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 9);
   PA10 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 10);
   PA11 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 11);
   PA12 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 12);
   PA13 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 13);
   PA14 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 14);
   PA15 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 15);
   PA16 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 16);
   PA17 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 17);
   PA18 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 18);
   PA19 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 19);
   PA20 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 20);
   PA21 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 21);
   PA22 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 22);
   PA23 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 23);
   PA24 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 24);
   PA25 : aliased PA25_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 25);
   PA26 : aliased PA26_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 26);
   PA27 : aliased PA27_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 27);
   PA28 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 28);
   PA29 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOA'Access, Line => 29);

   PB00 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 0);
   PB01 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 1);
   PB02 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 2);
   PB03 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 3);
   PB04 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 4);
   PB05 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 5);
   PB06 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 6);
   PB07 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 7);
   PB08 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 8);
   PB09 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 9);
   PB10 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 10);
   PB11 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 11);
   PB12 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 12);
   PB13 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 13);
   PB14 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 14);
   PB15 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 15);
   PB16 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 16);
   PB17 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 17);
   PB18 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 18);
   PB19 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 19);
   PB20 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 20);
   PB21 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 21);
   PB22 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 22);
   PB23 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 23);
   PB24 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 24);
   PB25 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 25);
   PB26 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 26);
   PB27 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 27);
   PB28 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 28);
   PB29 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 29);
   PB30 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 30);
   PB31 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOB'Access, Line => 31);

   PC00 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 0);
   PC01 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 1);
   PC02 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 2);
   PC03 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 3);
   PC04 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 4);
   PC05 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 5);
   PC06 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 6);
   PC07 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 7);
   PC08 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 8);
   PC09 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 9);
   PC10 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 10);
   PC11 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 11);
   PC12 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 12);
   PC13 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 13);
   PC14 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 14);
   PC15 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 15);
   PC16 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 16);
   PC17 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 17);
   PC18 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 18);
   PC19 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 19);
   PC20 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 20);
   PC21 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 21);
   PC22 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 22);
   PC23 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 23);
   PC24 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 24);
   PC25 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 25);
   PC26 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 26);
   PC27 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 27);
   PC28 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 28);
   PC29 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 29);
   PC30 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOC'Access, Line => 30);

   PD00 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 0);
   PD01 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 1);
   PD02 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 2);
   PD03 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 3);
   PD04 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 4);
   PD05 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 5);
   PD06 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 6);
   PD07 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 7);
   PD08 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 8);
   PD09 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 9);
   PD10 : aliased ATSAM3X8E_Pin
     (Controller => A0B.ATSAM3X8E_PIO.Controllers.PIOD'Access, Line => 10);

  --   PA00 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 0);
  --   PA01 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 1);
  --   PA02 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 2);
  --   PA03 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 3);
  --   PA04 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 4);
  --   PA05 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 5);
  --   PA06 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 6);
  --   PA07 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 7);
  --   PA08 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 8);
  --   PA09 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 9);
  --   PA10 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 10);
  --   PA11 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 11);
  --   PA12 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 12);
  --   PA13 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 13);
  --   PA14 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 14);
  --   PA15 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 15);
  --   PA16 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 16);
  --   PA17 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 17);
  --   PA18 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 18);
  --   PA19 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 19);
  --   PA20 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 20);
  --   PA21 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 21);
  --   PA22 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 22);
  --   PA23 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 23);
  --   PA24 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 24);
  --   PA25 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 25);
  --   PA26 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 26);
  --   PA27 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 27);
  --   PA28 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 28);
  --   PA29 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Line => 29);

  --   PB00 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 0);
  --   PB01 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 1);
  --   PB02 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 2);
  --   PB03 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 3);
  --   PB04 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 4);
  --   PB05 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 5);
  --   PB06 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 6);
  --   PB07 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 7);
  --   PB08 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 8);
  --   PB09 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 9);
  --   PB10 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 10);
  --   PB11 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 11);
  --   PB12 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 12);
  --   PB13 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 13);
  --   PB14 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 14);
  --   PB15 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 15);
  --   PB16 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 16);
  --   PB17 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 17);
  --   PB18 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 18);
  --   PB19 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 19);
  --   PB20 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 20);
  --   PB21 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 21);
  --   PB22 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 22);
  --   PB23 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 23);
  --   PB24 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 24);
  --   PB25 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 25);
  --   PB26 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 26);
  --   PB27 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 27);
  --   PB28 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 28);
  --   PB29 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 29);
  --   PB30 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 30);
  --   PB31 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Line => 31);

  --   PC00 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 0);
  --   PC01 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 1);
  --   PC02 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 2);
  --   PC03 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 3);
  --   PC04 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 4);
  --   PC05 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 5);
  --   PC06 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 6);
  --   PC07 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 7);
  --   PC08 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 8);
  --   PC09 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 9);
  --   PC10 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 10);
  --   PC11 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 11);
  --   PC12 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 12);
  --   PC13 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 13);
  --   PC14 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 14);
  --   PC15 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 15);
  --   PC16 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 16);
  --   PC17 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 17);
  --   PC18 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 18);
  --   PC19 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 19);
  --   PC20 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 20);
  --   PC21 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 21);
  --   PC22 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 22);
  --   PC23 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 23);
  --   PC24 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 24);
  --   PC25 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 25);
  --   PC26 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 26);
  --   PC27 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 27);
  --   PC28 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 28);
  --   PC29 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 29);
  --   PC30 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Line => 30);

  --   PD00 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 0);
  --   PD01 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 1);
  --   PD02 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 2);
  --   PD03 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 3);
  --   PD04 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 4);
  --   PD05 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 5);
  --   PD06 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 6);
  --   PD07 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 7);
  --   PD08 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 8);
  --   PD09 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 9);
  --   PD10 : aliased ATSAM3X8E_Pin
  --     (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Line => 10);

  --   PIOA : aliased PIO_Controller :=
  --    (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access,
  --     Pin        =>
  --       [PA00'Access, PA01'Access, PA02'Access, PA03'Access,
  --        PA04'Access, PA05'Access, PA06'Access, PA07'Access,
  --        PA08'Access, PA09'Access, PA10'Access, PA11'Access,
  --        PA12'Access, PA13'Access, PA14'Access, PA15'Access,
  --        PA16'Access, PA17'Access, PA18'Access, PA19'Access,
  --        PA20'Access, PA21'Access, PA22'Access, PA23'Access,
  --        PA24'Access, PA25'Access, PA26'Access, PA27'Access,
  --        PA28'Access, PA29'Access, null,        null]);

  --   PIOB : aliased PIO_Controller :=
  --    (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access,
  --     Pin        =>
  --       [PB00'Access, PB01'Access, PB02'Access, PB03'Access,
  --        PB04'Access, PB05'Access, PB06'Access, PB07'Access,
  --        PB08'Access, PB09'Access, PB10'Access, PB11'Access,
  --        PB12'Access, PB13'Access, PB14'Access, PB15'Access,
  --        PB16'Access, PB17'Access, PB18'Access, PB19'Access,
  --        PB20'Access, PB21'Access, PB22'Access, PB23'Access,
  --        PB24'Access, PB25'Access, PB26'Access, PB27'Access,
  --        PB28'Access, PB29'Access, PB30'Access, PB31'Access]);

  --   PIOC : aliased PIO_Controller :=
  --    (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access,
  --     Pin        =>
  --       [PC00'Access, PC01'Access, PC02'Access, PC03'Access,
  --        PC04'Access, PC05'Access, PC06'Access, PC07'Access,
  --        PC08'Access, PC09'Access, PC10'Access, PC11'Access,
  --        PC12'Access, PC13'Access, PC14'Access, PC15'Access,
  --        PC16'Access, PC17'Access, PC18'Access, PC19'Access,
  --        PC20'Access, PC21'Access, PC22'Access, PC23'Access,
  --        PC24'Access, PC25'Access, PC26'Access, PC27'Access,
  --        PC28'Access, PC29'Access, PC30'Access, null]);

  --   PIOD : aliased PIO_Controller :=
  --    (Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access,
  --     Pin        =>
  --       [PD00'Access, PD01'Access, PD02'Access, PD03'Access,
  --        PD04'Access, PD05'Access, PD06'Access, PD07'Access,
  --        PD08'Access, PD09'Access, PD10'Access, null,
  --        null,        null,        null,        null,
  --        null,        null,        null,        null,
  --        null,        null,        null,        null,
  --        null,        null,        null,        null,
  --        null,        null,        null,        null]);

end A0B.ATSAM3X8E_PIO.Lines;