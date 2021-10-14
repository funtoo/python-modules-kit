# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=no
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="YAML parser and emitter for Python"
HOMEPAGE="https://pyyaml.org/wiki/PyYAML
	https://pypi.org/project/PyYAML/
	https://github.com/yaml/pyyaml"
SRC_URI="https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="examples +libyaml"
S="${WORKDIR}/PyYAML-${PV}"

RDEPEND="libyaml? ( dev-libs/libyaml:= )"
DEPEND="${RDEPEND}
	libyaml? (
		$(python_gen_cond_dep '
			dev-python/cython[${PYTHON_USEDEP}]
		' 'python*')
	)"

distutils_enable_tests setup.py

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