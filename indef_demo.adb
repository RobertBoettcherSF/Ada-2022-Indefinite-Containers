pragma Ada_2022;

with Ada.Strings.Unbounded;

package body Indef_Demo is

   procedure Append_Word
     (V : in out String_Vectors.Vector; Word : String)
   is
   begin
      V.Append (Word);
   end Append_Word;

   function Join_Spaces (V : String_Vectors.Vector) return String is
      use Ada.Strings.Unbounded;
      Acc : Unbounded_String;
      First : Boolean := True;
   begin
      for S of V loop
         if not First then
            Append (Acc, " ");
         end if;
         Append (Acc, S);
         First := False;
      end loop;
      return To_String (Acc);
   end Join_Spaces;

   function Length (V : String_Vectors.Vector) return Natural is
   begin
      return Natural (V.Length);
   end Length;

   function Element_At
     (V : String_Vectors.Vector; Index : Positive) return String
   is
   begin
      return V.Element (Index);
   end Element_At;

end Indef_Demo;
