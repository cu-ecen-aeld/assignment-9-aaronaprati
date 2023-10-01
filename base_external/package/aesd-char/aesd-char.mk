##############################################################
#
# AESD-CHAR
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents

#AESD_CHAR_VERSION = 86905b31041ad5f2de718f120369d0b8d374eb5e
#AESD_CHAR_VERSION =796a9360d5a7e9f0e31855c9d14cb887426d9cc7
#AESD_CHAR_VERSION = f8be96dc5c3e6e2364b242763aeba6d97012ae92
AESD_CHAR_VERSION = afa0ef594f291dfa5e022ca242a54382d371858c
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
