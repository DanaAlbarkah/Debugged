`timescale 1ns / 1ps

module tb_counter_part2;
logic clk;           
logic reset_n;       
logic load;       
logic [3:0] load_data;
 logic [3:0] count;   

 counter_4bit DUT(
    .*
);
      always #5 clk=~clk;

    initial begin
       
        clk = 0;
        reset_n=1;#5
        reset_n=0;
        load=0;
        
#10;
load=1;
reset_n=1;
load_data=1;  
  #10;
load=0;
reset_n=1;

 #10;
load=0;
 
reset_n=1;
 
        #50;
      
        
        $stop;
    end
endmodule