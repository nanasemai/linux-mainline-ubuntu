human_arch	= ARMv8
build_arch	= arm64
defconfig	= defconfig
flavours	= qcom oneplus6
build_image	= Image.gz
kernel_file	= arch/$(build_arch)/boot/Image.gz
install_file	= vmlinuz
no_dumpfile	= true

vdso		= vdso_install

do_tools_usbip  = true
do_tools_cpupower = true
do_tools_perf   = true
do_tools_perf_jvmti = true
do_tools_bpftool = true

do_dtbs		= true

# 一加6特定配置
ifeq ($(flavour),oneplus6)
    configs += oneplus6_defconfig
    kernel_image = Image.gz-dtb
    dtbs = sdm845-oneplus-enchilada.dtb sdm845-oneplus-fajita.dtb
endif
