# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://code.launchpad.net/~tseaver/pkginfo/trunk https://pypi.org/project/pkginfo/"
SRC_URI="https://files.pythonhosted.org/packages/0f/53/951501e37c1057f7652d8dfb9b8e3050f5b7c8fbe8935b70b6cdbbe99c72/pkginfo-1.9.3.tar.gz -> pkginfo-1.9.3.tar.gz
"

DEPEND=""
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pkginfo-1.9.3"