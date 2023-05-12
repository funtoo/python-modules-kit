# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Hamcrest framework for matcher objects"
HOMEPAGE="https://github.com/hamcrest/PyHamcrest"
SRC_URI="https://files.pythonhosted.org/packages/b1/9a/588f086b64ace8d2e9843d8551e9068b2570c3c51b06cb49a107303f8700/pyhamcrest-2.0.4.tar.gz -> pyhamcrest-2.0.4.tar.gz
"

DEPEND="
	$(python_gen_cond_dep '
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
	' -3
	)"
RDEPEND="python_targets_python2_7? ( dev-python/pyhamcrest-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pyhamcrest-2.0.4"