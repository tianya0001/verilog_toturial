



module iic(
    input wire sys_clk,     // 系统时钟
    input wire sys_rst,     // 系统复位

    input wire[3:0] iic_addr,   // IIC寄存器地址
    input wire iic_wr,          // IIC寄存器读写选择
    output reg iic_event,       // IIC事件输出
    input wire[32:0] iic_write, // IIC寄存器写接口
    output reg[31:0] iic_read   // IIC寄存器读接口
);

    reg [31:0] iic_regs[15:0];  // IIC寄存器

    




endmodule //iic







