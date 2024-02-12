module example();
    function Action hello();
        $display("Hello, World!");
    endfunction

    rule main;
        hello();
        $finish(0);
    endrule
endmodule