# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/03/f3/99f57f59a101268612dd11ae4d34f3ed725394c327f28a94d2be6a510f63/botocore-1.20.84.tar.gz
"

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

S="${WORKDIR}/botocore-1.20.84"