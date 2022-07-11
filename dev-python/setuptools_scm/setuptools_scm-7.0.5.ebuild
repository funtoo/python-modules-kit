# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pypa/setuptools_scm/ https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/d0/43/f038b5009f93bcd77b1b8da9e6d424b739ab17aec9726f3a99eba23d53ca/setuptools_scm-7.0.5.tar.gz
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
PDEPEND="
	dev-python/importlib_metadata[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/setuptools_scm-7.0.2-importlib-metadata.patch
)
S="${WORKDIR}/setuptools_scm-7.0.5"