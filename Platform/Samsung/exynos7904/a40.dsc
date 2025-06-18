[Defines]
  PLATFORM_NAME                  = a40
  PLATFORM_GUID                  = 54d47bf2-32f2-4532-9438-1b6971dc59c0
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Samsung/exynos9820/exynos9820.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Samsung/exynos9820/exynos9820.fdf.inc

!include Platform/Samsung/exynos7904/exynos7904.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT

[PcdsFixedAtBuild.common]
  gSamsungTokenSpaceGuid.PcdMipiFrameBufferWidth|1920
  gSamsungTokenSpaceGuid.PcdMipiFrameBufferHeight|1080

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|72.0

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Samsung"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Galaxy A40"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"a40"
