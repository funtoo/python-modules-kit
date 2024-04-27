# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Command-line YAML/XML processor - jq wrapper for YAML/XML documents"
HOMEPAGE="https://yq.readthedocs.io/ https://github.com/kislyuk/yq/ https://pypi.org/project/yq/"
SRC_URI="https://files.pythonhosted.org/packages/52/c3/8b463e37c949aeb56208a6db6892b4b14c332681afd57bf6c297ca6b3d0f/yq-3.4.2.tar.gz -> yq-3.4.2.tar.gz"

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
S="${WORKDIR}/yq-3.4.2"