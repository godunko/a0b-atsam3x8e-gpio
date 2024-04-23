
--  pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

--  with A0B.ATSAM3X8E_PIO.Lines; use A0B.ATSAM3X8E_PIO.Lines;

package A0B.ATSAM3X8E_PIO.Controllers
  with Preelaborate
is

  --   PIOA : aliased constant PIO_Controller :=
  --    (--  Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access,
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
  --    (--  Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access,
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
  --    (--  Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access,
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
  --    (--  Peripheral => A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access,
  --     Pin        =>
  --       [PD00'Access, PD01'Access, PD02'Access, PD03'Access,
  --        PD04'Access, PD05'Access, PD06'Access, PD07'Access,
  --        PD08'Access, PD09'Access, PD10'Access, null,
  --        null,        null,        null,        null,
  --        null,        null,        null,        null,
  --        null,        null,        null,        null,
  --        null,        null,        null,        null,
  --        null,        null,        null,        null]);

   PIOA : aliased ATSAM3X8E_PIO_Controller
     (A0B.SVD.ATSAM3X8E.PIO.PIOA_Periph'Access, Parallel_IO_Controller_A);
   PIOB : aliased ATSAM3X8E_PIO_Controller
     (A0B.SVD.ATSAM3X8E.PIO.PIOB_Periph'Access, Parallel_IO_Controller_B);
   PIOC : aliased ATSAM3X8E_PIO_Controller
     (A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Parallel_IO_Controller_C);
   PIOD : aliased ATSAM3X8E_PIO_Controller
     (A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Parallel_IO_Controller_D);

end A0B.ATSAM3X8E_PIO.Controllers;