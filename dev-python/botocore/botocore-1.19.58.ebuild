# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/5a/e6/5d89fe3da653c959418f971d4edcd5a60c314d0ec76d0af7450d3cd46fc0/botocore-1.19.58.tar.gz"

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