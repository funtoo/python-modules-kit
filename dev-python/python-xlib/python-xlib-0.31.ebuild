# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python X Library"
HOMEPAGE="https://github.com/python-xlib/python-xlib https://pypi.org/project/python-xlib/"
SRC_URI="https://files.pythonhosted.org/packages/40/9c/107e22f637d33434404c07d69112b9d26b76ee0dd4dd705131ab6cdcc818/python-xlib-0.31.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
BDEPEND="doc? ( sys-apps/texinfo )"

IUSE="doc"
RESTRICT="test"
SLOT="0"
LICENSE="LGPLv2+"
KEYWORDS="*"

S="${WORKDIR}/python-xlib-0.31"

python_compile_all() {
	use doc && emake -C doc/info
}
python_install_all() {
	use doc && doinfo doc/info/*.info
	distutils-r1_python_install_all
}
