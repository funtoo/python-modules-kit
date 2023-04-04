# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/kislyuk/yq https://pypi.org/project/yq/"
SRC_URI="https://files.pythonhosted.org/packages/70/97/afd9a4999bf7d278803e7a5861a870a5fa7635f68d6f32d86367c542a99e/yq-3.2.0.tar.gz -> yq-3.2.0.tar.gz
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
S="${WORKDIR}/yq-3.2.0"