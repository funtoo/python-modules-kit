# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://docutils.sourceforge.io/ https://pypi.org/project/docutils/"
SRC_URI="https://files.pythonhosted.org/packages/e6/a9/8ddfaa7a9414e42520e0041d1354ebda699e4eb1b47e2f1b6d8bda66aba6/docutils-0.20.tar.gz -> docutils-0.20.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/docutils-compat )
	dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/docutils-0.20"