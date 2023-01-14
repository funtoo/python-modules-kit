# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pytest-dev/pluggy https://pypi.org/project/pluggy/"
SRC_URI="https://files.pythonhosted.org/packages/a7/8c/55c629849c64e665258d8976322dfdad171fa2f57117590662d8a67618a4/pluggy-0.9.0.tar.gz -> pluggy-0.9.0.tar.gz
"

DEPEND=""
RDEPEND="!<=dev-python/pluggy-1.0.0 dev-python/importlib_metadata[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pluggy-0.9.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}