#!/bin/bash
#   d
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ============================================================================
BASE_PATH=$(dirname "$(cd "$(dirname "$0")" || exit; pwd)")
dataset_type='MR'
echo $BASE_PATH
CONFIG_FILE="${BASE_PATH}/mr_config_cpu.yaml"
python train.py --dataset=$dataset_type --config_path=$CONFIG_FILE > train.log 2>&1 &
