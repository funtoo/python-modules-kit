# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="plugin and hook calling mechanisms for python"
HOMEPAGE="https://github.com/pytest-dev/pluggy https://pypi.org/project/pluggy/"
SRC_URI="https://files.pythonhosted.org/packages/96/2d/02d4312c973c6050a18b314a5ad0b3210edb65a906f868e31c111dede4a6/pluggy-1.5.0.tar.gz -> pluggy-1.5.0.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pluggy-compat )
	$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' python3_7)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="next"
S="${WORKDIR}/pluggy-1.5.0"