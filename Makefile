#
#
#
SALTBASE = /srv/salt

.PHONY : install

install: 
	rsync --exclude=.git -vr ringserver pillar.example $(SALTBASE)


