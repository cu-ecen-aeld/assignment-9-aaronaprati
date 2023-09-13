##############################################################
#
# LDD-MODULES
#
##############################################################

# TODO: Reference the most recent commit hash from your ldd repository
LDD_VERSION = d779bace51cc425bef06b4d88a163e7532e799fe

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-aaronaprati.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# Specify the subdirectories containing the kernel modules
LDD_MODULE_SUBDIRS = scull misc-modules

# Use the kernel-module infrastructure to build and install the modules
$(eval $(kernel-module))
$(eval $(generic-package))

