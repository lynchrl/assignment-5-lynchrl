LDD_VERSION = '89845b73a31266da90e4ee7e0cfa57fd55bc591f'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-lynchrl.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# LDD_MODULE_MAKE_OPTS += ccflags-y="-I$(@D)/include" \
# 	ccflags-y="-I$(@D)/misc-modules/include" \
# 	ccflags-y="-I$(@D)/scull/include"
# LDD_MODULE_MAKE_OPTS = \
#     ARCH=$(KERNEL_ARCH) \
#     KERNELDIR=$(LINUX_DIR) \
#     KVERSION=$(LINUX_VERSION_PROBED) \
#     ccflags-y="-I$(@D)/include" \
# 	ccflags-y="-I$(@D)/misc-modules/include" \
# 	ccflags-y="-I$(@D)/scull/include"

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

$(eval $(kernel-module))
$(eval $(generic-package))
