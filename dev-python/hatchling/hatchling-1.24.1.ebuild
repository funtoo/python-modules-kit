# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Modern, extensible Python build backend"
HOMEPAGE="None https://pypi.org/project/hatchling/"
SRC_URI="https://files.pythonhosted.org/packages/5d/0a/1d92832f88f5aba4e2edb00785bfb985b820dc592daeaa340a1867385997/hatchling-1.24.1.tar.gz -> hatchling-1.24.1.tar.gz"

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
S="${WORKDIR}/hatchling-1.24.1"