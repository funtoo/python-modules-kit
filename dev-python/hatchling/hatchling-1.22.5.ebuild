# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Modern, extensible Python build backend"
HOMEPAGE="None https://pypi.org/project/hatchling/"
SRC_URI="https://files.pythonhosted.org/packages/1d/20/114862141f3bc69e01884fd225600b0ca178b2dfd6fd84f100e06bf199ab/hatchling-1.22.5.tar.gz -> hatchling-1.22.5.tar.gz"

DEPEND="
	$(python_gen_cond_dep '<=dev-python/pluggy-1.2.0[${PYTHON_USEDEP}]' python3_7)
	dev-python/pathspec[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pluggy[${PYTHON_USEDEP}]
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/trove-classifiers[${PYTHON_USEDEP}]"
RDEPEND="
	${DEPEND}
	dev-python/editables[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="next"
S="${WORKDIR}/hatchling-1.22.5"