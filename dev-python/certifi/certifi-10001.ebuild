# Distributed under the terms of the GNU General Public License v2

# please keep this ebuild at EAPI 7 -- sys-apps/portage dep
EAPI=7

DISTUTILS_USE_SETUPTOOLS=no
PYTHON_COMPAT=( python2+ pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Thin replacement for certifi using system certificate store"
HOMEPAGE="
	https://github.com/mgorny/certifi-shim/
	https://pypi.org/project/certifi/"
SRC_URI="https://api.github.com/repos/mgorny/certifi-shim/tarball/refs/tags/v10001 -> certifi-shim-10001-804dd07.tar.gz"

S="${WORKDIR}/mgorny-certifi-shim-804dd07"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="*"

RDEPEND="app-misc/ca-certificates"

distutils_enable_tests unittest