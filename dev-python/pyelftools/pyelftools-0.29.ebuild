# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )
inherit distutils-r1

DESCRIPTION="pure-Python library for analyzing ELF files and DWARF debugging information"
HOMEPAGE="https://pypi.org/project/pyelftools/ https://github.com/eliben/pyelftools"
SRC_URI="https://files.pythonhosted.org/packages/0e/35/e76da824595452a5ad07f289ea1737ca0971fc6cc7b6ee9464279be06b5e/pyelftools-0.29.tar.gz -> pyelftools-0.29.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="*"
IUSE="examples"

python_test() {
	# readelf_tests often fails due to host `readelf` changing output format
	local t
	for t in all_unittests examples_test ; do
		"${PYTHON}" ./test/run_${t}.py || die "Tests fail with ${EPYTHON}"
	done
}

python_install_all() {
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}