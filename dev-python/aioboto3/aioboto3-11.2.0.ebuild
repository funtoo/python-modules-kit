# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async boto3 wrapper"
HOMEPAGE="https://github.com/terrycain/aioboto3 https://pypi.org/project/aioboto3/"
SRC_URI="https://files.pythonhosted.org/packages/d8/80/2699f2585cadcaa329ca00fd919e82287119bd5e9fe36adaf52bca5b499e/aioboto3-11.2.0.tar.gz -> aioboto3-11.2.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/aiobotocore[${PYTHON_USEDEP}]
	dev-python/pytest-runner[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aioboto3-11.2.0"