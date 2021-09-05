# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools_scm/ https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/4e/62/056c0127bf45c493168167aed15c4ccb70d2c69154fb1f4acaffc2bab761/setuptools_scm-6.3.1.tar.gz
"

DEPEND=">=dev-python/tomli-1.0"
RDEPEND="python_targets_python2_7? ( dev-python/setuptools_scm-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/setuptools_scm-6.3.1"