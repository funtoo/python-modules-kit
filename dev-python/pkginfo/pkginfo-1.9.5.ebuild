# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://code.launchpad.net/~tseaver/pkginfo/trunk https://pypi.org/project/pkginfo/"
SRC_URI="https://files.pythonhosted.org/packages/0d/f7/eb08b0e3f489d92c4685282581622d2022afd16ed5ddda16405fedc72441/pkginfo-1.9.5.tar.gz -> pkginfo-1.9.5.tar.gz
"

DEPEND=""
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pkginfo-1.9.5"