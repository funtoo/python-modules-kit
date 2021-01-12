# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/8e/5c/9caca95a49f66729cf9cf9e295f2cbbb1b58bc638fd80d41b91f32b5189a/aiobotocore-1.2.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/aioitertools[${PYTHON_USEDEP}]
	dev-python/botocore[${PYTHON_USEDEP}]
	dev-python/wrapt[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/aiobotocore-${PV}"