# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Query metadatdata from sdists / bdists / installed packages."
HOMEPAGE="https://code.launchpad.net/~tseaver/pkginfo/trunk https://pypi.org/project/pkginfo/"
SRC_URI="https://files.pythonhosted.org/packages/54/6a/42056522e1d79fa9768712782f37365ef786d905e4efeed6db44cad1803b/pkginfo-1.8.2.tar.gz
"

DEPEND=""
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pkginfo-1.8.2"