
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#AESD_ASSIGNMENTS_VERSION = 'c6fcc6638a030f3dcaf056a020e57272f7a584f7'
#AESD_ASSIGNMENTS_VERSION = 'e7c17d2'
#AESD_ASSIGNMENTS_VERSION = 'f1b41c2' #This was the commit that worked for assignment-4-part-2
AESD_ASSIGNMENTS_VERSION ='ecb8906' #Updating commit for assignment-5-part-2
AESD_ASSIGNMENTS_VERSION = 714d828ead7aa4c23bf5c3d258a2699f9d54b1e0
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-aaronaprati.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/writer $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/finder.sh $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh  $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket  $(TARGET_DIR)/usr/bin
	#$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop.sh  $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
