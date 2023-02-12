##
## Copyright (C) 2009 BlueKitchen GmbH
## All rights reserved 
##
## Redistribution and use in source and binary forms, with or without
## modification, are permitted provided that the following conditions
## are met:
##
## 1. Redistributions of source code must retain the above copyright
##    notice, this list of conditions and the following disclaimer.
##
## 2. Redistributions in binary form must reproduce the above copyright
##    notice, this list of conditions and the following disclaimer in the
##    documentation and/or other materials provided with the distribution.
##
## 3. Neither the name of the copyright holders nor the names of
##    contributors may be used to endorse or promote products derived
##    from this software without specific prior written permission.
##
## 4. Any redistribution, use, or modification is done solely for
##    personal benefit and not for any commercial purpose or for
##    monetary gain.
##
## THIS SOFTWARE IS PROVIDED BY BLUEKITCHEN GMBH AND CONTRIBUTORS
## ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
## LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
## FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL BLUEKITCHEN 
## GMBH OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
## INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
## BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
## OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
## AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
## OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
## THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
## SUCH DAMAGE.
##
## Please inquire about commercial licensing options at 
## contact@bluekitchen-gmbh.com
##


import std/os, std/macros
import ../private

import futhark

import ./btstack
export btstack

importc:
  sysPath futhark.getClangIncludePath()
  sysPath picoSdkPath / "lib/btstack/src"
  sysPath cmakeSourceDir
  sysPath getProjectPath()

  compilerArg "-fshort-enums"

  renameCallback futharkRenameCallback

  "mesh/adv_bearer.h"
  "mesh/beacon.h"
  "mesh/gatt_bearer.h"
  "mesh/gatt-service/mesh_provisioning_service_server.h"
  "mesh/gatt-service/mesh_proxy_service_server.h"
  "mesh/mesh_access.h"
  "mesh/mesh_configuration_client.h"
  "mesh/mesh_configuration_server.h"
  "mesh/mesh_crypto.h"
  "mesh/mesh_foundation.h"
  "mesh/mesh_generic_default_transition_time_client.h"
  "mesh/mesh_generic_default_transition_time_server.h"
  "mesh/mesh_generic_level_client.h"
  "mesh/mesh_generic_level_server.h"
  "mesh/mesh_generic_model.h"
  "mesh/mesh_generic_on_off_client.h"
  "mesh/mesh_generic_on_off_server.h"
  "mesh/mesh.h"
  "mesh/mesh_health_server.h"
  "mesh/mesh_iv_index_seq_number.h"
  "mesh/mesh_keys.h"
  "mesh/mesh_lower_transport.h"
  "mesh/mesh_network.h"
  "mesh/mesh_node.h"
  "mesh/mesh_peer.h"
  "mesh/mesh_proxy.h"
  "mesh/mesh_upper_transport.h"
  "mesh/mesh_virtual_addresses.h"
  "mesh/pb_adv.h"
  "mesh/pb_gatt.h"
  "mesh/provisioning_device.h"
  "mesh/provisioning.h"
  "mesh/provisioning_provisioner.h"
