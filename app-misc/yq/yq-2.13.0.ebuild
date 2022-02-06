# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Command-line YAML/XML processor - jq wrapper for YAML/XML documents"
HOMEPAGE="https://yq.readthedocs.io/ https://github.com/kislyuk/yq/ https://pypi.org/project/yq/"
SRC_URI="https://files.pythonhosted.org/packages/77/8f/b7e9da70e379a0250096b953fa40f504a99bddd641b373cd99f8e0417c3d/yq-2.13.0.tar.gz
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

S="${WORKDIR}/yq-2.13.0"