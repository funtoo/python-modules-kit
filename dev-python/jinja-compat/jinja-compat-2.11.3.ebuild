# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A full-featured template engine for Python"
HOMEPAGE="https://palletsprojects.com/p/jinja/ https://pypi.org/project/Jinja2/"
SRC_URI="https://files.pythonhosted.org/packages/4f/e7/65300e6b32e69768ded990494809106f87da1d436418d5f1367ed3966fd7/Jinja2-2.11.3.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/jinja-3.0.0 
	!dev-python/jinja:compat
	dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE="examples"
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/Jinja2-2.11.3"

distutils_enable_sphinx docs \
	dev-python/sphinx-issues \
	dev-python/pallets-sphinx-themes
src_prepare() {
	# avoid unnecessary dep on extra sphinxcontrib modules
	sed -i '/sphinxcontrib.log_cabinet/ d' docs/conf.py || die
	distutils-r1_src_prepare
}
python_install_all() {
	if use examples ; then
		docinto examples
		dodoc -r examples/.
	fi
	distutils-r1_python_install_all
}
pkg_postinst() {
	if ! has_version dev-python/Babel; then
		elog "For i18n support, please emerge dev-python/Babel."
	fi
}
