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
( negedge RESET_B => ( Q +: RESET_B ) ) = 0:0:0 ;   // delay is tfall
( negedge RESET_B => ( Q_N -: RESET_B ) ) = 0:0:0 ;  // delay is tris
( SET_B => ( Q -: SET_B ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
( SET_B => ( Q_N +: SET_B ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall
( negedge CLK_N => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
( negedge CLK_N => ( Q_N -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
$recrem ( posedge SET_B , negedge CLK_N , 0:0:0 , 0:0:0 , notifier , cond0 , cond0 , SET_B_delayed , CLK_N_delayed ) ;
$recrem ( posedge RESET_B , negedge CLK_N , 0:0:0 , 0:0:0 , notifier , cond1 , cond1 , RESET_B_delayed , CLK_N_delayed ) ;
$setuphold ( negedge CLK_N , posedge D , 0:0:0 , 0:0:0 , notifier , condb , condb , CLK_N_delayed , D_delayed ) ;
$setuphold ( negedge CLK_N , negedge D , 0:0:0 , 0:0:0 , notifier , condb , condb , CLK_N_delayed , D_delayed ) ;
$hold ( posedge SET_B &&& awake , posedge RESET_B &&& awake , 3.0:3.0:3.0 , notifier ) ; //arbitrary , uncharacterized value to
//flag possible state error
$hold ( posedge RESET_B &&& awake , posedge SET_B &&& awake , 3.0:3.0:3.0 , notifier ) ; //arbitrary , uncharacterized value to
//flag possible state error
$width ( negedge CLK_N &&& condb , 1.0:1.0:1.0 , 0 , notifier ) ;
$width ( posedge CLK_N &&& condb , 1.0:1.0:1.0 , 0 , notifier ) ;
$width ( negedge SET_B &&& awake , 1.0:1.0:1.0 , 0 , notifier ) ;
$width ( negedge RESET_B &&& awake , 1.0:1.0:1.0 , 0 , notifier ) ;
endspecify
