
## @file
#
#  Copyright (c) 2011-2015, ARM Limited. All rights reserved.
#  Copyright (c) 2014, Linaro Limited. All rights reserved.
#  Copyright (c) 2015 - 2016, Intel Corporation. All rights reserved.
#  Copyright (c) 2018 - 2019, Bingxing Wang. All rights reserved.
#  Copyright (c) 2022, Xilin Wu. All rights reserved.
#
#  SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################

[Defines]
  SOC_PLATFORM            = exynos7904
  USE_PHYSICAL_TIMER      = FALSE

!include Silicon/Samsung/ExynosPkg/ExynosCommonDsc.inc

[PcdsFixedAtBuild.common]
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x80000000         # Starting address
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x200000000         # Limit to 12GB Size here

  gArmTokenSpaceGuid.PcdCpuVectorBaseAddress|0x80000000  # CPU Vectors
  gArmTokenSpaceGuid.PcdArmArchTimerFreqInHz|26000000
  gArmTokenSpaceGuid.PcdArmArchTimerSecIntrNum|12
  gArmTokenSpaceGuid.PcdArmArchTimerIntrNum|12
  gArmTokenSpaceGuid.PcdArmArchTimerVirtIntrNum|11
  gArmTokenSpaceGuid.PcdArmArchTimerHypIntrNum|10
  gArmTokenSpaceGuid.PcdGicDistributorBase|0x10101000

  gArmTokenSpaceGuid.PcdGicInterruptInterfaceBase|0x10100000

  gEfiMdeModulePkgTokenSpaceGuid.PcdAcpiDefaultOemRevision|0x00009820
  gEmbeddedTokenSpaceGuid.PcdPrePiStackBase|0x80C50000      # UEFI Stack
  gEmbeddedTokenSpaceGuid.PcdPrePiStackSize|0x00040000      # 256K stack
  #gEmbeddedTokenSpaceGuid.PcdPrePiCpuIoSize|44

  gSamsungTokenSpaceGuid.PcdUefiMemPoolBase|0x80C50000        # DXE Heap base address
  gSamsungTokenSpaceGuid.PcdUefiMemPoolSize|0x000C0000         # UefiMemorySize, DXE heap size
  
  gSamsungTokenSpaceGuid.PcdMipiFrameBufferAddress|0xca000000

  gArmPlatformTokenSpaceGuid.PcdCoreCount|4
  gArmPlatformTokenSpaceGuid.PcdClusterCount|4

  #
  # SimpleInit
  #
  gSimpleInitTokenSpaceGuid.PcdDeviceTreeStore|0x20000000
  gSimpleInitTokenSpaceGuid.PcdLoggerdUseConsole|FALSE

[LibraryClasses.common]
  KeypadDeviceImplLib|Silicon/Samsung/Exynos9820Pkg/Library/KeypadDeviceImplLib/KeypadDeviceImplLib.inf
  PlatformMemoryMapLib|Silicon/Samsung/Exynos9820Pkg/Library/PlatformMemoryMapLib/PlatformMemoryMapLib.inf
  PlatformPeiLib|Silicon/Samsung/Exynos9820Pkg/Library/PlatformPeiLib/PlatformPeiLib.inf
  PlatformPrePiLib|Silicon/Samsung/Exynos9820Pkg/Library/PlatformPrePiLib/PlatformPrePiLib.inf
  ExynosUfsLib|Silicon/Samsung/Exynos9820Pkg/Library/ExynosUfsLib/ExynosUfsLib.inf
  
  MsPlatformDevicesLib|Silicon/Samsung/Exynos9820Pkg/Library/MsPlatformDevicesLib/MsPlatformDevicesLib.inf
  SOCSmbiosInfoLib|Silicon/Samsung/Exynos9820Pkg/Library/SOCSmbiosInfoLib/SOCSmbiosInfoLib.inf

  [Components.common]
  Silicon/Samsung/Exynos9820Pkg/Library/ExynosUfsLib/ExynosUfsLib.inf
