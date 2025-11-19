CAMERA_ARCH=sdm845
SOC_FAM=sdm845
CAMERA_KERNEL_ROOT := $(srctree)/$(src)/../camera

# Include SDM845 specific camera configuration
include $(srctree)/$(src)/../camera/config/sdm845-camera.mk

include $(srctree)/$(src)/../camera/Kbuild

objs := $(camera_$(CAMERA_ARCH)-y) $(camera_$(CAMERA_ARCH)-m)

srcs := $(objs:%.o=%.c)

$(addprefix $(obj)/, $(srcs)): $(obj)/%.c: $(src)/../camera/%.c FORCE
	$(Q)mkdir -p $(dir $@)
	$(call if_changed,copy)

targets += $(srcs)
