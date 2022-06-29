# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools_scm/ https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/bc/e6/ac8b0c5076321b9b3e4318c32a8911a260d019be6584556a0b83a47dab4b/setuptools_scm-7.0.3.tar.gz
"

DEPEND="
	>dev-python/packaging-20[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	>=dev-python/tomli-1.0[${PYTHON_USEDEP}]
	' -3
	)"
RDEPEND="
	python_targets_python2_7? ( dev-python/setuptools_scm-compat )
	$(python_gen_cond_dep '
	>=dev-python/tomli-1.0[${PYTHON_USEDEP}]
	' -3
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/setuptools_scm-7.0.2-importlib-metadata.patch
)
S="${WORKDIR}/setuptools_scm-7.0.3"