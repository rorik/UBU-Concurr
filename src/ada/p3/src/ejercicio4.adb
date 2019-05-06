with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Ejercicio4 is
   
   task Tarea_Periodica_1seg;
   task Tarea_Periodica_2seg;
   
   task body Tarea_Periodica_1seg is
      Periodo : constant Time_Span := Milliseconds(1000);
      Proximo_Periodo : Time := Clock;
   begin
      loop
         delay until Proximo_Periodo;
         Put_Line("Soy la tarea que se ejecuta cada segundo");
         Proximo_Periodo := Proximo_Periodo + Periodo;
      end loop;
   end Tarea_Periodica_1seg;
   
   task body Tarea_Periodica_2seg is
      Periodo : constant Time_Span := Milliseconds(2000);
      Proximo_Periodo : Time := Clock;
   begin
      loop
         delay until Proximo_Periodo;
         Put_Line("Soy la tarea que se ejecuta cada dos segundos");
         Proximo_Periodo := Proximo_Periodo + Periodo;
      end loop;
   end Tarea_Periodica_2seg;
begin
   null;
end Ejercicio4;
