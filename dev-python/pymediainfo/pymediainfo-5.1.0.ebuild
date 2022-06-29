# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python wrapper for the mediainfo library."
HOMEPAGE="https://github.com/sbraz/pymediainfo https://pypi.org/project/pymediainfo/"
SRC_URI="https://files.pythonhosted.org/packages/3f/06/89b92a27fe2e5be1519b268ec5b92eabcaa7421a158c3ad874b439d0f0ef/pymediainfo-5.1.0.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	media-libs/libmediainfo
	$(python_gen_cond_dep '
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' -3
	)"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pymediainfo-5.1.0"