# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python wrapper for the mediainfo library."
HOMEPAGE="https://github.com/sbraz/pymediainfo https://pypi.org/project/pymediainfo/"
SRC_URI="https://files.pythonhosted.org/packages/0f/ed/a02b18943f9162644f90354fe6445410e942c857dd21ded758f630ba41c0/pymediainfo-6.1.0.tar.gz -> pymediainfo-6.1.0.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	media-libs/libmediainfo
	$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pymediainfo-6.1.0"