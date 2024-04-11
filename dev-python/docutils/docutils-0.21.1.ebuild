# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Docutils -- Python Documentation Utilities"
HOMEPAGE="None https://pypi.org/project/docutils/"
SRC_URI="https://files.pythonhosted.org/packages/21/ff/c495b797462434f0befcb598b51cde31c3ebdf8577c3fd9d9a8f5eeb844c/docutils-0.21.1.tar.gz -> docutils-0.21.1.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/docutils-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/docutils-0.21.1"