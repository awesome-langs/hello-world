module Example;
   task hello;
      $display("Hello World!");
   endtask

   initial
      begin
         hello();
         $finish;
      end
endmodule
