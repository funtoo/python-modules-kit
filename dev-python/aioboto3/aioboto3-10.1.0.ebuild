# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/terrycain/aioboto3 https://pypi.org/project/aioboto3/"
SRC_URI="https://files.pythonhosted.org/packages/a2/88/54574944c8e9e44ac83ca9f6161f5b7a930491c4f0d58b26fab34c89e608/aioboto3-10.1.0.tar.gz -> aioboto3-10.1.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/aiobotocore[${PYTHON_USEDEP}]
	dev-python/pytest-runner[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aioboto3-10.1.0"