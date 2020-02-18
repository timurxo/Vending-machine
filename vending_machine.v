`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2020 01:02:44 AM
// Design Name: 
// Module Name: vending_machine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vending_machine(

    input clk, reset,
    input [7:0] coin,
    output reg [7:0] change, 
    output reg [7:0] total, 
    output reg [7:0] state,
  //  input coke
    output reg coke
    );
    
    parameter nickel = 8'd05;
    parameter dime = 8'd10;
    parameter quarter = 8'd25;
    parameter half_dollar = 8'd50;
    parameter dollar = 8'd100;
    
    parameter state_0 = 8'd0;
    parameter state_5 = 8'd1;
    parameter state_10 = 8'd2;
    parameter state_15 = 8'd3;
    parameter state_20 = 8'd4;
    parameter state_25 = 8'd5;
    parameter state_30 = 8'd6;
    parameter state_35 = 8'd7;
    parameter state_40 = 8'd8;
    parameter state_45 = 8'd9;
    
    parameter state_50 = 8'd10;
    parameter state_55 = 8'd11;
    parameter state_60 = 8'd12;
    parameter state_65 = 8'd13;
    parameter state_70 = 8'd14;
    parameter state_75 = 8'd15;
    parameter state_80 = 8'd16;
    parameter state_85 = 8'd17;
    parameter state_90 = 8'd18;
    
    parameter state_95 = 8'd19;
    parameter state_100 = 8'd20;
    parameter state_105 = 8'd21;
    parameter state_110 = 8'd22;
    parameter state_115 = 8'd23;
    parameter state_120 = 8'd24;
    parameter state_125 = 8'd25;
    parameter state_130 = 8'd26;
    parameter state_135 = 8'd27;
    
    parameter state_140 = 8'd28;
    parameter state_145 = 8'd29;
    parameter state_150 = 8'd30;
 
    
   // reg [7:0] state;
    reg [7:0] next_state;
//    reg coke;
//    wire [7:0] coin;
	
	
	//reg [7:0] total = 0;
	
    always @(*)
    begin
        
      //  total = 0;
        next_state = 0;
        // coke = 0;
        
        case(state)
       
        state_0: case(coin)
        
            nickel: next_state = state_5;   // 5
            dime:   next_state = state_10;  // 10
            quarter: next_state = state_25; // 25
            half_dollar: next_state = state_50; // 50
            dollar: next_state = state_100; // 100
            default: next_state = state_0;
            
            endcase
        
        state_5: case(coin)
        
            nickel: next_state = state_10;
            dime:   next_state = state_15;
            quarter: next_state = state_30;
            half_dollar: next_state = state_55;
            dollar: next_state = state_105;
            default: next_state = state_5;
            
            endcase
        
        state_10: case(coin)
        
            nickel: next_state = state_15;   
            dime:   next_state = state_20;
            quarter: next_state = state_35;
            half_dollar: next_state = state_60;
            dollar: next_state = state_110;
            default: next_state = state_10;
            
            endcase
         
        state_15: case(coin)
        
            nickel: next_state = state_20;
            dime:   next_state = state_25;
            quarter: next_state = state_40;
            half_dollar: next_state = state_65;
            dollar: next_state = state_115;
            default: next_state = state_15;
            
            endcase
            
        state_20: case(coin)
        
            nickel: next_state = state_25;   // 5
            dime:   next_state = state_30;  // 10
            quarter: next_state = state_45; // 25
            half_dollar: next_state = state_70; // 50
            dollar: next_state = state_120; // 100
            default: next_state = state_20;
            
            endcase
            
        state_25: case(coin)
        
            nickel: next_state = state_30;
            dime:   next_state = state_35;  // 10
            quarter: next_state = state_50; // 25
            half_dollar: next_state = state_75; // 50
            dollar: next_state = state_125; // 100
            default: next_state = state_25;
            
            endcase
            
        state_30: case(coin)
        
            nickel: next_state = state_35;
            dime:   next_state = state_40;  // 10
            quarter: next_state = state_55; // 25
            half_dollar: next_state = state_80; // 50
            dollar: next_state = state_130; // 100
            default: next_state = state_30;
            
            endcase
          
        state_35: case(coin)
        
            nickel: next_state = state_40;
            dime:   next_state = state_45;  // 10
            quarter: next_state = state_60; // 25
            half_dollar: next_state = state_85; // 50
            dollar: next_state = state_135; // 100
            default: next_state = state_35;
            
            endcase
            
        state_40: case(coin)
        
            nickel: next_state = state_45;
            dime:   next_state = state_50;  // 10
            quarter: next_state = state_65; // 25
            half_dollar: next_state = state_90; // 50
            dollar: next_state = state_140; // 100
            default: next_state = state_40;
            
            endcase
            
        state_45: case(coin)
        
            nickel: next_state = state_50;
            dime:   next_state = state_55;  // 10
            quarter: next_state = state_70; // 25
            half_dollar: next_state = state_95; // 50
            dollar: next_state = state_145; // 100
            default: next_state = state_45;
            
            endcase
            
        state_50: case(coin)
        
            nickel: next_state = state_55;
            dime:   next_state = state_60;  // 10
            quarter: next_state = state_75; // 25
            half_dollar: next_state = state_100; // 50
            dollar: next_state = state_150; // 100 
            default: next_state = state_50;
            
            endcase
        
// ----------------------------------------

        state_55: case(coin)
        
            nickel: next_state = state_60;
            dime:   next_state = state_65;  // 10
            quarter: next_state = state_80; // 25
            half_dollar: next_state = state_105; // 50
            dollar: next_state = state_150; // 100 ---------------- change 5
            default: next_state = state_55;
            
            endcase
        
        state_60: case(coin)
        
            nickel: next_state = state_65;
            dime:   next_state = state_70;  // 10
            quarter: next_state = state_85; // 25
            half_dollar: next_state = state_110; // 50
            dollar: next_state = state_150; // 100 ------------------- change 10
            default: next_state = state_60;
            
            endcase
        
        state_65: case(coin)
        
            nickel: next_state = state_70;   
            dime:   next_state = state_75;  // 10
            quarter: next_state = state_90; // 25
            half_dollar: next_state = state_115; // 50
            dollar: next_state = state_150; // 100 ------------------- change 15
            default: next_state = state_65;
            
            endcase
         
        state_70: case(coin)
        
            nickel: next_state = state_75;
            dime:   next_state = state_80;  // 10
            quarter: next_state = state_95; // 25
            half_dollar: next_state = state_120; // 50
            dollar: next_state = state_150; // 100 ------------------- change 20
            default: next_state = state_70;
            
            endcase
            
        state_75: case(coin)
        
            nickel: next_state = state_80;
            dime:   next_state = state_85;  // 10
            quarter: next_state = state_100; // 25
            half_dollar: next_state = state_125; // 50
            dollar: next_state = state_150; // 100 ------------------- change 25
            default: next_state = state_75;
            
            endcase
            
        state_80: case(coin)
        
            nickel: next_state = state_85;
            dime:   next_state = state_90;  // 10
            quarter: next_state = state_105; // 25
            half_dollar: next_state = state_130; // 50
            dollar: next_state = state_150; // 100 ------------------- change 30
            default: next_state = state_80;
            
            endcase
            
        state_85: case(coin)
        
            nickel: next_state = state_90;
            dime:   next_state = state_95;  // 10
            quarter: next_state = state_110; // 25
            half_dollar: next_state = state_135; // 50
            dollar: next_state = state_150; // 100 ------------------- change 35
            default: next_state = state_85;
            
            endcase
          
        state_90: case(coin)
        
            nickel: next_state = state_95;
            dime:   next_state = state_100;  // 10
            quarter: next_state = state_115; // 25
            half_dollar: next_state = state_140; // 50
            dollar: next_state = state_150; // 100 ------------------- change 40
            default: next_state = state_90;
            
            endcase
            
        state_95: case(coin)
        
            nickel: next_state = state_100;
            dime:   next_state = state_105;  // 10
            quarter: next_state = state_120; // 25
            half_dollar: next_state = state_145; // 50
            dollar: next_state = state_150; // 100 ------------------- change 45
            default: next_state = state_95;
            
            endcase
            
        state_100: case(coin)
        
            nickel: next_state = state_105;
            dime:   next_state = state_110;  // 10
            quarter: next_state = state_125; // 25
            half_dollar: next_state = state_150; // 50
            dollar: next_state = state_150; // 100 ------------------- change 50
            default: next_state = state_100;
            
            endcase
            
        state_105: case(coin)
        
            nickel: next_state = state_110;
            dime:   next_state = state_115;  // 10
            quarter: next_state = state_130; // 25
            half_dollar: next_state = state_150; // 50 --------------- change 5
            dollar: next_state = state_150; // 100 ------------------- change 55
            default: next_state = state_105;
            
            endcase
            
//---------------------------------------------------
        state_110: case(coin)
        
            nickel: next_state = state_115;
            dime:   next_state = state_120;  // 10
            quarter: next_state = state_135; // 25
            half_dollar: next_state = state_150; // 50 --------------- change 10
            dollar: next_state = state_150; // 100 ------------------- change 60
            default: next_state = state_110;
            
            endcase
        
        state_115: case(coin)
        
            nickel: next_state = state_120;
            dime:   next_state = state_125;  // 10
            quarter: next_state = state_140; // 25
            half_dollar: next_state = state_150; // 50 --------------- change 15
            dollar: next_state = state_150; // 100 ------------------- change 65
            default: next_state = state_115;
            
            endcase
        
        state_120: case(coin)
        
            nickel: next_state = state_125;   
            dime:   next_state = state_130;  // 10
            quarter: next_state = state_145; // 25
            half_dollar: next_state = state_150; // 50 --------------- change 20
            dollar: next_state = state_150; // 100 ------------------- change 70
            default: next_state = state_120;
            
            endcase
         
        state_125: case(coin)
        
            nickel: next_state = state_130;
            dime:   next_state = state_135;  // 10
            quarter: next_state = state_150; // 25
            half_dollar: next_state = state_150; // 50 --------------- change 25
            dollar: next_state = state_150; // 100 ------------------- change 75
            default: next_state = state_125;
            
            endcase
            
        state_130: case(coin)
        
            nickel: next_state = state_135;
            dime:   next_state = state_140;  // 10
            quarter: next_state = state_150; // 25  ------------------ change 5
            half_dollar: next_state = state_150; // 50 --------------- change 30
            dollar: next_state = state_150; // 100 ------------------- change 80
            default: next_state = state_130;
            
            endcase
            
        state_135: case(coin)
        
            nickel: next_state = state_140;
            dime:   next_state = state_145;  // 10
            quarter: next_state = state_150; // 25  ------------------ change 10
            half_dollar: next_state = state_150; // 50 --------------- change 35
            dollar: next_state = state_150; // 100 ------------------- change 85
            default: next_state = state_135;
            
            endcase
            
        state_140: case(coin)
        
            nickel: next_state = state_145;
            dime:   next_state = state_150;  // 10
            quarter: next_state = state_150; // 25  ------------------ change 15
            half_dollar: next_state = state_150; // 50 --------------- change 40
            dollar: next_state = state_150; // 100 ------------------- change 90
            default: next_state = state_140;
            
            endcase
          
        state_145: case(coin)
        
            nickel: next_state = state_150;
            dime:   next_state = state_150;  // 10  ------------------ change 5
            quarter: next_state = state_150; // 25  ------------------ change 20
            half_dollar: next_state = state_150; // 50 --------------- change 45
            dollar: next_state = state_150; // 100 ------------------- change 95
            default: next_state = state_145;
            
            endcase
                     
            
        state_150: 
        
            next_state = state_0;

            default: next_state = state_0;
            
            endcase
        
 
     end 
  
     
     
    // =========================================================================================================================== 
    // =========================================================================================================================== 
    // =========================================================================================================================== 
     
     always @(posedge clk)
	begin
		if(reset)
			begin
				state <= state_0;	
				coke <= 0;	
				change <= 0;				
			end
		else
			state <= next_state;				
	
	
	
     case(state) 
        state_0:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
        
        state_5:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
            
        state_10:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
            
        state_15:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
            
        state_20:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
        
        state_25:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
            
        state_30:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
            
        state_35:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
            
        state_40:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
        
        state_45:
            begin
                coke = 1'b0;
                change = 4'd00;
            end
            
        state_50:
            begin           
            coke = 0;
            change = 0;
//                if (coin == dollar)
//                    coke = 1'b1;
//                else
//                    coke = 1'b0;
                    
                
            end
   // -----------------------------------------------------
       
        state_55:
            begin
             coke = 0;
                if (coin == dollar)
                    begin
               //     coke = 1'b1;
                    change = 5;
                    end
                else
                    begin
                //    coke = 1'b0;
                    change = 0;
                    end
            end
        
        state_60:
             begin
              coke = 0;
                if (coin == dollar)
                    begin
                //    coke = 1'b1;
                    change = 10;
                    end
                else
                    begin
                  //  coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_65:
             begin
              coke = 0;
                if (coin == dollar)
                    begin
                //    coke = 1'b1;
                    change = 15;
                    end
                else
                    begin
                //    coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_70:
             begin
              coke = 0;
                if (coin == dollar)
                    begin
                //    coke = 1'b1;
                    change = 20; //dime + dime;
                    end
                else
                    begin
               //     coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_75:
             begin
              coke = 0;
                if (coin == dollar)
                    begin
                   // coke = 1'b1;
                    change = 25; //quarter;
                    end
                else
                    begin
                //    coke = 1'b0;
                    change = 0;
                    end
            end
        
        state_80:
             begin
              coke = 0;
                if (coin == dollar)
                    begin
                  //  coke = 1'b1;
                    change = 30; //nickel + quarter;
                    end
                else
                    begin
                 //   coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_85:
             begin
              coke = 0;
                if (coin == dollar)
                    begin
                  //  coke = 1'b1;
                    change = 35; //dime + quarter;
                    end
                else
                    begin
                  //  coke = 1'b0;
                    change = 0;
                    end
            end

            
        state_90:
             begin
              coke = 0;
                if (coin == dollar)
                    begin
                  //  coke = 1'b1;
                    change = 40; //half_dollar - dime;
                    end
                else
                    begin
                //    coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_95:
             begin
             coke = 0;
                if (coin == dollar)
                    begin
                  //  coke = 1'b1;
                    change = 45; //quarter + dime + dime;
                    end
                else
                    begin
                 //   coke = 1'b0;
                    change = 0;
                    end
            end
        
        state_100:
             begin
             coke = 0;
                if (coin == dollar)
                    begin
               //     coke = 1'b1;
                    change = 50;
                    end
                
                else
                    begin
               //     coke = 1'b0;
                    change = 0;
                    end
            end
            
  // -------------------------------------------------------------
            
        state_105:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                 //   coke = 1'b1;
                    change =55; // half_dollar - nickel;
                    end
                else if (coin == half_dollar)
                    begin
                 //   coke = 1'b1;
                    change = 5;
                    end
                else
                    begin
                 //   coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_110:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                //    coke = 1'b1;
                    change = 60;
                    end
                else if (coin == half_dollar)
                    begin
                  //  coke = 1'b1;
                    change = 10; //dime;
                    end
                else
                    begin
                 //   coke = 1'b0;
                    change = 0;
                    end
            end
        
        state_115:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                //    coke = 1'b1;
                    change = 65; //half_dollar + nickel + dime;
                    end
                else if (coin == half_dollar)
                    begin
                  //  coke = 1'b1;
                    change = 15; //nickel + dime;
                    end
                else
                    begin
                 //   coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_120:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                   // coke = 1'b1;
                    change = 70; //half_dollar + dime + dime;
                    end
                else if (coin == half_dollar)
                    begin
                 //   coke = 1'b1;
                    change = 20; //dime + dime;
                    end
                else
                    begin
                   // coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_125:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                 //   coke = 1'b1;
                    change = 75; //half_dollar + quarter;
                    end
                else if (coin == half_dollar)
                    begin
                //    coke = 1'b1;
                    change = 25;
                    end

                else
                    begin
                  //  coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_130:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                  //  coke = 1'b1;
                    change = 80; //half_dollar + quarter + nickel;
                    end
                else if (coin == half_dollar)
                    begin
                  //  coke = 1'b1;
                    change = 30; //quarter + nickel;
                    end
                else if (coin == quarter)
                    begin
                //    coke = 1'b1;
                    change = 5; //nickel;
                    end
                else
                    begin
                 //   coke = 1'b0;
                    change = 0;
                    end
            end
        
        state_135:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                  //  coke = 1'b1;
                    change = 85; //half_dollar + quarter + dime;
                    end
                else if (coin == half_dollar)
                    begin
                //    coke = 1'b1;
                    change = 35; //quarter + dime;
                    end
                else if (coin == quarter)
                    begin
                  //  coke = 1'b1;
                    change = 10; // dime;
                    end
                else
                    begin
                  //  coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_140:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                   // coke = 1'b1;
                    change = 90; // half_dollar + quarter + dime + nickel;
                    end
                else if (coin == half_dollar)
                    begin
                 //   coke = 1'b1;
                    change = 40; //quarter + dime + nickel;
                    end
                else if (coin == quarter)
                    begin
                 //   coke = 1'b1;
                    change = 15; //dime + nickel;
                    end

                else
                    begin
                  //  coke = 1'b0;
                    change = 0;
                    end
            end
            
        state_145:
            begin
            coke = 0;
                if (coin == dollar)
                    begin
                //    coke = 1'b1;
                    change = 95; // dollar - nickel;
                    end
                else if (coin == half_dollar)
                    begin
                   // coke = 1'b1;
                    change = 45; //half_dollar - nickel;
                    end
                else if (coin == quarter)
                    begin
                  //  coke = 1'b1;
                    change = 20; //dime + dime;
                    end
                else if (coin == dime)
                    begin
                 //   coke = 1'b1;
                    change = 5; //nickel;
                    end
                else
                    begin
                 //   coke = 1'b0;
                    change = 0;
                    end
            end

        state_150:
            begin
                coke <= 1;
                change <= 0;
            end
        default: state = state_0;
      endcase
      
      end
      
      
     endmodule
    
  
     
   
