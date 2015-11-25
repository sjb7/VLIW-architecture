// Register File Design
module D_ffC (input clk, input reset, input regWrite, input regWriteDoosra, input decOut1b, input decOut1bDoosra,
                        input d, input dDoosra, output reg q);
        always @ (negedge clk)
        begin
        if(reset==1'b1)
                q=0;
        else
                if(regWrite == 1'b1 && decOut1b==1'b1) begin q=d; end
                else if (regWriteDoosra == 1'b1 && decOut1bDoosra == 1'b1) begin q = dDoosra; end
        end
endmodule
 
module D_ff (input clk, input reset, input regWrite, input decOut1b, input d, output reg q);
        always @ (negedge clk)
        begin
        if(reset==1'b1)
                q=0;
        else
                if(regWrite == 1'b1 && decOut1b==1'b1) begin q=d; end
        end
endmodule
 
module register4bit( input clk, input reset, input regWrite, input decOut1b, input [3:0] writeData, output  [3:0] outR );
        D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
        D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
        D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
        D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
endmodule
 
module register8bit( input clk, input reset, input regWrite, input decOut1b, input [7:0] writeData, output  [7:0] outR );
        D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
        D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
        D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
        D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
        D_ff d4(clk, reset, regWrite, decOut1b, writeData[4], outR[4]);
        D_ff d5(clk, reset, regWrite, decOut1b, writeData[5], outR[5]);
        D_ff d6(clk, reset, regWrite, decOut1b, writeData[6], outR[6]);
        D_ff d7(clk, reset, regWrite, decOut1b, writeData[7], outR[7]);
endmodule
 
module register1bit( input clk, input reset, input regWrite, input decOut1b, input writeData, output outR );
        D_ff d0(clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
 
module register2bit( input clk, input reset, input regWrite, input decOut1b, input [1:0]writeData, output [1:0] outR );
        D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
        D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
endmodule
 
module register3bit( input clk, input reset, input regWrite, input decOut1b, input [2:0]writeData, output [2:0] outR );
        D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
        D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
        D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
endmodule
 
module register16bitC( input clk, input reset, input regWrite, input regWriteDoosra, input decOut1b,
                                        input decOut1bDoosra, input [15:0] writeData, input [15:0] writeDataDoosra, output  [15:0] outR );
        D_ffC d0(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[0], writeDataDoosra[0], outR[0]);
        D_ffC d1(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[1], writeDataDoosra[1], outR[1]);
        D_ffC d2(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[2], writeDataDoosra[2], outR[2]);
        D_ffC d3(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[3], writeDataDoosra[3], outR[3]);
        D_ffC d4(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[4], writeDataDoosra[4], outR[4]);
        D_ffC d5(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[5], writeDataDoosra[5], outR[5]);
        D_ffC d6(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[6], writeDataDoosra[6], outR[6]);
        D_ffC d7(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[7], writeDataDoosra[7], outR[7]);
        D_ffC d8(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[8], writeDataDoosra[8], outR[8]);
        D_ffC d9(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[9], writeDataDoosra[9], outR[9]);
        D_ffC d10(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[10], writeDataDoosra[10], outR[10]);
        D_ffC d11(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[11], writeDataDoosra[11], outR[11]);
        D_ffC d12(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[12], writeDataDoosra[12], outR[12]);
        D_ffC d13(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[13], writeDataDoosra[13], outR[13]);
        D_ffC d14(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[14], writeDataDoosra[14], outR[14]);
        D_ffC d15(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[15], writeDataDoosra[15], outR[15]);
endmodule
 
module register16bit( input clk, input reset, input regWrite, input decOut1b, input [15:0] writeData, output  [15:0] outR );
        D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
        D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
        D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
        D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
        D_ff d4(clk, reset, regWrite, decOut1b, writeData[4], outR[4]);
        D_ff d5(clk, reset, regWrite, decOut1b, writeData[5], outR[5]);
        D_ff d6(clk, reset, regWrite, decOut1b, writeData[6], outR[6]);
        D_ff d7(clk, reset, regWrite, decOut1b, writeData[7], outR[7]);
        D_ff d8(clk, reset, regWrite, decOut1b, writeData[8], outR[8]);
        D_ff d9(clk, reset, regWrite, decOut1b, writeData[9], outR[9]);
        D_ff d10(clk, reset, regWrite, decOut1b, writeData[10], outR[10]);
        D_ff d11(clk, reset, regWrite, decOut1b, writeData[11], outR[11]);
        D_ff d12(clk, reset, regWrite, decOut1b, writeData[12], outR[12]);
        D_ff d13(clk, reset, regWrite, decOut1b, writeData[13], outR[13]);
        D_ff d14(clk, reset, regWrite, decOut1b, writeData[14], outR[14]);
        D_ff d15(clk, reset, regWrite, decOut1b, writeData[15], outR[15]);
endmodule
 
module register32bit( input clk, input reset, input regWrite, input decOut1b, input [31:0] writeData, output [31:0] outR );
        D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
        D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
        D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
        D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
        D_ff d4(clk, reset, regWrite, decOut1b, writeData[4], outR[4]);
        D_ff d5(clk, reset, regWrite, decOut1b, writeData[5], outR[5]);
        D_ff d6(clk, reset, regWrite, decOut1b, writeData[6], outR[6]);
        D_ff d7(clk, reset, regWrite, decOut1b, writeData[7], outR[7]);
        D_ff d8(clk, reset, regWrite, decOut1b, writeData[8], outR[8]);
        D_ff d9(clk, reset, regWrite, decOut1b, writeData[9], outR[9]);
        D_ff d10(clk, reset, regWrite, decOut1b, writeData[10], outR[10]);
        D_ff d11(clk, reset, regWrite, decOut1b, writeData[11], outR[11]);
        D_ff d12(clk, reset, regWrite, decOut1b, writeData[12], outR[12]);
        D_ff d13(clk, reset, regWrite, decOut1b, writeData[13], outR[13]);
        D_ff d14(clk, reset, regWrite, decOut1b, writeData[14], outR[14]);
        D_ff d15(clk, reset, regWrite, decOut1b, writeData[15], outR[15]);
        D_ff d16(clk, reset, regWrite, decOut1b, writeData[16], outR[16]);
        D_ff d17(clk, reset, regWrite, decOut1b, writeData[17], outR[17]);
        D_ff d18(clk, reset, regWrite, decOut1b, writeData[18], outR[18]);
        D_ff d19(clk, reset, regWrite, decOut1b, writeData[19], outR[19]);
        D_ff d20(clk, reset, regWrite, decOut1b, writeData[20], outR[20]);
        D_ff d21(clk, reset, regWrite, decOut1b, writeData[21], outR[21]);
        D_ff d22(clk, reset, regWrite, decOut1b, writeData[22], outR[22]);
        D_ff d23(clk, reset, regWrite, decOut1b, writeData[23], outR[23]);
        D_ff d24(clk, reset, regWrite, decOut1b, writeData[24], outR[24]);
        D_ff d25(clk, reset, regWrite, decOut1b, writeData[25], outR[25]);
        D_ff d26(clk, reset, regWrite, decOut1b, writeData[26], outR[26]);
        D_ff d27(clk, reset, regWrite, decOut1b, writeData[27], outR[27]);
        D_ff d28(clk, reset, regWrite, decOut1b, writeData[28], outR[28]);
        D_ff d29(clk, reset, regWrite, decOut1b, writeData[29], outR[29]);
        D_ff d30(clk, reset, regWrite, decOut1b, writeData[30], outR[30]);
        D_ff d31(clk, reset, regWrite, decOut1b, writeData[31], outR[31]);
endmodule
 
module registerSet( input clk, input reset, input regWrite, input regWriteDoosra, input [7:0] decOut,
                                        input [7:0] decOutDoosra, input [15:0] writeData, input [15:0] writeDataDoosra,
                                        output [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);
                register16bitC r0 (clk, reset, regWrite, regWriteDoosra, decOut[0] , decOutDoosra[0], writeData , writeDataDoosra, outR0 );
                register16bitC r1 (clk, reset, regWrite, regWriteDoosra, decOut[1] , decOutDoosra[1], writeData , writeDataDoosra, outR1 );
                register16bitC r2 (clk, reset, regWrite, regWriteDoosra, decOut[2] , decOutDoosra[2], writeData , writeDataDoosra,outR2 );
                register16bitC r3 (clk, reset, regWrite, regWriteDoosra, decOut[3] , decOutDoosra[3], writeData , writeDataDoosra,outR3 );
                register16bitC r4 (clk, reset, regWrite, regWriteDoosra, decOut[4] , decOutDoosra[4], writeData ,  writeDataDoosra,outR4 );
                register16bitC r5 (clk, reset, regWrite, regWriteDoosra, decOut[5] , decOutDoosra[5], writeData , writeDataDoosra,outR5 );
                register16bitC r6 (clk, reset, regWrite, regWriteDoosra, decOut[6] , decOutDoosra[6], writeData , writeDataDoosra,outR6 );
                register16bitC r7 (clk, reset, regWrite, regWriteDoosra, decOut[7] , decOutDoosra[7], writeData , writeDataDoosra,outR7 );
endmodule
 
module decoder3to8( input [2:0] destReg, output reg [7:0] decOut);
        always@(destReg)
        begin  
                case(destReg)
                        3'b000: decOut=8'b00000001;
                        3'b001: decOut=8'b00000010;
                        3'b010: decOut=8'b00000100;
                        3'b011: decOut=8'b00001000;
                        3'b100: decOut=8'b00010000;
                        3'b101: decOut=8'b00100000;
                        3'b110: decOut=8'b01000000;
                        3'b111: decOut=8'b10000000;
                endcase
        end
endmodule
 
module mux8to1( input [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7, input [2:0] Sel, output reg [15:0] outBus );
        always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or Sel)
        begin
                case (Sel)
                                3'b000: outBus=outR0;
                                3'b001: outBus=outR1;
                                3'b010: outBus=outR2;
                                3'b011: outBus=outR3;
                                3'b100: outBus=outR4;
                                3'b101: outBus=outR5;
                                3'b110: outBus=outR6;
                                3'b111: outBus=outR7;
                endcase
        end
endmodule
 
module registerFile(input clk, input reset, input regWrite, input regWriteDoosra, input [2:0] srcRegA
                , input [2:0] srcRegB,
                input [2:0] srcRegC, input [2:0] srcRegD, input [2:0] destReg, input [2:0] destRegDoosra,
                input [15:0] writeData, input [15:0] writeDataDoosra,
                output [15:0] outBusA, output [15:0] outBusB, output [15:0] outBusC, output [15:0] outBusD );
               
        wire [7:0] decOut, decOutDoosra;
        wire [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7 ;
        decoder3to8 d0 (destReg,decOut);
        decoder3to8 d1 (destRegDoosra, decOutDoosra);
        registerSet rSet0(clk, reset, regWrite, regWriteDoosra,decOut, decOutDoosra, writeData, writeDataDoosra,outR0,outR1,outR2,outR3,
        outR4,outR5,outR6,outR7) ;
        mux8to1 m1(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegA,outBusA);
        mux8to1 m2(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegB,outBusB);
        mux8to1 m3(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegC,outBusC);
        mux8to1 m4(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegD,outBusD);
endmodule
 
module D_ff_Mem (input clk, input reset, input regWrite, input decOut1b,input init, input d, output reg q);
        always @ (negedge clk)
        begin
        if(reset==1)
                q=init;
        else
                if(regWrite == 1 && decOut1b==1) begin q=d; end
        end
endmodule
 
 
module register_Mem(input clk,input reset,input regWrite,input decOut1b,input [15:0]init, input [15:0] d_in, output [15:0] q_out);
        D_ff_Mem dMem0 (clk,reset,regWrite,decOut1b,init[0],d_in[0],q_out[0]);
        D_ff_Mem dMem1 (clk,reset,regWrite,decOut1b,init[1],d_in[1],q_out[1]);
        D_ff_Mem dMem2 (clk,reset,regWrite,decOut1b,init[2],d_in[2],q_out[2]);
        D_ff_Mem dMem3 (clk,reset,regWrite,decOut1b,init[3],d_in[3],q_out[3]);
       
        D_ff_Mem dMem4 (clk,reset,regWrite,decOut1b,init[4],d_in[4],q_out[4]);
        D_ff_Mem dMem5 (clk,reset,regWrite,decOut1b,init[5],d_in[5],q_out[5]);
        D_ff_Mem dMem6 (clk,reset,regWrite,decOut1b,init[6],d_in[6],q_out[6]);
        D_ff_Mem dMem7 (clk,reset,regWrite,decOut1b,init[7],d_in[7],q_out[7]);
 
        D_ff_Mem dMem8 (clk,reset,regWrite,decOut1b,init[8],d_in[8],q_out[8]);
        D_ff_Mem dMem9 (clk,reset,regWrite,decOut1b,init[9],d_in[9],q_out[9]);
        D_ff_Mem dMem10 (clk,reset,regWrite,decOut1b,init[10],d_in[10],q_out[10]);
        D_ff_Mem dMem11 (clk,reset,regWrite,decOut1b,init[11],d_in[11],q_out[11]);
       
        D_ff_Mem dMem12 (clk,reset,regWrite,decOut1b,init[12],d_in[12],q_out[12]);
        D_ff_Mem dMem13 (clk,reset,regWrite,decOut1b,init[13],d_in[13],q_out[13]);
        D_ff_Mem dMem14 (clk,reset,regWrite,decOut1b,init[14],d_in[14],q_out[14]);
        D_ff_Mem dMem15 (clk,reset,regWrite,decOut1b,init[15],d_in[15],q_out[15]);
       
endmodule
module register_Mem_8(input clk,input reset,input regWrite,input decOut1b,input [7:0]init, input [7:0] d_in, output [7:0] q_out);
        D_ff_Mem dMem0 (clk,reset,regWrite,decOut1b,init[0],d_in[0],q_out[0]);
        D_ff_Mem dMem1 (clk,reset,regWrite,decOut1b,init[1],d_in[1],q_out[1]);
        D_ff_Mem dMem2 (clk,reset,regWrite,decOut1b,init[2],d_in[2],q_out[2]);
        D_ff_Mem dMem3 (clk,reset,regWrite,decOut1b,init[3],d_in[3],q_out[3]);
       
        D_ff_Mem dMem4 (clk,reset,regWrite,decOut1b,init[4],d_in[4],q_out[4]);
        D_ff_Mem dMem5 (clk,reset,regWrite,decOut1b,init[5],d_in[5],q_out[5]);
        D_ff_Mem dMem6 (clk,reset,regWrite,decOut1b,init[6],d_in[6],q_out[6]);
        D_ff_Mem dMem7 (clk,reset,regWrite,decOut1b,init[7],d_in[7],q_out[7]);
       
endmodule
 
module Mem(input clk, input reset,input memWrite,input memRead, input [31:0] pc, input [15:0] dataIn,output [31:0] IR );
        wire [15:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,
                                        Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15,decOut;
       
        decoder4to16 dec0( pc[4:1], decOut);
        register_Mem r0(clk,reset,memWrite,decOut[0],16'b00011_10_001_000_100,dataIn,Qout0); //addi 1,$r0,$r4 , value of r0 is 0, so value of r4 will become 1
        register_Mem r1(clk,reset,memWrite,decOut[1],16'b01101_00001_101_101,dataIn,Qout1); //load  $r5(1),$r5 = 0, Will store the value 0 in r5    
        register_Mem r2(clk,reset,memWrite,decOut[2],16'b00011_11_010_010_110,dataIn,Qout2); //subi 2,$r2,$r6 , value of r2 is 0, so the value of r6 will become -2;
        register_Mem r3(clk,reset,memWrite,decOut[3],16'b01100_00100_000_100,dataIn,Qout3); //store $r0(4), $r4, Though this a add store hazard , it should store value 1 in 4 due to forwarding
       
        register_Mem r4(clk,reset,memWrite,decOut[4],16'b00011_10_011_110_110,dataIn,Qout4); //add 3,$r6,$r6 = 1 , This is the dual data Hazard solved by forwarding
        register_Mem r5(clk,reset,memWrite,decOut[5],16'b01101_00100_000_101,  dataIn,Qout5); //load  $r0(4),$r5 = 1, Will store the value 0 in r5    
        register_Mem r6(clk,reset,memWrite,decOut[6],16'b00011_10_011_110_010,  dataIn,Qout6);  // add 3,$r6,$r4 = 4 , This is the double Hazard solved by forwarding
        register_Mem r7(clk,reset,memWrite,decOut[7],16'b 01100_00001_000_101,dataIn,Qout7);  // store $r0(1),$r5 = 1 , Since Previous Load stored in r5 and this is using r5 , it is a hazard , but it is being forwarded
       
                register_Mem r8(clk,reset,memWrite,decOut[8],16'b 00011_10_000_000_011,dataIn,Qout8); //addi 0,$r0,$r3  = 0
        register_Mem r9(clk,reset,memWrite,decOut[9],16'b 01101_00000_000_111,dataIn,Qout9); //lw $r0(0), $r7 =  0
                // Since, it is load use hazard, there will be a stall. We have stored 6 in 0th location in memory, so output = 9
        register_Mem r10(clk,reset,memWrite,decOut[10],16'b 00011_10_011_111_001,dataIn,Qout10); //add #3 ,$r7 = $r1 = 9 // This is a load use hazard, so there should be a stall.
        register_Mem r11(clk,reset,memWrite,decOut[11],16'b 01100_00001_000_101,dataIn,Qout11); //store $r0(1),$r5 = 1
   
       /*  register_Mem r12(clk,reset,memWrite,decOut[12],16'b 00111_100_00000000,dataIn,Qout12); // cmp #0 $r4 0 = 0
        register_Mem r13(clk,reset,memWrite,decOut[13],16'b 01100_00001_000_101,dataIn,Qout13);  //
        register_Mem r14(clk,reset,memWrite,decOut[14],16'b 00111_100_00000000,dataIn,Qout14); //
        register_Mem r15(clk,reset,memWrite,decOut[15],16'b 11010_100_11111110,dataIn,Qout15); //branch eq  -4 */
               
                register_Mem r12(clk,reset,memWrite,decOut[12],16'b 00111_100_00000000,dataIn,Qout12); // cmp #0 $r4 0 = 0
        register_Mem r13(clk,reset,memWrite,decOut[13],16'b 11100_00000000010,dataIn,Qout13);  // jmp 2
        register_Mem r14(clk,reset,memWrite,decOut[14],16'b 00000_000_00000000,dataIn,Qout14); //
        register_Mem r15(clk,reset,memWrite,decOut[15],16'b 11010_100_11111110,dataIn,Qout15); //branch eq  -4
   
               
 
               
        mux16to1 mMem (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,pc[4:1],IR[15:0]);
        mux16to1 mMem2 (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,pc[4:1]+2'b01,IR[31:16]);
endmodule
 
module decoder4to16( input [3:0] destReg, output reg [15:0] decOut);
        always@(destReg)
        case(destReg)
                        4'b0000: decOut=16'b0000000000000001;
                        4'b0001: decOut=16'b0000000000000010;
                        4'b0010: decOut=16'b0000000000000100;
                        4'b0011: decOut=16'b0000000000001000;
                        4'b0100: decOut=16'b0000000000010000;
                        4'b0101: decOut=16'b0000000000100000;
                        4'b0110: decOut=16'b0000000001000000;
                        4'b0111: decOut=16'b0000000010000000;
                        4'b1000: decOut=16'b0000000100000000;
                        4'b1001: decOut=16'b0000001000000000;
                        4'b1010: decOut=16'b0000010000000000;
                        4'b1011: decOut=16'b0000100000000000;
                        4'b1100: decOut=16'b0001000000000000;
                        4'b1101: decOut=16'b0010000000000000;
                        4'b1110: decOut=16'b0100000000000000;
                        4'b1111: decOut=16'b1000000000000000;
        endcase
endmodule
 
module mux16to1( input [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [15:0] outBus );
        always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
        case (Sel)
                                4'b0000: outBus=outR0;
                                4'b0001: outBus=outR1;
                                4'b0010: outBus=outR2;
                                4'b0011: outBus=outR3;
                                4'b0100: outBus=outR4;
                                4'b0101: outBus=outR5;
                                4'b0110: outBus=outR6;
                                4'b0111: outBus=outR7;
                                4'b1000: outBus=outR8;
                                4'b1001: outBus=outR9;
                                4'b1010: outBus=outR10;
                                4'b1011: outBus=outR11;
                                4'b1100: outBus=outR12;
                                4'b1101: outBus=outR13;
                                4'b1110: outBus=outR14;
                                4'b1111: outBus=outR15;
        endcase
endmodule
 
module mux16to1_8( input [7:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [7:0] outBus );
        always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
        case (Sel)
                                4'b0000: outBus=outR0;
                                4'b0001: outBus=outR1;
                                4'b0010: outBus=outR2;
                                4'b0011: outBus=outR3;
                                4'b0100: outBus=outR4;
                                4'b0101: outBus=outR5;
                                4'b0110: outBus=outR6;
                                4'b0111: outBus=outR7;
                                4'b1000: outBus=outR8;
                                4'b1001: outBus=outR9;
                                4'b1010: outBus=outR10;
                                4'b1011: outBus=outR11;
                                4'b1100: outBus=outR12;
                                4'b1101: outBus=outR13;
                                4'b1110: outBus=outR14;
                                4'b1111: outBus=outR15;
        endcase
endmodule
 
//This module has been changed for 31 bits
module pcAdder(input [31:0] pc, output reg [31:0] newPC);
        always @(pc)
        begin
                newPC = pc + 4;
        end
endmodule
 
module adderModule(input [15:0] inp1, input [15:0] inp2, output reg [15:0] adderKaResult);
        always @(inp1, inp2)
        begin  
                adderKaResult = inp1 + inp2;
        end
endmodule
 
//Changed PC
module IF_ID(input clk, input reset,input regWrite, input decOut1b,input [31:0] instr, input [31:0] PC,
                        output [15:0] p0_intr, output [15:0] p0_intr2, output [31:0] PCOut);
 
  register32bit PC_reg (clk, reset, regWrite, decOut1b, PC, PCOut);
  register16bit instr_fetch_reg(clk,reset,regWrite,decOut1b,instr[15:0],p0_intr);
  register16bit instr_fetch_reg_2(clk,reset,regWrite,decOut1b,instr[31:16],p0_intr2);
       
endmodule
 
//Changed PC
module ID_EX(input clk, input reset,input regWrite, input decOut1b,input haltmux, input [15:0] insFetchOutput, input [15:0] insFetchOutputNeeche,input [15:0] regOut1,input [15:0] regOut2,
                        input [15:0] sExtOut, input [2:0] ctr_Rd, input [1:0] ctr_aluSrcA, input ctr_aluSrcB,
                        input [1:0] ctr_aluOp,input ctr_regWrite,input [31:0] PC, input [15:0] regOut3,
                        input [15:0] regOut4, input [15:0] sExtOutNeecheWaala, input [2:0] RdNeecheWaala, input regWriteNeeche, input memWrite, input memRead,
                        output [15:0] p1_regOut1,output [15:0] p1_regOut2,output [15:0] p1_sExtOut,
                        output [2:0] p1_Rd, output [1:0]  p1_aluSrcA,output p1_aluSrcB,
                        output [1:0] p1_aluOp, output p1_regWrite, output [31:0] p1_PC,
                        output [15:0] p1_regOut3, output [15:0] p1_regOut4, output [15:0] p1_sExtOutNeecheWaala,
                    output [2:0] p1_RdNeecheWaala, output p1_regWriteNeeche, output [15:0] p1_insFetchOutput,
                                        output [15:0] p1_insFetchOutputNeeche, output p1_memWrite, output p1_memRead, output p1_haltmux);
 
  register16bit regout1_reg(clk,reset,regWrite,decOut1b,regOut1,p1_regOut1);
  register16bit regout2_reg(clk,reset,regWrite,decOut1b,regOut2,p1_regOut2);
  register16bit sext_reg(clk,reset,regWrite,decOut1b,sExtOut,p1_sExtOut);
  register16bit fetchOut_reg(clk,reset,regWrite,decOut1b,insFetchOutput,p1_insFetchOutput);
  register16bit fetchOutNeeche_reg(clk,reset,regWrite,decOut1b,insFetchOutputNeeche,p1_insFetchOutputNeeche);
  register2bit aluSrcA_reg(clk, reset, regWrite, decOut1b, ctr_aluSrcA, p1_aluSrcA);
  register3bit Rd_reg (clk, reset, regWrite, decOut1b, ctr_Rd, p1_Rd);
  register1bit aluSrcB_reg(clk,reset,regWrite,decOut1b,ctr_aluSrcB,p1_aluSrcB);
  register2bit aluop_reg(clk,reset,regWrite,decOut1b,ctr_aluOp,p1_aluOp);
  register1bit regwrite_reg(clk,reset,regWrite,decOut1b,ctr_regWrite,p1_regWrite);
  register16bit regout3_reg(clk,reset,regWrite,decOut1b,regOut3,p1_regOut3);
  register16bit regout4_reg(clk,reset,regWrite,decOut1b,regOut4,p1_regOut4);
  register32bit PC_reg(clk,reset,regWrite,decOut1b,PC,p1_PC);
  register16bit signExtNeeche_reg(clk,reset,regWrite,decOut1b,sExtOutNeecheWaala,p1_sExtOutNeecheWaala);
  register3bit Rd_regNeeche (clk, reset, regWrite, decOut1b, RdNeecheWaala, p1_RdNeecheWaala);
  register1bit regWriteNeeche_reg(clk,reset,regWrite,decOut1b,regWriteNeeche,p1_regWriteNeeche);
  register1bit memWrite_reg(clk,reset,regWrite,decOut1b,memWrite,p1_memWrite);
  register1bit memRead_reg(clk,reset,regWrite,decOut1b,memRead,p1_memRead);
  register1bit haltmux_reg(clk,reset,regWrite,decOut1b, haltmux,p1_haltmux);
 
endmodule
 
//Changed PC
module EX_MEM(input clk, input reset,input regWrite, input decOut1b, input [31:0] p1_PC,
   input [15:0] aluOut,input [2:0] p1_Rd, input p1_regWrite,
   input [15:0] p1_outBusD, input [15:0] AluKaOutputNeeche, input p1_memRead, input p1_memWrite,
   input [2:0] p1_RdNeecheWaala, input p1_regWriteNeecheWaala,
   input [15:0] p1_outBusA,input [15:0] p1_outBusB, input [15:0] p1_instFetchOut,input [15:0] p1_insFetchOutNeeche,
        output [15:0] p2_aluOut, output [2:0] p2_Rd, output p2_regWrite,
   output [15:0] p2_outBusD, output [15:0] p2_AluKaOutputNeeche, output p2_memRead, output p2_memWrite,
        output [2:0] p2_RdNeecheWaala, output p2_regWriteNeecheWaala,output [15:0] p2_outBusA,output [15:0] p2_outBusB,output [15:0] p2_instFetchOut,output [15:0] p2_insFetchOutNeeche,
                output [31:0] p2_PC);
       
  register16bit aluout_reg(clk,reset,regWrite,decOut1b,aluOut,p2_aluOut);
  register1bit p1regwrite_reg(clk,reset,regWrite,decOut1b,p1_regWrite,p2_regWrite);
  register3bit Rd_reg (clk, reset, regWrite, decOut1b, p1_Rd, p2_Rd) ;
  register16bit outBusD_reg(clk,reset,regWrite,decOut1b,p1_outBusD,p2_outBusD);
  register16bit AluKaOutputNeeche_reg(clk,reset,regWrite,decOut1b, AluKaOutputNeeche,p2_AluKaOutputNeeche);
  register1bit memRead_reg(clk,reset,regWrite,decOut1b,p1_memRead,p2_memRead);
  register1bit memWrite_reg(clk,reset,regWrite,decOut1b,p1_memWrite,p2_memWrite);
  register3bit RdNeecheWaala_reg(clk,reset,regWrite,decOut1b,p1_RdNeecheWaala,p2_RdNeecheWaala);
  register1bit regWriteNeeche_reg(clk,reset,regWrite,decOut1b,p1_regWriteNeecheWaala,p2_regWriteNeecheWaala);
  register16bit outBusA_reg(clk,reset,regWrite,decOut1b,p1_outBusA,p2_outBusA);
  register16bit outBusB_reg(clk,reset,regWrite,decOut1b,p1_outBusB,p2_outBusB);
  register16bit Instruction_reg(clk,reset,regWrite,decOut1b,p1_instFetchOut,p2_instFetchOut);
  register16bit InstructionNeeche_reg(clk,reset,regWrite,decOut1b,p1_insFetchOutNeeche,p2_insFetchOutNeeche);
  register32bit PC_reg(clk,reset,regWrite,decOut1b,p1_PC,p2_PC);
endmodule
 
module MEM_WB(input clk, input reset,input regWrite, input decOut1b,
   input [15:0] p2_aluOut,input [2:0] p2_Rd, input p2_regWrite,
        input [7:0] memoryKaOutput, input p2_regWriteNeeche, input [2:0] p2_RdNeecheWaala,
                input [15:0] p2_outBusA,input [15:0] p2_outBusB,input [15:0] p2_insFetchOutNeeche,
        output [15:0] p3_aluOut, output [2:0] p3_Rd, output p3_regWrite,
        output [7:0] p3_memoryKaOutput, output p3_regWriteNeeche, output [2:0] p3_RdNeecheWaala,output [15:0] p3_outBusA,output [15:0] p3_outBusB,output [15:0] p3_insFetchOutNeeche);
       
  register16bit aluout_reg(clk,reset,regWrite,decOut1b,p2_aluOut,p3_aluOut);
  register1bit p1regwrite_reg(clk,reset,regWrite,decOut1b,p2_regWrite,p3_regWrite);
  register3bit Rd_reg (clk, reset, regWrite, decOut1b, p2_Rd, p3_Rd) ;
  register8bit memory_Reg (clk, reset, regWrite, decOut1b, memoryKaOutput, p3_memoryKaOutput) ;
  register1bit p2_regWriteNeeche_reg(clk, reset, regWrite, decOut1b, p2_regWriteNeeche, p3_regWriteNeeche) ;
  register3bit p2_RdNeecheWaala_reg(clk, reset, regWrite, decOut1b, p2_RdNeecheWaala, p3_RdNeecheWaala) ;
  register16bit outBusA_reg(clk,reset,regWrite,decOut1b,p2_outBusA,p3_outBusA);
  register16bit outBusB_reg(clk,reset,regWrite,decOut1b,p2_outBusB,p3_outBusB);
  register16bit InstructionNeeche_reg(clk,reset,regWrite,decOut1b,p2_insFetchOutNeeche,p3_insFetchOutNeeche);
endmodule
 
module signExtModule (input [4:0] offset5, input [10:0] offset11, input [7:0]  offset8, input [1:0] ctrSignExt,
                                          output reg [15:0] signExtModuleOutput);
        always @(offset5, offset11, offset8, ctrSignExt)
        begin
                if (ctrSignExt == 2'b00)
                        signExtModuleOutput = {{11{offset5[4]}},offset5[4:0]};
                else if (ctrSignExt == 2'b01)
                        signExtModuleOutput = {{5{offset11[10]}},offset11[10:0]};
                else if (ctrSignExt == 2'b10)
                        signExtModuleOutput = {{8{offset8[7]}},offset8[7:0]};
        end
 
endmodule
 
 
module ALU( input [15:0] AluIn1, input [15:0] AluIn2, input [1:0] AluOp, input haltmux, output reg [15:0] AluOut,output reg [3:0] flag);
    reg [16:0] temp1, temp2, temp3;
        always @(AluIn1, AluIn2, AluOp)
    begin
        if (AluOp == 2'b10)
                AluOut = AluIn1 + AluIn2;
        else if (AluOp == 2'b11)
                AluOut = AluIn1 - AluIn2;
        else if (AluOp == 2'b01)
                AluOut = AluIn1 & AluIn2;
                temp3 = 16'd0;
                temp1 = AluIn1; temp2 = AluIn2; temp3 = AluIn1 + AluIn2;
                flag = 4'b0000;
                if (haltmux == 1'b0)
                begin
                        if(AluOut==0) flag[2] = 1;
                        if ( AluOp == 2'b10 && AluIn1[15] == AluIn2[15] && AluIn1[15] != AluOut[15])
                                flag[0] = 1;
                        if (temp3[16] == 1)
                                flag[1] = 1;
                        if (AluOut[15] == 1)
                                flag[3] = 1;
                end
    end
endmodule
 
 //I have added PC 31 to this , Not sure if need to extend shifted value
module adderforbranch(input [31:0] PC, input [15:0] shiftedvalue, input opcodebit, input zeroflag, output reg [31:0] BranchAddress);
        always@(PC,shiftedvalue, opcodebit, zeroflag)
        begin
                if(zeroflag==1 && opcodebit==1)
                        BranchAddress = PC + {{16{shiftedvalue[15]}}, shiftedvalue};
                else if(zeroflag==0 && opcodebit==0)
                        BranchAddress = PC + {{16{shiftedvalue[15]}}, shiftedvalue};
                else
                        BranchAddress = PC + 4;
        end
endmodule
 
module ctrlCkt  ( input [4:0] opcode, input [1:0] funcField, input [4:0] opcodeNeeche, input haltmux,
                                 output reg immSrc, output reg regSrcB, output reg regDestB, output reg [1:0] aluSrcA,
                                 output reg aluSrcB, output reg [1:0] aluOp,output reg regWrite,
                                 output reg regWriteNeeche,
                                 output reg [1:0] signExtNeeche, output reg memRead, output reg memWrite,
                                                                 output reg [1:0] pcmux, output reg pcwrite, output reg ifidpipeline,
                                 output reg undefinedInst);
 
       
        // immSrc goes to sign etender. No mux required before sign extender.
        //regDestB = 0 for Rd [0-2] and 1 for second Rd [8-10]
        // regSrcB = 0 for Rm and 1 for Rd
        //immSrc = 0 for short and 1 for long.
        //aluSrcA = 00 for Rn, 01 for Rm, and 10 for Rd
        // aluSrcB = 0 for Rd and 1 for Imm.
        // aluOp is equal to funcField for Add and Sub, for cmp it is 11 and for and it is 01.
       
       
        // signExtNeeche means 2'b00 for [10:6] and 2'b01 for [10:0], 2'b10 for [7:0]
                // pcmux is added which is 00 for normal pc add , 01 for jump , and 10 for branch
        always@(opcode, opcodeNeeche, funcField, haltmux)
        begin
          if(haltmux == 1)
          begin regWrite = 0; aluOp = 10; memRead = 0; memWrite = 0; regWriteNeeche = 0; pcwrite = 0;   ifidpipeline = 0; end
          else
          begin
                  undefinedInst = 0;
          case(opcode)
              5'b00011: begin immSrc = 0; regSrcB = 0 ; regDestB = 0; aluSrcA = 2'b00; aluSrcB = 1; aluOp = funcField; regWrite = 1; pcwrite =1; ifidpipeline = 1; end
              5'b01000: begin regDestB = 0; regSrcB = 0; aluSrcA = 2'b01; aluSrcB = 0; aluOp = 2'b01; regWrite = 1; pcwrite =1; ifidpipeline = 1; end
              5'b00111: begin immSrc = 1; regSrcB = 1; regDestB = 1; aluSrcA = 2'b10 ; aluSrcB = 1; aluOp = 2'b11; regWrite = 0; pcwrite =1; ifidpipeline = 1; end
                      default: undefinedInst = 1;
                  endcase
          case (opcodeNeeche)
              5'b01101: begin memRead = 1; memWrite = 0; regWriteNeeche = 1; signExtNeeche = 2'b00; pcmux = 00; pcwrite =1; ifidpipeline = 1; end
              5'b01100: begin memWrite = 1; memRead = 0; regWriteNeeche = 0; signExtNeeche = 2'b00; pcmux = 00; pcwrite =1; ifidpipeline = 1; end
              5'b11100 : begin memWrite = 0; memRead = 0; regWriteNeeche = 0; signExtNeeche = 2'b01; pcmux = 01; pcwrite =1; ifidpipeline = 1; end
              5'b11010 : begin memWrite = 0;memRead = 0; regWriteNeeche = 0; signExtNeeche = 2'b10; pcmux = 10; pcwrite =1; ifidpipeline = 1; end
                          default : undefinedInst = 1;
          endcase
                  pcwrite = 1; ifidpipeline = 1;
                  end
        end
endmodule
 
module signExt(input [2:0] immShort, input [7:0] immLong, input immSrc, output reg [15:0] sextOutput );
        always @(immShort, immLong, immSrc)
        begin
                if (immSrc == 1'b0)
                        sextOutput = {{13{immShort[2]}},immShort[2:0]};
                else
                        sextOutput = {{8{immLong[7]}},immLong[7:0]};
        end
endmodule
 
module mux2to1 (input [2:0] inp1, input [2:0] inp2, input sel, output reg [2:0] muxOut );
        always @(inp1, inp2, sel)
        begin
                if (sel == 1'b0)
                        muxOut = inp1;
                else
                        muxOut = inp2;
        end
endmodule
 
module mux2to1_16 (input [15:0] inp1, input [15:0] inp2, input sel, output reg [15:0] muxOut );
        always @(inp1, inp2, sel)
        begin
                if (sel == 1'b0)
                        muxOut = inp1;
                else
                        muxOut = inp2;
        end
endmodule
 
module mux2to1_32 (input [31:0] inp1, input [31:0] inp2, input sel, output reg [31:0] muxOut );
        always @(inp1, inp2, sel)
        begin
                if (sel == 1'b0)
                        muxOut = inp1;
                else
                        muxOut = inp2;
        end
endmodule
 
module mux3to1 (input [15:0] inp1,inp2, inp3, input [1:0] sel, output reg [15:0] muxOut);
        always @(inp1, inp2, inp3, sel)
        begin
                if (sel == 2'b00)
                        muxOut = inp1;
                else if (sel == 2'b01)
                        muxOut = inp2;
                else
                        muxOut = inp3;
        end
endmodule
 
module mux4to1 (input [15:0] inp1,inp2, inp3,inp4, input [1:0] sel, output reg [15:0] muxOut);
        always @(inp1, inp2, inp3,inp4, sel)
        begin
                if (sel == 2'b00)
                        muxOut = inp1;
                else if (sel == 2'b01)
                        muxOut = inp2;
                                else if (sel == 2'b11)
                                                muxOut = inp4;
                else
                        muxOut = inp3;
        end
endmodule
 
/*module PCMux3to1 (input [15:0] inp1,inp2, inp3, input [1:0] sel, output reg [15:0] muxOut);
        always @(inp1, inp2, inp3, sel)
        begin
                if (sel == 2'b01)
                        muxOut = inp2;
                else if (sel == 2'b10)
                        muxOut = inp3;
                else
                        muxOut = inp1;
        end
endmodule*/
 
module PCMux4to1 (input [31:0] inp1,inp2, inp3, inp4, input [1:0] sel,input undefinedinstruction,input flag,output reg [31:0] muxOut);
        always @(inp1, inp2, inp3, sel,undefinedinstruction,flag)
        begin
                                if(undefinedinstruction==1 || flag==1)
                                                muxOut = inp4;
                else if (sel == 2'b01)
                        muxOut = inp2;
                else if (sel == 2'b10)
                        muxOut = inp3;
                else
                        muxOut = inp1;
        end
endmodule
 
module forwardingUnit(input [2:0] presentRs,input [2:0] presentRt, input [2:0] exmemRd, input [2:0] memwbRd,input exmemregwrite, input memwbregwrite,input [4:0] LoadCheckOpcode,input [2:0] RdofPreviousLoad, output reg [1:0] muxsourcea);
always@(presentRs,presentRt,exmemRd,memwbRd,exmemregwrite,memwbregwrite,LoadCheckOpcode,RdofPreviousLoad)
begin
        if(exmemregwrite == 1 && exmemRd == presentRs)
                muxsourcea = 2'b01;
        else
        begin
                if( memwbregwrite == 1 && memwbRd == presentRs)
                        muxsourcea = 2'b10;
                                else if(LoadCheckOpcode==5'b01101 && RdofPreviousLoad == presentRs)
                                                muxsourcea = 2'b11;
                else
                        muxsourcea = 2'b00;
        end
       /*  if(exmemregwrite == 1 && exmemRd == presentRt)
                muxsourceb = 2'b01;
        else
        begin
                if( memwbregwrite == 1 && memwbRd == presentRt)
                        muxsourceb = 2'b10;
                else
                        muxsourceb = 2'b00;
        end */
end
endmodule
 
module forwardUnitNeeche(input[4:0] presentOpcode,input [2:0] RdPresent, input [2:0] RdNextUppar, input RdNextUpparRegWrite, input [4:0] previousNeecheOpcode,input [2:0] previousRdNeeche, input [4:0] p2Opcode,input [2:0] p2Rd, output reg [1:0] neecheforwardOutput);
always@(presentOpcode,RdPresent,RdNextUppar,RdNextUpparRegWrite,previousRdNeeche,previousNeecheOpcode   )
begin
        if(presentOpcode==5'b01100 && RdPresent==RdNextUppar && RdNextUpparRegWrite==1'b1)
                neecheforwardOutput = 2'b01;
                else if(p2Opcode==5'b01100 && previousNeecheOpcode==5'b01101 && p2Rd==previousRdNeeche)
                                neecheforwardOutput = 2'b10;
        else
                neecheforwardOutput = 2'b00;
end
endmodule
 
module HazardDetectionUnit(input [4:0] neechePipelinekaNextInstruction, input [2:0] neechePipelinekaNextInstructionkaRd, input [2:0] presentRs, input writeReady,output reg haltmux,output reg pcwrite, output reg ifidpipeline);
always@(neechePipelinekaNextInstruction,neechePipelinekaNextInstructionkaRd,presentRs,writeReady)
begin  
        if(neechePipelinekaNextInstruction == 5'b01101 && neechePipelinekaNextInstructionkaRd == presentRs)
                begin
                        haltmux = 1;
                        ifidpipeline = 0;
                        pcwrite = 0;
                end            
		else if(writeReady == 0)
				begin
					 haltmux = 1;
                     ifidpipeline = 0;
                     pcwrite = 0;
				end
        else
                begin
                        haltmux = 0;
                        ifidpipeline = 1;
                        pcwrite = 1;
                end
end
endmodule
 
 module mux_32_2toone(input [31:0] inp1,input [31:0] inp2,input sel,output reg [31:0] memmux);
 always@(inp1,inp2,sel)
 begin
	if(sel==1)
		memmux = inp1;
	else
		memmux = inp2;
 end
 endmodule;
 
 module tempSignExt(input [15:0] inp, output reg [31:0] outp);
 always @(inp)
 begin
        outp = {{16{inp[15]}}, inp};
end
endmodule
module processor(input clk, input reset, input pcwrite,input ifidpipeline, input undefinedInst, input[31:0] instruction, input[63:0] dataLine,output[7:0] dataOut, output writeReady,output[63:0] dataTemp,output [15:0] Result, output [7:0] Result2, output reg [31:0]  memoryOutput);
 
        wire [15:0] sextOut, insFetchOut, insFetchOutNeeche, outBusA, outBusB, p1_outBusA, p1_outBusB, p1_sextOut, AluKaOutput;
        wire [15:0] p2_aluKaOutput, p3_aluKaOutput, aluTempB, teeninputwalamux;
        wire [15:0] outBusC, outBusD, signExtModuleOutput, p1_outBusC, p1_outBusD, p1_signExtModuleOutput,p2_outBusA,p2_outBusB,fout1,fout2,p3_outBusA,p3_outBusB;
        wire [15:0] execAdderKaOutput, p2_outBusD, p2_execAdderKaOutput,p1_insFetchOut,p1_insFetchOutNeeche,p2_instFetchOut;
        wire [15:0] forwardedStore,p2_insFetchOutNeeche,p3_insFetchOutNeeche;
        wire immSrc, regSrcB, regDestB, aluSrcB, regWrite, p1_aluSrcB, p1_regWrite, p2_regWrite, p3_regWrite;
        wire regWriteNeeche, memRead, memWrite, p1_regWriteNeeche, p2_memRead, p2_memWrite, p2_regWriteNeeche;
                wire Cause;
                wire [1:0] pcmux;
        wire p3_regWriteNeeche, p1_memWrite, p1_memRead,haltmux, p1_haltmux;
        wire [1:0] aluSrcA, aluOp, toReg, p1_aluSrcA, p1_aluOp,neecheForwardOutput, p1_toReg, p2_toReg, p3_toReg, signExtNeeche,fmuxsourcea,fmuxsourceb;
        wire [2:0] regDestMuxOut, regSrcBMuxOut, p1_Rd, p2_Rd, p3_Rd,p1_RdNeeche, p2_RdNeeche, p3_RdNeeche;
        wire [31:0] jumpOutput, MemorykaOutput,insMemOut,pcmuxkaOutput,PCResult,PCAdd,PCResultOutput,p2_PC,PCBranch,p1_PCOut,epcVal, epcMuxOut;
        wire [7:0] dataMemOut;
        wire [3:0] flags;
       
        always @(insMemOut)
        begin
                memoryOutput = insMemOut;
        end
                tempSignExt tempS(signExtModuleOutput<<1, jumpOutput);
        // Here my pcadder adds 4 to value in PCResult and store it in PCAdd , my mux selects between PCAdd, PCJump and PCBranch and store it in pcmuxkaoutput, which is stored in register
        pcAdder pcAdd(PCResult,PCAdd);
        //PCMux3to1 pcwaalamux(PCAdd,PCResultOutput + (signExtModuleOutput<<1),PCBranch,pcmux,pcmuxkaOutput);
                PCMux4to1 pcwaalamux(PCAdd,PCResultOutput + jumpOutput,PCBranch,32'h80000180,pcmux,undefinedInst,flags[0],pcmuxkaOutput);
        register32bit registerPC(clk,reset,pcwrite,1'b1,pcmuxkaOutput,PCResult);
                //register16bit registerPC(clk,reset,pcwrite,1'b1,pcmuxkaOutput,PCResult);
               
        //Mem mem(clk,reset,1'b0,1'b1, PCResult, 16'd0, insMemOut );
        topModule instruction_cache(clk,reset,instruction,dataLine,dataOut,writeReady,dataTemp);
		
		mux_32_2toone instructiontotake(dataTemp[63:32],dataTemp[31:0],PCResult[2:2],insMemOut);
		
        ctrlCkt ctrl(insFetchOut[15:11],insFetchOut[10:9], insFetchOutNeeche[15:11], haltmux,immSrc, regSrcB, regDestB, aluSrcA, aluSrcB, aluOp, regWrite,
                regWriteNeeche, signExtNeeche,memRead, memWrite,pcmux,pcwrite,ifidpipeline, undefinedInst);
               
               
        IF_ID if_id(clk, reset,ifidpipeline, 1'b1,insMemOut, PCAdd, insFetchOut, insFetchOutNeeche, PCResultOutput);
             
        // This is the Hazard Detection Unit
        HazardDetectionUnit HazardDetection(p1_insFetchOutNeeche[15:11],p1_insFetchOutNeeche[2:0],insFetchOut[5:3],writeReady,haltmux,pcwrite,ifidpipeline);
                               
        adderforbranch addingbranch(PCResultOutput,signExtModuleOutput<<1 , insFetchOutNeeche[14] , flags[2] , PCBranch);
               
        mux2to1 regDestMux(insFetchOut[2:0], insFetchOut[10:8], regDestB, regDestMuxOut);
        mux2to1 regSrcBMux(insFetchOut[5:3], insFetchOut[2:0], regSrcB, regSrcBMuxOut);
        signExt sext(insFetchOut[8:6], insFetchOut[7:0], immSrc, sextOut );
        registerFile regFile(clk, reset, p3_regWrite, p3_regWriteNeeche, insFetchOut[5:3], regSrcBMuxOut,
                                                 insFetchOutNeeche[5:3], insFetchOutNeeche[2:0], p3_Rd, p3_RdNeeche, Result, {8'd0,Result2},
                                                 outBusA, outBusB, outBusC,outBusD );
        signExtModule signExtM(insFetchOutNeeche[10:6], insFetchOutNeeche[10:0], insFetchOutNeeche[7:0],
                                                  signExtNeeche, signExtModuleOutput);
        ID_EX id_ex(clk, reset, 1'b1, 1'b1, haltmux, insFetchOut, insFetchOutNeeche,outBusA, outBusB,sextOut, regDestMuxOut, aluSrcA, aluSrcB, aluOp,regWrite,
                    PCResultOutput, outBusC, outBusD, signExtModuleOutput, insFetchOutNeeche[2:0], regWriteNeeche, memWrite, memRead,
                    p1_outBusA, p1_outBusB, p1_sextOut,p1_Rd, p1_aluSrcA, p1_aluSrcB,p1_aluOp,p1_regWrite,
                                        p1_PCOut, p1_outBusC, p1_outBusD, p1_signExtModuleOutput, p1_RdNeeche, p1_regWriteNeeche, p1_insFetchOut,p1_insFetchOutNeeche, p1_memWrite, p1_memRead, p1_haltmux);
        mux3to1 threetoonemux(p1_outBusA,p1_outBusB,p1_outBusB,p1_aluSrcA, teeninputwalamux);
        mux2to1_16 regTempMux (p1_outBusB, p1_sextOut, p1_aluSrcB, aluTempB);
        //This is Forwarding Unit
        forwardingUnit thisisforwarding(p1_insFetchOut[5:3],p1_insFetchOut[5:3],p2_Rd,p3_Rd,p2_regWrite,p3_regWrite,p3_insFetchOutNeeche[15:11],p3_insFetchOutNeeche[2:0],fmuxsourcea);  
        mux4to1 for_fmuxsourcea(teeninputwalamux,p2_aluKaOutput,p3_outBusA,{{8{Result2[7]}},Result2},fmuxsourcea,fout1);
       // mux3to1 for_fmuxsourceb(aluTempB,p2_outBusB,p3_outBusB,fmuxsourceb,fout2);
        ALU alu( fout1, aluTempB, p1_aluOp, p1_haltmux, AluKaOutput,flags);
                register1bit CauseRegister(clk,reset,1'b1,1'b1,flags[0],Cause);
                // This is the code for EPC register
                mux2to1_32 epcMux(p2_PC, PCResult, undefinedInst, epcMuxOut);
                register32bit EPC(clk,reset,flags[0] | undefinedInst,1'b1,epcMuxOut,epcVal);
        //This is the neeche waalla forward
        forwardUnitNeeche forwardneeche(p1_insFetchOutNeeche[15:11],p1_insFetchOutNeeche[2:0],p2_instFetchOut[2:0],p2_regWrite,p3_insFetchOutNeeche[15:11],p3_insFetchOutNeeche[2:0],p2_insFetchOutNeeche[15:11],p2_insFetchOutNeeche[2:0],neecheForwardOutput);
        mux3to1 regTempMuxpart2 (p1_outBusD,p2_aluKaOutput,{{8{Result2[7]}},Result2},neecheForwardOutput,forwardedStore);
        adderModule execAdder(p1_outBusC, p1_signExtModuleOutput, execAdderKaOutput);
        EX_MEM ex_mem(clk, reset, 1'b1, 1'b1, p1_PCOut, AluKaOutput, p1_Rd, p1_regWrite, forwardedStore,
                                  execAdderKaOutput, p1_memRead, p1_memWrite, p1_RdNeeche, p1_regWriteNeeche, p1_outBusA, p1_outBusB, p1_insFetchOut, p1_insFetchOutNeeche,
                                  p2_aluKaOutput, p2_Rd, p2_regWrite, p2_outBusD, p2_execAdderKaOutput,
                                  p2_memRead, p2_memWrite, p2_RdNeeche, p2_regWriteNeeche,p2_outBusA,p2_outBusB,p2_instFetchOut,p2_insFetchOutNeeche, p2_PC);
                                                                 
        dataMemActual dataMem(clk, reset,p2_memWrite,p2_memRead, p2_execAdderKaOutput, p2_outBusD[7:0] ,dataMemOut );
        MEM_WB mem_wb(clk, reset,1'b1, 1'b1, p2_aluKaOutput, p2_Rd, p2_regWrite,
                                   dataMemOut, p2_regWriteNeeche, p2_RdNeeche, p2_outBusA, p2_outBusB, p2_insFetchOutNeeche, Result, p3_Rd, p3_regWrite, Result2, p3_regWriteNeeche,p3_RdNeeche, p3_outBusA, p3_outBusB, p3_insFetchOutNeeche );
endmodule
 
 
module dataMem(input clk,input reset,input regWrite,input decOut1b,input [7:0]init, input [7:0] d_in, output [7:0] q_out);
        D_ff_Mem dMem0 (clk,reset,regWrite,decOut1b,init[0],d_in[0],q_out[0]);
        D_ff_Mem dMem1 (clk,reset,regWrite,decOut1b,init[1],d_in[1],q_out[1]);
        D_ff_Mem dMem2 (clk,reset,regWrite,decOut1b,init[2],d_in[2],q_out[2]);
        D_ff_Mem dMem3 (clk,reset,regWrite,decOut1b,init[3],d_in[3],q_out[3]);
       
        D_ff_Mem dMem4 (clk,reset,regWrite,decOut1b,init[4],d_in[4],q_out[4]);
        D_ff_Mem dMem5 (clk,reset,regWrite,decOut1b,init[5],d_in[5],q_out[5]);
        D_ff_Mem dMem6 (clk,reset,regWrite,decOut1b,init[6],d_in[6],q_out[6]);
        D_ff_Mem dMem7 (clk,reset,regWrite,decOut1b,init[7],d_in[7],q_out[7]);
       
endmodule
 
module dataMemActual(input clk, input reset,input memWrite,input memRead, input [15:0] address, input [7:0] dataIn,output [7:0] memOut );
        wire [7:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,
                                        Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15;
        wire [15:0] decOut;
       
        decoder4to16 dec0( address[3:0], decOut);
       
        register_Mem_8 r0(clk,reset,memWrite,decOut[0],8'b0000_0110,dataIn,Qout0);
        register_Mem_8 r1(clk,reset,memWrite,decOut[1],8'b0000_0000,dataIn,Qout1);
        register_Mem_8 r2(clk,reset,memWrite,decOut[2],8'b0000_0000,dataIn,Qout2);
        register_Mem_8 r3(clk,reset,memWrite,decOut[3],8'b0000_0000,dataIn,Qout3);
       
        register_Mem_8 r4(clk,reset,memWrite,decOut[4],8'b0000_0000,dataIn,Qout4);
        register_Mem_8 r5(clk,reset,memWrite,decOut[5],8'b0000_0000,dataIn,Qout5); //mflo $r9
        register_Mem_8 r6(clk,reset,memWrite,decOut[6],8'b0000_0000,dataIn,Qout6); //add $r10,$r5,$r5
        register_Mem_8 r7(clk,reset,memWrite,decOut[7],8'b0000_0000,dataIn,Qout7);  //addi $r4,$r0,4
       
        register_Mem_8 r8(clk,reset,memWrite,decOut[8],8'b0000_0000,dataIn,Qout8); //sw $r5,$r0(0)
        register_Mem_8 r9(clk,reset,memWrite,decOut[9],8'b0000_0000,dataIn,Qout9); //div $r8,$r2
        register_Mem_8 r10(clk,reset,memWrite,decOut[10],8'b0000_0000,dataIn,Qout10); //mfhi $r1
        register_Mem_8 r11(clk,reset,memWrite,decOut[11],8'b0000_0000,dataIn,Qout11); //mflo $r7
       
        register_Mem_8 r12(clk,reset,memWrite,decOut[12],8'b0000_0000,dataIn,Qout12);   //add $r0,$r0,$r0
        register_Mem_8 r13(clk,reset,memWrite,decOut[13],8'b0000_0000,dataIn,Qout13); //lw $r6,$r0(0)
        register_Mem_8 r14(clk,reset,memWrite,decOut[14],8'b0000_0000,dataIn,Qout14); //add $r5,$r5,$r1
        register_Mem_8 r15(clk,reset,memWrite,decOut[15],8'b0000_0000,dataIn,Qout15); //add $r3,$r2,$r1
       
        mux16to1_8 mMem (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,address[3:0],memOut);
endmodule
 
module processorKiTestBench;
        reg clk;
        reg reset;
        wire [15:0] Result;
        wire [7:0] Result2;
        wire [31:0] memoryOutput;
        reg pcwrite;
        reg ifidpipeline;
        reg undefinedInst;
		reg [31:0] instruction;
		wire writeReady;
		reg [63:0] dataLine;
		wire [7:0] dataOut;
		wire[63:0] dataTemp;
        processor uut (.clk(clk), .reset(reset), .pcwrite(pcwrite),.ifidpipeline(ifidpipeline),.undefinedInst(undefinedInst),.instruction(instruction), .dataLine(dataLine), .dataOut(dataOut), .writeReady(writeReady),.dataTemp(dataTemp),.Result(Result), . Result2(Result2), .memoryOutput(memoryOutput));
 
        always
        #5 clk=~clk;
       
        initial
        begin
                clk=0; reset=1; pcwrite=1; ifidpipeline=1; undefinedInst = 0;
                #10  reset=0; instruction = 32'h00000080; dataLine = 64'h61041e96686d1c44;
                #140 $finish;
        end
endmodule