# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION="Python-powered template engine and code generator"
HOMEPAGE="http://www.cheetahtemplate.org/ https://pypi.org/project/Cheetah3/"
SRC_URI="https://files.pythonhosted.org/packages/23/33/ace0250068afca106c1df34348ab0728e575dc9c61928d216de3e381c460/Cheetah3-3.2.6.post1.tar.gz
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

S="${WORKDIR}/Cheetah3-3.2.6.post1"