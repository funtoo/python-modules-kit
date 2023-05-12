# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python wrapper for the mediainfo library."
HOMEPAGE="https://github.com/sbraz/pymediainfo https://pypi.org/project/pymediainfo/"
SRC_URI="https://files.pythonhosted.org/packages/72/dc/549fc39fbeb6907dc2ef2fa96cad9eea39bac043f4ce56efe243c926480f/pymediainfo-6.0.1.tar.gz -> pymediainfo-6.0.1.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	media-libs/libmediainfo
	$(python_gen_cond_dep '
	' -3
	)
	dev-python/importlib_metadata[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pymediainfo-6.0.1"