#!/usr/bin/make -f

.PHONY: clean build

ARCH:=$(shell grep -iP '^Architecture\:\s+' debian/control | awk '{print $$2;}')

# versioning is entirely driven by debian/control
VERSION:=$(shell grep -iP '^Version\:\s+' debian/control | awk '{print $$2;}' | \
	grep -ioP '\d+\.\d+\.\d+')
RELEASE:=$(shell grep -iP '^Version\:\s+' debian/control | awk '{print $$2;}' | \
	grep -ioP '(?<=[-])\S$$')

clean:
	@rm -fr ./build/

prepare:
	@mkdir -p build/pkg/usr build/pkg/DEBIAN
	@cp -r bin/ build/pkg/usr/
	@cp -r share build/pkg/usr/
	@cp -r debian/* build/pkg/DEBIAN/

build-deb: prepare
	@dpkg-deb -b build/pkg build/jtr_$(VERSION)-$(RELEASE)_$(ARCH).deb

build-rpm: prepare
	@rpmbuild -bb \
		--buildroot $$PWD/build/pkg/ \
		--noclean \
		--define "_rpmdir $$PWD/build" \
		--define "package_version $(VERSION)" \
		--define "package_release $(RELEASE)" \
		jtr.spec

	@mv build/noarch/*.rpm build/ && rmdir build/noarch

build: build-deb build-rpm
