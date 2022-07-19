# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/kislyuk/yq https://pypi.org/project/yq/"
SRC_URI="https://files.pythonhosted.org/packages/fc/0b/93a830fe6f75acaf2c052966b2c5f98aa3a18c08ca99b1621b60dd74e453/yq-3.0.2.tar.gz -> yq-3.0.2.tar.gz
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
S="${WORKDIR}/yq-3.0.2"