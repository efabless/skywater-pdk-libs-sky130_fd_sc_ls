/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_LS__DLRBN_2_BLACKBOX_V
`define SKY130_FD_SC_LS__DLRBN_2_BLACKBOX_V

/**
 * dlrbn: Delay latch, inverted reset, inverted enable,
 *        complementary outputs.
 *
 * Verilog stub definition (black box without power pins).
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

(* blackbox *)
module sky130_fd_sc_ls__dlrbn_2 (
    Q      ,
    Q_N    ,
    RESET_B,
    D      ,
    GATE_N
);

    output Q      ;
    output Q_N    ;
    input  RESET_B;
    input  D      ;
    input  GATE_N ;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

endmodule

`default_nettype wire
`endif  // SKY130_FD_SC_LS__DLRBN_2_BLACKBOX_V
