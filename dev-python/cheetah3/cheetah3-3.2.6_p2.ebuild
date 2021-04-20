# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION="Python-powered template engine and code generator"
HOMEPAGE="http://www.cheetahtemplate.org/ https://pypi.org/project/Cheetah3/"
SRC_URI="https://files.pythonhosted.org/packages/c0/97/c3fa47e223207e6ca6b501a954c5c959ed3e99f2a1ceec9918238ce38418/Cheetah3-3.2.6.post2.tar.gz
"

DEPEND=""
RDEPEND="
	!dev-python/cheetah
	dev-python/markdown[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/Cheetah3-3.2.6.post2"