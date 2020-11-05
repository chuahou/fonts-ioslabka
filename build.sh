#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Chua Hou

# function to complain that upstream tarball does not exist
print_gettar () {
	echo "Ensure that the upstream tarball has been downloaded to"
	echo "../iosevka_x.x.x.orig.tar.gz"
}

# ensure we are in script directory
if [ $(dirname $0) != '.' ]; then
	echo "Invoke this script from its directory!"
	exit 1
fi

# check for upstream tarball
UPTAR=$(ls ../iosevka_*.orig.tar.gz || \
	print_gettar)

# extract tarball and move its contents, sans hidden files, out
tar xzf "$UPTAR"
cp -r Iosevka-*/* .
rm Iosevka-*/ -rf

# build packages
debuild -us -uc -b
debuild -T clean
