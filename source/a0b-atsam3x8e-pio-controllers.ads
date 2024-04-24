--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

pragma Ada_2022;

package A0B.ATSAM3X8E.PIO.Controllers
  with Preelaborate
is

   PIOC : aliased ATSAM3X8E_PIO_Controller
     (A0B.SVD.ATSAM3X8E.PIO.PIOC_Periph'Access, Parallel_IO_Controller_C);
   PIOD : aliased ATSAM3X8E_PIO_Controller
     (A0B.SVD.ATSAM3X8E.PIO.PIOD_Periph'Access, Parallel_IO_Controller_D);

end A0B.ATSAM3X8E.PIO.Controllers;