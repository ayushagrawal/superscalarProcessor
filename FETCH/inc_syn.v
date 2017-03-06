// megafunction wizard: %PARALLEL_ADD%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: parallel_add 

// ============================================================
// File Name: inc.v
// Megafunction Name(s):
// 			parallel_add
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.1.0 Build 196 10/24/2016 SJ Lite Edition
// ************************************************************


//Copyright (C) 2016  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Intel and sold by Intel or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.


//parallel_add DEVICE_FAMILY="Cyclone IV E" MSW_SUBTRACT="NO" PIPELINE=0 REPRESENTATION="UNSIGNED" RESULT_ALIGNMENT="LSB" SHIFT=0 SIZE=2 WIDTH=16 WIDTHR=16 data result
//VERSION_BEGIN 16.1 cbx_cycloneii 2016:10:24:15:04:16:SJ cbx_lpm_add_sub 2016:10:24:15:04:16:SJ cbx_mgl 2016:10:24:15:05:03:SJ cbx_nadder 2016:10:24:15:04:16:SJ cbx_padd 2016:10:24:15:04:16:SJ cbx_parallel_add 2016:10:24:15:04:16:SJ cbx_stratix 2016:10:24:15:04:16:SJ cbx_stratixii 2016:10:24:15:04:16:SJ cbx_util_mgl 2016:10:24:15:04:16:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



//adder DEVICE_FAMILY="Cyclone IV E" WIDTH=17 dataa datab result
//VERSION_BEGIN 16.1 cbx_mgl 2016:10:24:15:05:03:SJ cbx_stratixii 2016:10:24:15:04:16:SJ cbx_util_mgl 2016:10:24:15:04:16:SJ  VERSION_END

//synthesis_resources = lut 17 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  inc_par_add
	( 
	data,
	result) /* synthesis synthesis_clearbox=1 */;
	input   [31:0]  data;
	output   [15:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [31:0]  data;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	[16:0]	wire_add1_result;
	wire  [16:0]   wire_sft2a_in;
	wire  [16:0]   wire_sft2a_out;
	wire  [16:0]   wire_sft3a_in;
	wire  [16:0]   wire_sft3a_out;
	wire  [16:0]   wire_sft4a_in;
	wire  [16:0]   wire_sft4a_out;
	wire  [16:0]  w104w;
	wire  w84w;

	assign
		wire_add1_result = wire_sft2a_out + wire_sft3a_out;
	soft   sft2a_0
	( 
	.in(wire_sft2a_in[0:0]),
	.out(wire_sft2a_out[0:0]));
	soft   sft2a_1
	( 
	.in(wire_sft2a_in[1:1]),
	.out(wire_sft2a_out[1:1]));
	soft   sft2a_2
	( 
	.in(wire_sft2a_in[2:2]),
	.out(wire_sft2a_out[2:2]));
	soft   sft2a_3
	( 
	.in(wire_sft2a_in[3:3]),
	.out(wire_sft2a_out[3:3]));
	soft   sft2a_4
	( 
	.in(wire_sft2a_in[4:4]),
	.out(wire_sft2a_out[4:4]));
	soft   sft2a_5
	( 
	.in(wire_sft2a_in[5:5]),
	.out(wire_sft2a_out[5:5]));
	soft   sft2a_6
	( 
	.in(wire_sft2a_in[6:6]),
	.out(wire_sft2a_out[6:6]));
	soft   sft2a_7
	( 
	.in(wire_sft2a_in[7:7]),
	.out(wire_sft2a_out[7:7]));
	soft   sft2a_8
	( 
	.in(wire_sft2a_in[8:8]),
	.out(wire_sft2a_out[8:8]));
	soft   sft2a_9
	( 
	.in(wire_sft2a_in[9:9]),
	.out(wire_sft2a_out[9:9]));
	soft   sft2a_10
	( 
	.in(wire_sft2a_in[10:10]),
	.out(wire_sft2a_out[10:10]));
	soft   sft2a_11
	( 
	.in(wire_sft2a_in[11:11]),
	.out(wire_sft2a_out[11:11]));
	soft   sft2a_12
	( 
	.in(wire_sft2a_in[12:12]),
	.out(wire_sft2a_out[12:12]));
	soft   sft2a_13
	( 
	.in(wire_sft2a_in[13:13]),
	.out(wire_sft2a_out[13:13]));
	soft   sft2a_14
	( 
	.in(wire_sft2a_in[14:14]),
	.out(wire_sft2a_out[14:14]));
	soft   sft2a_15
	( 
	.in(wire_sft2a_in[15:15]),
	.out(wire_sft2a_out[15:15]));
	soft   sft2a_16
	( 
	.in(wire_sft2a_in[16:16]),
	.out(wire_sft2a_out[16:16]));
	assign
		wire_sft2a_in = {w84w, {data[15], {data[14], {data[13], {data[12], {data[11], {data[10], {data[9], {data[8], {data[7], {data[6], {data[5], {data[4], {data[3], {data[2], {data[1:0]}}}}}}}}}}}}}}}};
	soft   sft3a_0
	( 
	.in(wire_sft3a_in[0:0]),
	.out(wire_sft3a_out[0:0]));
	soft   sft3a_1
	( 
	.in(wire_sft3a_in[1:1]),
	.out(wire_sft3a_out[1:1]));
	soft   sft3a_2
	( 
	.in(wire_sft3a_in[2:2]),
	.out(wire_sft3a_out[2:2]));
	soft   sft3a_3
	( 
	.in(wire_sft3a_in[3:3]),
	.out(wire_sft3a_out[3:3]));
	soft   sft3a_4
	( 
	.in(wire_sft3a_in[4:4]),
	.out(wire_sft3a_out[4:4]));
	soft   sft3a_5
	( 
	.in(wire_sft3a_in[5:5]),
	.out(wire_sft3a_out[5:5]));
	soft   sft3a_6
	( 
	.in(wire_sft3a_in[6:6]),
	.out(wire_sft3a_out[6:6]));
	soft   sft3a_7
	( 
	.in(wire_sft3a_in[7:7]),
	.out(wire_sft3a_out[7:7]));
	soft   sft3a_8
	( 
	.in(wire_sft3a_in[8:8]),
	.out(wire_sft3a_out[8:8]));
	soft   sft3a_9
	( 
	.in(wire_sft3a_in[9:9]),
	.out(wire_sft3a_out[9:9]));
	soft   sft3a_10
	( 
	.in(wire_sft3a_in[10:10]),
	.out(wire_sft3a_out[10:10]));
	soft   sft3a_11
	( 
	.in(wire_sft3a_in[11:11]),
	.out(wire_sft3a_out[11:11]));
	soft   sft3a_12
	( 
	.in(wire_sft3a_in[12:12]),
	.out(wire_sft3a_out[12:12]));
	soft   sft3a_13
	( 
	.in(wire_sft3a_in[13:13]),
	.out(wire_sft3a_out[13:13]));
	soft   sft3a_14
	( 
	.in(wire_sft3a_in[14:14]),
	.out(wire_sft3a_out[14:14]));
	soft   sft3a_15
	( 
	.in(wire_sft3a_in[15:15]),
	.out(wire_sft3a_out[15:15]));
	soft   sft3a_16
	( 
	.in(wire_sft3a_in[16:16]),
	.out(wire_sft3a_out[16:16]));
	assign
		wire_sft3a_in = {w84w, {data[31], {data[30], {data[29], {data[28], {data[27], {data[26], {data[25], {data[24], {data[23], {data[22], {data[21], {data[20], {data[19], {data[18], {data[17:16]}}}}}}}}}}}}}}}};
	soft   sft4a_0
	( 
	.in(wire_sft4a_in[0:0]),
	.out(wire_sft4a_out[0:0]));
	soft   sft4a_1
	( 
	.in(wire_sft4a_in[1:1]),
	.out(wire_sft4a_out[1:1]));
	soft   sft4a_2
	( 
	.in(wire_sft4a_in[2:2]),
	.out(wire_sft4a_out[2:2]));
	soft   sft4a_3
	( 
	.in(wire_sft4a_in[3:3]),
	.out(wire_sft4a_out[3:3]));
	soft   sft4a_4
	( 
	.in(wire_sft4a_in[4:4]),
	.out(wire_sft4a_out[4:4]));
	soft   sft4a_5
	( 
	.in(wire_sft4a_in[5:5]),
	.out(wire_sft4a_out[5:5]));
	soft   sft4a_6
	( 
	.in(wire_sft4a_in[6:6]),
	.out(wire_sft4a_out[6:6]));
	soft   sft4a_7
	( 
	.in(wire_sft4a_in[7:7]),
	.out(wire_sft4a_out[7:7]));
	soft   sft4a_8
	( 
	.in(wire_sft4a_in[8:8]),
	.out(wire_sft4a_out[8:8]));
	soft   sft4a_9
	( 
	.in(wire_sft4a_in[9:9]),
	.out(wire_sft4a_out[9:9]));
	soft   sft4a_10
	( 
	.in(wire_sft4a_in[10:10]),
	.out(wire_sft4a_out[10:10]));
	soft   sft4a_11
	( 
	.in(wire_sft4a_in[11:11]),
	.out(wire_sft4a_out[11:11]));
	soft   sft4a_12
	( 
	.in(wire_sft4a_in[12:12]),
	.out(wire_sft4a_out[12:12]));
	soft   sft4a_13
	( 
	.in(wire_sft4a_in[13:13]),
	.out(wire_sft4a_out[13:13]));
	soft   sft4a_14
	( 
	.in(wire_sft4a_in[14:14]),
	.out(wire_sft4a_out[14:14]));
	soft   sft4a_15
	( 
	.in(wire_sft4a_in[15:15]),
	.out(wire_sft4a_out[15:15]));
	soft   sft4a_16
	( 
	.in(wire_sft4a_in[16:16]),
	.out(wire_sft4a_out[16:16]));
	assign
		wire_sft4a_in = wire_add1_result;
	assign
		result = w104w[15:0],
		w104w = {wire_sft4a_out[16:15], wire_sft4a_out[14:13], wire_sft4a_out[12:11], wire_sft4a_out[10:9], wire_sft4a_out[8:7], wire_sft4a_out[6:5], wire_sft4a_out[4:3], wire_sft4a_out[2:1], wire_sft4a_out[0]},
		w84w = 1'b0;
endmodule //inc_par_add
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module inc (
	data0x,
	data1x,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	[15:0]  data0x;
	input	[15:0]  data1x;
	output	[15:0]  result;

	wire [15:0] sub_wire3;
	wire [15:0] sub_wire2 = data0x[15:0];
	wire [15:0] sub_wire0 = data1x[15:0];
	wire [31:0] sub_wire1 = {sub_wire2, sub_wire0};
	wire [15:0] result = sub_wire3[15:0];

	inc_par_add	inc_par_add_component (
				.data (sub_wire1),
				.result (sub_wire3));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: MSW_SUBTRACT STRING "NO"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "0"
// Retrieval info: CONSTANT: REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: RESULT_ALIGNMENT STRING "LSB"
// Retrieval info: CONSTANT: SHIFT NUMERIC "0"
// Retrieval info: CONSTANT: SIZE NUMERIC "2"
// Retrieval info: CONSTANT: WIDTH NUMERIC "16"
// Retrieval info: CONSTANT: WIDTHR NUMERIC "16"
// Retrieval info: USED_PORT: data0x 0 0 16 0 INPUT NODEFVAL "data0x[15..0]"
// Retrieval info: USED_PORT: data1x 0 0 16 0 INPUT NODEFVAL "data1x[15..0]"
// Retrieval info: USED_PORT: result 0 0 16 0 OUTPUT NODEFVAL "result[15..0]"
// Retrieval info: CONNECT: @data 1 0 16 0 data0x 0 0 16 0
// Retrieval info: CONNECT: @data 1 1 16 0 data1x 0 0 16 0
// Retrieval info: CONNECT: result 0 0 16 0 @result 0 0 16 0
// Retrieval info: GEN_FILE: TYPE_NORMAL inc.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL inc.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL inc.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL inc.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL inc_inst.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL inc_syn.v TRUE
// Retrieval info: LIB_FILE: altera_mf