# jtr [![Build Status][build.svg]][build] ![Praise the Sun][pts.svg] ![Blessed][blessed.svg]

A utility for ripping a DVD to an ISO image on disk.

`jtr` detects the DVD label, copies the DVD video contents to a temporary folder, then converts this temporary folder
into an ISO-9660 file.

[![Install VLC][vlc.jpg]][vlc]

Some software, such as [VLC][vlc], can play back DVD ISO files as if they were DVD disks.

## Disclaimer

`jtr` contains no proprietary or copyrighted code, as it depends on other utilities to function. The user is wholly
responsible for the use of this tool and for adhering to relevant laws.

## Installing

Please consult [the releases page][latest-release] for pre-built Debian and RPM packages.

## License

Licensed at your discretion under either:

 - [Apache License, Version 2.0](./LICENSE-APACHE)
 - [MIT License](./LICENSE-MIT)

 [build]: https://travis-ci.org/naftulikay/jtr
 [build.svg]: https://travis-ci.org/naftulikay/jtr.svg?branch=master
 [blessed.svg]: ./site/naftuli-blessed.svg
 [dvdbackup]: https://packages.ubuntu.com/xenial/dvdbackup
 [genisoimage]: https://packages.ubuntu.com/xenial/genisoimage
 [latest-release]: https://github.com/naftulikay/jtr/releases/latest
 [libdvd-pkg]: https://packages.ubuntu.com/xenial/libdvd-pkg
 [pts.svg]: ./site/sun-praised.svg
 [vlc.jpg]: ./site/vlc.jpg
 [vlc]: https://www.videolan.org/vlc/
