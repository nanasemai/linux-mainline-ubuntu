subdir-ccflags-y += -Wno-packed-bitfield-compat
subdir-ccflags-y += -Wno-enum-int-mismatch  # Commented out due to unsupported compiler option

export MACHINE = sdm845
export KERNEL_ROOT=/

###

export KGSL_PATH := $(srctree)/$(src)/graphics
export KERNEL_SRC := $(srctree)
obj-y += graphics/

###

#obj-y += camera-qcm6490/
#obj-y += camera-qcs9100/
#obj-y += camera-sdm845/

###

export VIDEO_KERNEL_ROOT := $(srctree)/$(src)/video

obj-y += video/
