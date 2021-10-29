# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Core utilities for Python packages"
HOMEPAGE="https://github.com/pypa/packaging https://pypi.org/project/packaging/"
SRC_URI="https://files.pythonhosted.org/packages/4d/34/523195b783e799fd401ad4bbc40d787926dd4c61838441df08bf42297792/packaging-21.2.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/packaging-compat )
	<dev-python/pyparsing-3[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0 BSD"
KEYWORDS="*"

S="${WORKDIR}/packaging-21.2"