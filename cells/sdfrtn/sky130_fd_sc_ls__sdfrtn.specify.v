/*
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

specify
( negedge RESET_B => ( Q +: RESET_B ) ) = 0:0:0 ;  // delay is tris
( negedge CLK_N => ( Q : CLK_N ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
$recrem ( posedge RESET_B , negedge CLK_N , 0:0:0 , 0:0:0 , notifier , awake , awake , RESET_B_delayed , CLK_N_delayed ) ;
$setuphold ( negedge CLK_N , posedge D , 0:0:0 , 0:0:0 , notifier , cond1 , cond1 , CLK_N_delayed , D_delayed ) ;
$setuphold ( negedge CLK_N , negedge D , 0:0:0 , 0:0:0 , notifier , cond1 , cond1 , CLK_N_delayed , D_delayed ) ;
$setuphold ( negedge CLK_N , posedge SCD , 0:0:0 , 0:0:0 , notifier , cond2 , cond2 , CLK_N_delayed , SCD_delayed ) ;
$setuphold ( negedge CLK_N , negedge SCD , 0:0:0 , 0:0:0 , notifier , cond2 , cond2 , CLK_N_delayed , SCD_delayed ) ;
$setuphold ( negedge CLK_N , posedge SCE , 0:0:0 , 0:0:0 , notifier , cond3 , cond3 , CLK_N_delayed , SCE_delayed ) ;
$setuphold ( negedge CLK_N , negedge SCE , 0:0:0 , 0:0:0 , notifier , cond3 , cond3 , CLK_N_delayed , SCE_delayed ) ;
$width ( posedge CLK_N &&& cond4 , 1.0:1.0:1.0 , 0 , notifier ) ;
$width ( negedge CLK_N &&& cond4 , 1.0:1.0:1.0 , 0 , notifier ) ;
$width ( negedge RESET_B &&& awake , 1.0:1.0:1.0 , 0 , notifier ) ;
endspecify
