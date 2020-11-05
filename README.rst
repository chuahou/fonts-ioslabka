########
ioslabka
########

|License: MIT|

A Debian-packaged variant of Iosevka Slab, to be built from the upstream
source `be5invis/Iosevka <https://github.com/be5invis/Iosevka>`_.

*Note that license refers to the packaging in the debian directory. The
license does not apply to source tarballs not included in this
repository.*

Usage
======

#. First, obtain a release source code tarball from upstream at
   `be5invis/Iosevka <https://github.com/be5invis/Iosevka>`_. Place this
   at ../iosevka_x.x.x.orig.tar.gz, with x.x.x being the version
   number.
#. Edit the changelog at debian/changelog accordingly.
#. Run ``./build.sh`` (or do typical debian packaging).

Afterwards, you may wish to clean up using::

	$ git clean -id # check no desired files will be cleaned
	$ git clean -fd # perform the clean

Dependencies
============

* Debian packaging dependencies

  * build-essential
  * devscripts
  * debhelper

* ttfautohint
* nodejs

For more details on dependencies for building Iosevka (not packaging!),
see `be5invis/Iosevka <https://github.com/be5invis/Iosevka>`_.

Misc
====

Why is the Debian versioning number "-kiwami"? This is because this is
part of my efforts of creating personal Debian packages under
`kiwami <https://github.com/chuahou/kiwami>`_.

.. |License: MIT| image:: https://img.shields.io/badge/License-MIT-yellow.svg
	:target: https://opensource.org/licenses/MIT
