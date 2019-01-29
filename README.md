# jtr ![Praise the Sun][pts.svg] ![Blessed][blessed.svg]

A utility for ripping a DVD to an ISO image on disk.

## Disclaimer

I take no responsibility whatsoever in any way, shape, or form for what any individual attempts to do with this
software. The user assumes _all_ responsibility for using this software. No proprietary software is included with
`jtr`.

## Dependencies

This software requires libraries for DVD playback and other utilities for ISO conversion.

On Ubuntu 16.04 Xenial, the following packages must be installed for `jtr` to work:

 - [`dvdbackup`][dvdbackup]: for mirroring a DVD's folder structure to disk.
 - [`genisoimage`][genisoimage]: for converting a folder structure to a DVD video ISO-9660 file.
 - [`libdvd-pkg`][libdvd-pkg]: for generic DVD playback.

The user is wholly responsible for installation and use of these packages.

`jtr` will possibly work on other distributions and releases, provided that the binaries and libraries provided by the
above packages are present.

## License

Licensed at your discretion under either:

 - [Apache License, Version 2.0](./LICENSE-APACHE)
 - [MIT License](./LICENSE-MIT)

 [pts.svg]: site/sun-praised.svg
 [blessed.svg]: site/naftuli-blessed.svg
 [libdvd-pkg]: https://packages.ubuntu.com/xenial/libdvd-pkg
 [genisoimage]: https://packages.ubuntu.com/xenial/genisoimage
 [dvdbackup]: https://packages.ubuntu.com/xenial/dvdbackup
