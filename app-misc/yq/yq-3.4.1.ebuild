# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Command-line YAML/XML processor - jq wrapper for YAML/XML documents"
HOMEPAGE="https://yq.readthedocs.io/ https://github.com/kislyuk/yq/ https://pypi.org/project/yq/"
SRC_URI="https://files.pythonhosted.org/packages/e2/96/5dcb699d1dee50ca43ee60c1eae531e4430a404c5a5d90568e1f19274e26/yq-3.4.1.tar.gz -> yq-3.4.1.tar.gz"

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
S="${WORKDIR}/yq-3.4.1"