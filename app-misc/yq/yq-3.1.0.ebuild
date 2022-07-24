# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/kislyuk/yq https://pypi.org/project/yq/"
SRC_URI="https://files.pythonhosted.org/packages/55/b2/0c4409c0e677ea9e6870538b4cdf4959fad92a8aaa73ee41cf03876bddf9/yq-3.1.0.tar.gz -> yq-3.1.0.tar.gz
"

DEPEND=""
RDEPEND="
	app-misc/jq
	dev-python/argcomplete[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/xmltodict[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/yq-3.1.0"