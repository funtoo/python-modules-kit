# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Better dates and times for Python"
HOMEPAGE="https://arrow.readthedocs.io https://pypi.org/project/arrow/"
SRC_URI="https://files.pythonhosted.org/packages/02/44/13330b2e617cf0da9036dba69c8d6a3e30f88e94c4fce467f6ed413649a4/arrow-0.9.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/arrow-1.1.1-r1 
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/backports-functools-lru-cache[${PYTHON_USEDEP}]
	dev-python/pathlib[${PYTHON_USEDEP}]
	' -2
	)"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/arrow-0.9.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}