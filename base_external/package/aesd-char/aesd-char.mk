##############################################################
#
# AESD-CHAR
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_VERSION = 714d828ead7aa4c23bf5c3d258a2699f9d54b1e0
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-aaronaprati.git
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

# No quotes around list - won't build, silently fails
AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))
$(eval $(generic-package))
