with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

procedure Ejercicio5 is
   type Frame is mod 2;
   Index : Frame := 0;
   
   Comienzo : Time := Clock;
   
   procedure Procedimiento_Generico(Id: in Integer; Tiempo: in Integer) is
   begin
      Put_Line("+++Tarea " & Integer'Image(Id) & " - Inicio " & Duration'Image(Clock-Comienzo));
      delay Duration(Tiempo);
      Put_Line("---Tarea " & Integer'Image(Id) & " - Fin    " & Duration'Image(Clock-Comienzo));
   end Procedimiento_Generico;
   
   Periodo : constant Duration := Duration(10);
   Proximo_Periodo : Time := Clock;
begin
   Put_Line("Inicio de la programacion ciclica");
   loop
      Put_Line("Tiempo: " & Duration'Image(Clock-Comienzo));
      case Index is
         when 0 => Procedimiento_Generico(1, 3);
                   Procedimiento_Generico(2, 3);
                   Procedimiento_Generico(3, 2);
                   Procedimiento_Generico(4, 2);
                   Procedimiento_Generico(5, 2);
         when 1 => Procedimiento_Generico(1, 3);
                   Procedimiento_Generico(2, 3);
      end case;
      Index := Index + 1;
      Proximo_Periodo := Proximo_Periodo + Periodo;
      delay until Proximo_Periodo;
   end loop;
end Ejercicio5;
