--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

package body A0B.ATSAM3X8E.PIO.PIOA is

   procedure PIOA_Handler
     with Export, Convention => C, External_Name => "PIOA_Handler";

   ------------------
   -- PIOA_Handler --
   ------------------

   procedure PIOA_Handler is
   begin
      PIO_Handler (PIOA);
   end PIOA_Handler;

end A0B.ATSAM3X8E.PIO.PIOA;