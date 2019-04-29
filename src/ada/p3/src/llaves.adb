with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body Llaves is

   llave : Integer;
   V : Conjunto;
   
   procedure Coger_Llave is
   begin
      Put("Que llave desea coger ");
      Get(llave);
      New_Line;
      if V(llave) then
         V(llave):=False;
         Put("La llave esta disponible.");
      else
         Put("La llave no esta disponible");
      end if;
      Skip_Line;
   end Coger_Llave;
   
   procedure Dejar_Llave is
   begin
      Put("Que llave desea dejar ");
      Get(llave);
      if V(llave) then
         Put("La llave no se puede dejar.");
      else
         V(llave):=True;
         Put("La llave se ha dejado.");
      end if;
   end Dejar_Llave;
   
   procedure Consultar_Llaves is
   begin
      Put("CONSULTA LLAVES: ");
      for i in V'Range loop
         New_Line;
         Put("La llave");
         Put(i);
         if V(i) then
            Put(" esta en la estanteria.");
         else
            Put(" no esta en la estanteria.");
         end if;
      end loop;
   end Consultar_Llaves;
   
begin
   V:=Conjunto'(Conjunto'Range=>True);
end Llaves;
