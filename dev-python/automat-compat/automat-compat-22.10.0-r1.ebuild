# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Self-service finite-state machines for the programmer on the go"
HOMEPAGE="https://github.com/glyph/Automat https://pypi.org/project/Automat/"
SRC_URI="https://files.pythonhosted.org/packages/7a/7b/9c3d26d8a0416eefbc0428f168241b32657ca260fb7ef507596ff5c2f6c4/Automat-22.10.0.tar.gz -> Automat-22.10.0.tar.gz
"

DEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/m2r[${PYTHON_USEDEP}]' -2)"
RDEPEND="!<=dev-python/automat-22.10.0 
	${DEPEND}"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/automat-22.10.0"

src_unpack() {
	default
	mv ${WORKDIR}/A* ${S} || die
}
python_prepare_all() {
	# avoid a setuptools_scm dependency
	sed -r -i "s:use_scm_version=True:version='${PV}': ;
		s:[\"']setuptools[_-]scm[\"'](,|)::" setup.py || die
	distutils-r1_python_prepare_all
}
pkg_postinst() {
	einfo "For additional visualization functionality install these optional dependencies"
	einfo "    >=dev-python/twisted-16.1.1"
	einfo "    media-gfx/graphviz[python]"
}


post_src_install() {
	rm -rf ${D}/usr/bin
}