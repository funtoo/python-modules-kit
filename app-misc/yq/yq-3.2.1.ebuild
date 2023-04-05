# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/kislyuk/yq https://pypi.org/project/yq/"
SRC_URI="https://files.pythonhosted.org/packages/82/09/110ed5ef1e1afb4e87e256b322f88bbfaa9fe59eb5f30d1764e0741c0735/yq-3.2.1.tar.gz -> yq-3.2.1.tar.gz
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
S="${WORKDIR}/yq-3.2.1"