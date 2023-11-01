# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Docutils -- Python Documentation Utilities"
HOMEPAGE="https://docutils.sourceforge.io/ https://pypi.org/project/docutils/"
SRC_URI="https://files.pythonhosted.org/packages/1f/53/a5da4f2c5739cf66290fac1431ee52aff6851c7c8ffd8264f13affd7bcdd/docutils-0.20.1.tar.gz -> docutils-0.20.1.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/docutils-compat )
	dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/docutils-0.20.1"