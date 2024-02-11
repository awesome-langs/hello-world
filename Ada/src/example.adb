with Ada.Text_IO;

procedure Example is
   procedure Hello is
   begin
      Ada.Text_IO.Put_Line("Hello World!");
   end Hello;
begin
   Hello;
end Example;
