# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/08/75/dc3497096ba93602cf1b53894c4a3fd54085754febdd00282fdca0649159/boto3-1.16.53.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/botocore[${PYTHON_USEDEP}]
	dev-python/jmespath[${PYTHON_USEDEP}]
	dev-python/s3transfer[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/boto3-${PV}"