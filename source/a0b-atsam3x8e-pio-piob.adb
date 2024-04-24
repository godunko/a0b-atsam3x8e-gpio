--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

package body A0B.ATSAM3X8E.PIO.PIOB is

   procedure PIOB_Handler
     with Export, Convention => C, External_Name => "PIOB_Handler";

   ------------------
   -- PIOB_Handler --
   ------------------

   procedure PIOB_Handler is
   begin
      PIO_Handler (PIOB);
   end PIOB_Handler;

end A0B.ATSAM3X8E.PIO.PIOB;