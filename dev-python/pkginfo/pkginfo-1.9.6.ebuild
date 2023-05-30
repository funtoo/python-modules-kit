# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Query metadata from sdists / bdists / installed packages."
HOMEPAGE="https://code.launchpad.net/~tseaver/pkginfo/trunk https://pypi.org/project/pkginfo/"
SRC_URI="https://files.pythonhosted.org/packages/b4/1c/89b38e431c20d6b2389ed8b3926c2ab72f58944733ba029354c6d9f69129/pkginfo-1.9.6.tar.gz -> pkginfo-1.9.6.tar.gz
"

DEPEND=""
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pkginfo-1.9.6"