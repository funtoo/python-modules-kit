# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/f7/7f/ca3250b1c9d6992592ae00623030edec3568273e3f74b0af685beb17fa7d/aioboto3-8.2.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/aiobotocore[${PYTHON_USEDEP}]
	dev-python/pytest-runner[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/aioboto3-${PV}"