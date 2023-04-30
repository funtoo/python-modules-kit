# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/urllib3/"
SRC_URI="https://files.pythonhosted.org/packages/7e/19/2a88626e71557cd989afee0985df3808a546d54d00b0b5853f3b6c334dbd/urllib3-2.0.1.tar.gz -> urllib3-2.0.1.tar.gz
"

DEPEND="
	$(python_gen_cond_dep '
	>=dev-python/hatchling-1.6.0[${PYTHON_USEDEP}]
	' -3
	)"
RDEPEND="
	python_targets_python2_7? ( dev-python/urllib3-compat )
	>=app-arch/brotli-1.0.9
	$(python_gen_cond_dep '
	>=dev-python/pyopenssl-17.1.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-1.9[${PYTHON_USEDEP}]
	>=dev-python/brotlicffi-0.8.0[${PYTHON_USEDEP}]
	>=dev-python/zstandard-0.18.0[${PYTHON_USEDEP}]
	' -3
	)"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/urllib3-2.0.1"