clear;
clc;
% parameter
No_neuron_in = 3;
No_neuron_out = 3;
No_sample = 30;
No_interaction = 10;
dwidth = 16;
add_d = ceil(log2(No_sample * No_neuron_in));
add_s = ceil(log2(No_sample));

in_arr = round(rand(No_neuron_in, No_sample) * 256);
out_arr = round(rand(No_neuron_out, No_sample) * 256);

fileOut = sprintf('./output/tb_input_data.v');
fout = fopen(fileOut, 'w');

fprintf(fout, 'module tb_input_data\r\n');
fprintf(fout, '    #(\r\n');
fprintf(fout, '        parameter INT_MAX = 160000,\r\n');
fprintf(fout, '        parameter TRAIN_MAX = 1000\r\n');
fprintf(fout, '    )\r\n');
fprintf(fout, '    (\r\n');
fprintf(fout, '        input wire clock, reset,\r\n');
fprintf(fout, '        input wire get_data, get_sup_val,\r\n');
fprintf(fout, '        output reg [%d:0] data,\r\n', dwidth-1);
fprintf(fout, '        output reg [%d:0] sup_val,\r\n', dwidth*No_neuron_out-1);
fprintf(fout, '        output wire [log2(INT_MAX+1)-1:0] no_interactions,\r\n');
fprintf(fout, '        output wire [log2(TRAIN_MAX+1)-1:0] no_training_samples\r\n');
fprintf(fout, '    );\r\n');
fprintf(fout, '    \r\n');
fprintf(fout, '    function integer log2;\r\n');
fprintf(fout, '    input integer n;\r\n');
fprintf(fout, '    \r\n');
fprintf(fout, '        for ( log2 = 0; n > 0; n = n >> 1)\r\n');
fprintf(fout, '            log2 = log2 + 1;\r\n');
fprintf(fout, '    \r\n');
fprintf(fout, '    endfunction\r\n');
fprintf(fout, '    \r\n');
fprintf(fout, '    assign no_interactions = %d;\r\n', No_interaction);
fprintf(fout, '    assign no_training_samples = %d;\r\n', No_sample);
fprintf(fout, '    \r\n');
fprintf(fout, '    parameter NO_SAMPLE = %d;\r\n', No_sample);
fprintf(fout, '    parameter NO_INPUT = %d;\r\n', No_neuron_in);
fprintf(fout, '    \r\n');
fprintf(fout, '    reg [%d:0] add_d;\r\n', add_d-1);
fprintf(fout, '    wire [%d:0] add_d_next;\r\n', add_d-1);
fprintf(fout, '    reg [%d:0] add_s;\r\n',  add_s-1);
fprintf(fout, '    wire [%d:0] add_s_next;\r\n', add_s-1);
fprintf(fout, '    reg [%d:0] mem_s [0:%d];\r\n', dwidth-1, 2^add_d-1);
fprintf(fout, '    reg [%d:0] mem_t1 [0:%d];\r\n', dwidth-1, 2^add_s-1);
fprintf(fout, '    reg [%d:0] mem_t2 [0:%d];\r\n', dwidth-1, 2^add_s-1);
fprintf(fout, '    reg [%d:0] mem_t3 [0:%d];\r\n', dwidth-1, 2^add_s-1);
fprintf(fout, '    \r\n');
fprintf(fout, '    initial\r\n');
fprintf(fout, '    begin\r\n');

for i = 1 : No_sample
    for j = 1 : No_neuron_in
        index = (i - 1) * No_neuron_in + j - 1;
fprintf(fout, '        mem_s[%d] = %d''d%d;\r\n', index, dwidth, in_arr(j,i));
    end
    for j = 1 : No_neuron_out
        index = (i - 1) * No_neuron_out + j - 1;
fprintf(fout, '        mem_t%d[%d] = %d''d%d;\r\n', j, i - 1, dwidth, out_arr(j,i));
    end
fprintf(fout, '    \r\n');
end
fprintf(fout, '    end\r\n');

fprintf(fout, '    \r\n');
fprintf(fout, '    assign add_d_next = add_d < NO_SAMPLE*NO_INPUT-1 ? add_d + 1''d1 : 1''d0;\r\n');
fprintf(fout, '    always @(posedge clock, negedge reset)\r\n');
fprintf(fout, '        if (!reset)\r\n');
fprintf(fout, '            add_d <= 1''b0;\r\n');
fprintf(fout, '        else if (get_data)\r\n');
fprintf(fout, '            add_d <= add_d_next;\r\n');
fprintf(fout, '    \r\n');
fprintf(fout, '    assign add_s_next = add_s < NO_SAMPLE-1 ? add_s + 1''d1 : 1''d0;\r\n');
fprintf(fout, '    always @(posedge clock, negedge reset)\r\n');
fprintf(fout, '        if (!reset)\r\n');
fprintf(fout, '            add_s <= 1''b0;\r\n');
fprintf(fout, '        else if (get_sup_val)\r\n');
fprintf(fout, '            add_s <= add_s_next;\r\n');
fprintf(fout, '    \r\n');
fprintf(fout, '    always @(posedge clock)\r\n');
fprintf(fout, '        data <= mem_s[add_d];\r\n');
fprintf(fout, '        \r\n');
fprintf(fout, '    always @(posedge clock)\r\n');
fprintf(fout, '        sup_val <= { mem_t3[add_s], mem_t2[add_s], mem_t1[add_s] };\r\n');
fprintf(fout, '    \r\n');
fprintf(fout, 'endmodule\r\n');

fclose(fout);