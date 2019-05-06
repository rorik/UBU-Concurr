with Ada.Text_IO; use Ada.Text_IO;

procedure Ejercicio3 is
   type Identificador is new Integer;
   task type Tarea_Original(IdTarea: Identificador; Rep : Integer);
   
   T1 : Tarea_Original(1, 1);
   T2 : Tarea_Original(2, 2);
   T3 : Tarea_Original(3, 3);
   
   task body Tarea_Original is
   begin
      for i in 1..Rep loop
         if (IdTarea = 1) then
            Put_Line("Soy la Tarea 1");
         elsif (IdTarea = 2) then
            Put_Line("Soy la Tarea 2");
         elsif (IdTarea = 3) then
            Put_Line("Soy la Tarea 3");
         end if;
      end loop;
   end Tarea_Original;
begin
   null;
end Ejercicio3;
