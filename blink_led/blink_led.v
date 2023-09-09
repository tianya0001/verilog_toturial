/**
*/


module blink_led(
    input wire sys_clk,
    input wire sys_rst,

    output reg[3:0] led
);
    
    initial begin
        led <= 4'b0001;
    end

    //define the time counter
    reg [32:0]      cnt = 0;
    parameter       SET_TIME = 32'd50_000_000;
    always@(posedge sys_clk or negedge sys_rst) begin
        if (sys_rst == 1'b0) begin
            cnt <= 32'd0;
            led <= 4'b0001;
        end
        else if (cnt == SET_TIME) begin
            cnt <= 32'd0;
            led <= {led[0], led[3:1]};
        end
        else begin
            cnt <= cnt + 1'd1;
        end
    end

endmodule //blink_led







