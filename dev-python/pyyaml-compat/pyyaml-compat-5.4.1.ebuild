# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="YAML parser and emitter for Python"
HOMEPAGE="https://pyyaml.org/wiki/PyYAML
https://pypi.org/project/PyYAML/
https://github.com/yaml/pyyaml
"
SRC_URI="https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz -> PyYAML-5.4.1.tar.gz
"

DEPEND="
	libyaml? ( dev-libs/libyaml )
	libyaml? ( <dev-python/cython-3[${PYTHON_USEDEP}] )"
RDEPEND="!<dev-python/pyyaml-6.0 
	libyaml? ( dev-libs/libyaml )
	libyaml? ( <dev-python/cython-3[${PYTHON_USEDEP}] )"
IUSE="examples +libyaml"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/PyYAML-5.4.1"

python_configure_all() {
	mydistutilsargs=( $(use_with libyaml) )
}

python_install_all() {
	distutils-r1_python_install_all
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}
	fi
}


post_src_install() {
	rm -rf ${D}/usr/bin
}