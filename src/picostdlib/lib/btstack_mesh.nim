##
## “BlueKitchen” shall refer to BlueKitchen GmbH.
## “Raspberry Pi” shall refer to Raspberry Pi Ltd.
## “Product” shall refer to Raspberry Pi hardware products Raspberry Pi Pico W or Raspberry Pi Pico WH.
## “Customer” means any purchaser of a Product.
## “Customer Products” means products manufactured or distributed by Customers which use or are derived from Products.
##
## Raspberry Pi grants to the Customer a non-exclusive, non-transferable, non-sublicensable, irrevocable, perpetual
## and worldwide licence to use, copy, store, develop, modify, and transmit BTstack in order to use BTstack with or
## integrate BTstack into Products or Customer Products, and distribute BTstack as part of these Products or
## Customer Products or their related documentation or SDKs.
##
## All use of BTstack by the Customer is limited to Products or Customer Products, and the Customer represents and
## warrants that all such use shall be in compliance with the terms of this licence and all applicable laws and
## regulations, including but not limited to, copyright and other intellectual property laws and privacy regulations.
##
## BlueKitchen retains all rights, title and interest in, to and associated with BTstack and associated websites.
## Customer shall not take any action inconsistent with BlueKitchen’s ownership of BTstack, any associated services,
## websites and related content.
##
## There are no implied licences under the terms set forth in this licence, and any rights not expressly granted
## hereunder are reserved by BlueKitchen.
##
## BTSTACK IS PROVIDED BY RASPBERRY PI "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
## THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED TO THE FULLEST EXTENT
## PERMISSIBLE UNDER APPLICABLE LAW. IN NO EVENT SHALL RASPBERRY PI OR BLUEKITCHEN BE LIABLE FOR ANY DIRECT, INDIRECT,
## INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
## GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
## LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
## OUT OF THE USE OF BTSTACK, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
##
{.hint[XDeclaredButNotUsed]: off.}
{.hint[User]: off.}

import std/os, std/macros
import ../helpers

import futhark

import ./btstack
export btstack

importc:
  compilerArg "--target=arm-none-eabi"
  compilerArg "-mthumb"
  compilerArg "-mcpu=cortex-m0plus"
  compilerArg "-fsigned-char"

  sysPath armSysrootInclude
  sysPath armInstallInclude
  sysPath picoSdkPath / "lib/btstack/src"
  sysPath piconimCsourceDir
  sysPath getProjectPath()

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
