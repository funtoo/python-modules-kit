# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Better dates and times for Python"
HOMEPAGE="None https://pypi.org/project/arrow/"
SRC_URI="https://files.pythonhosted.org/packages/ec/74/1cf2d9912921cebdba3fa954949206c8aa159c9cc803b88140fb227f8a0e/arrow-0.17.0.tar.gz -> arrow-0.17.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/arrow-1.1.1-r1 
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/backports-functools-lru-cache[${PYTHON_USEDEP}] dev-python/pathlib[${PYTHON_USEDEP}]' -2)"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/arrow-0.17.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}