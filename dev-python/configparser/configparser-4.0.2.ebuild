# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Updated configparser from stdlib for earlier Pythons."
HOMEPAGE="None https://pypi.org/project/configparser/"
SRC_URI="https://files.pythonhosted.org/packages/16/4f/48975536bd488d3a272549eb795ac4a13a5f7fcdc8995def77fbef3532ee/configparser-4.0.2.tar.gz -> configparser-4.0.2.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/backports[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/configparser-4.0.2"

post_src_install() {
	# This is installed by backports:
	rm -f ${D}/usr/lib*/python*/site-packages/backports/__init__.py
}
