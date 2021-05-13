default: .env secrets/rstudio_password.env

.env:
	echo -n > $@
	echo "UID=$(shell id -u)" >> $@
	echo "GID=$(shell id -g)" >> $@
	echo -n "TZ=" >> $@
	timedatectl | grep 'Time zone' | sed -E 's/ *Time zone: (.*) \(.*\)/\1/' >> $@

secrets/%.txt:
	-mkdir -p $(@D)
	touch $@
	chmod go= $@
	openssl rand -hex 32 > $@

secrets/rstudio_password.env: secrets/rstudio_password.txt
	-mkdir -p $(@D)
	touch $@
	chmod go= $@
	echo -n PASSWORD= > $@
	cat $< >> $@

.PHONY: default
