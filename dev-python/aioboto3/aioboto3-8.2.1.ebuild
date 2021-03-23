# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/d6/4e/7b361585b77a8f71859c777d7ba67c336e4f382f11f8717233b85aeacfa0/aioboto3-8.2.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/aiobotocore[${PYTHON_USEDEP}]
	dev-python/pytest-runner[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/aioboto3-8.2.1"