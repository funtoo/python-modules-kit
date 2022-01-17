# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools_scm/ https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/63/53/edd4d25bef7d14bb7a197088e9352b3559b6a407defbe952342da79fbcfa/setuptools_scm-6.4.0.tar.gz
"

DEPEND="
	>dev-python/packaging-20[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	>=dev-python/tomli-1.0[${PYTHON_USEDEP}]
	' -3
	)"
RDEPEND="python_targets_python2_7? ( dev-python/setuptools_scm-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/setuptools_scm-6.4.0"