--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

package body A0B.ATSAM3X8E.PIO.PIOD is

   procedure PIOD_Handler
     with Export, Convention => C, External_Name => "PIOD_Handler";

   ------------------
   -- PIOD_Handler --
   ------------------

   procedure PIOD_Handler is
   begin
      PIO_Handler (PIOD);
   end PIOD_Handler;

end A0B.ATSAM3X8E.PIO.PIOD;