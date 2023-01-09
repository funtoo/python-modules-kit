# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://mock.readthedocs.org/en/latest/ https://pypi.org/project/mock/"
SRC_URI="https://files.pythonhosted.org/packages/a9/c8/7f5fc5ee6a666d7e4ee7a3222bcb37ebebaea3697d7bf54517728f56bb28/mock-5.0.1.tar.gz -> mock-5.0.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/mock-compat )
	>=dev-python/six-1.9[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/mock-5.0.1"