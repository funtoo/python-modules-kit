# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Docutils -- Python Documentation Utilities"
HOMEPAGE="None https://pypi.org/project/docutils/"
SRC_URI="https://files.pythonhosted.org/packages/0b/06/fc42ca93a1eea8f881e904fd6d9137bd31ce7407afae603aa478f9c0c235/docutils-0.21.tar.gz -> docutils-0.21.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/docutils-compat )
	dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/docutils-0.21"