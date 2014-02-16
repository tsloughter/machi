%% -------------------------------------------------------------------
%%
%% Copyright (c) 2014 Basho Technologies, Inc.  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------

%% 1 byte  @ offset 0: 0=unwritten, 1=written, 2=trimmed, 255=corrupt? TODO
%% 8 bytes @ offset 1: logical page number
%% P bytes @ offset 9: page data
%% 1 byte  @ offset 9+P: 0=unwritten, 1=written
-define(PAGE_OVERHEAD, (1 + 8 + 1)).

