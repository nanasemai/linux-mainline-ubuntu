# SPDX-License-Identifier: GPL-2.0-only
# SDM845 Camera Configuration for OnePlus 6/6T

# Core camera components for SDM845
CONFIG_SPECTRA_KT := y
CONFIG_SPECTRA_ISP := y
CONFIG_SPECTRA_ICP := y
CONFIG_SPECTRA_JPEG := y
CONFIG_SPECTRA_LRME := y
CONFIG_SPECTRA_SENSOR := y
CONFIG_SPECTRA_FD := y
CONFIG_SPECTRA_OPE := y
CONFIG_SPECTRA_CRE := y

# SDM845 specific features
CONFIG_SPECTRA_VFE := y
CONFIG_SPECTRA_CSIPHY := y
CONFIG_SPECTRA_CCI := y

# Flags to pass into C preprocessor
ccflags-y += -DCONFIG_SPECTRA_KT=1
ccflags-y += -DCONFIG_SPECTRA_ISP=1
ccflags-y += -DCONFIG_SPECTRA_ICP=1
ccflags-y += -DCONFIG_SPECTRA_JPEG=1
ccflags-y += -DCONFIG_SPECTRA_LRME=1
ccflags-y += -DCONFIG_SPECTRA_SENSOR=1
ccflags-y += -DCONFIG_SPECTRA_FD=1
ccflags-y += -DCONFIG_SPECTRA_OPE=1
ccflags-y += -DCONFIG_SPECTRA_CRE=1

# SDM845 platform specific flags
ccflags-y += -DCONFIG_SPECTRA_VFE=1
ccflags-y += -DCONFIG_SPECTRA_CSIPHY=1
ccflags-y += -DCONFIG_SPECTRA_CCI=1
ccflags-y += -DCONFIG_ARCH_SDM845=1
ccflags-y += -DCONFIG_MACH_SDM845=1

# OnePlus 6/6T specific camera configuration
ccflags-y += -DONEPLUS_6_CAMERA=1
ccflags-y += -DCAMERA_SENSOR_IMX519=1      # Main camera sensor (both 6 and 6T)
ccflags-y += -DCAMERA_SENSOR_IMX376K=1     # Secondary camera sensor (both 6 and 6T)
ccflags-y += -DCAMERA_SENSOR_IMX371=1      # Front camera sensor (OnePlus 6)
ccflags-y += -DCAMERA_SENSOR_IMX376K_FRONT=1  # Front camera sensor (OnePlus 6T)

# Enable debugging for development
ccflags-y += -DCAMERA_DEBUG=1