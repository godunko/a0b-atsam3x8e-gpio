--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  pragma Restrictions (No_Elaboration_Code);

package body A0B.ATSAM3X8E.PIO.PIOC is

   procedure PIOC_Handler
     with Export, Convention => C, External_Name => "PIOC_Handler";

   ------------------
   -- PIOC_Handler --
   ------------------

   procedure PIOC_Handler is
   begin
      PIO_Handler (PIOC);
   end PIOC_Handler;

end A0B.ATSAM3X8E.PIO.PIOC;