# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/b9/87/c28866fd15cb87d893048ff16d08b179db9a1b8f5119c22562b564ff59ad/botocore-1.19.59.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/tox[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/behave[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/botocore-${PV}"