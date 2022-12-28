# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://mock.readthedocs.org/en/latest/ https://pypi.org/project/mock/"
SRC_URI="https://files.pythonhosted.org/packages/49/b0/08a3b7bb3b6c0eaae355edca4201a3d887406c03f2e4f10e5f28936bb8ac/mock-5.0.0.tar.gz -> mock-5.0.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/mock-compat )
	>=dev-python/six-1.9[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/mock-5.0.0"