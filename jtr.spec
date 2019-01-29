%define package_name jtr

Name: %{package_name}
Version: %{package_version}
Release: %{package_release}%{?dist}
License: MIT
Vendor: Naftuli Kay
Packager: Naftuli Kay <me@naftuli.wtf>
URL: https://github.com/naftulikay/jtr
Group: Applications/Multimedia
Source: https://github.com/naftulikay/jtr/archive/v%{package_version}.tar.gz
BuildArch: noarch

Summary: jtr is a utility for converting a DVD disk into an ISO-9660 image on the filesystem.

Requires: dvdbackup
Requires: genisoimage
# eject command
Requires: util-linux

Recommends: libdvdcss

%description
jtr is a utility for converting a DVD disk into an ISO-9660 image on the filesystem.
jtr contains no proprietary or copyrighted code and depends on other libraries toprovide DVD playback and backup.

%files
%{_bindir}/jtr
%{_prefix}/share/bash-completion/completions/jtr
%{_prefix}/share/man/man1/jtr.1.gz

%exclude /DEBIAN
