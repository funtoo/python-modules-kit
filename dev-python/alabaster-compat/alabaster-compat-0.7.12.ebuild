# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A configurable sidebar-enabled Sphinx theme"
HOMEPAGE="https://alabaster.readthedocs.io https://pypi.org/project/alabaster/"
SRC_URI="https://files.pythonhosted.org/packages/cc/b4/ed8dcb0d67d5cfb7f83c4d5463a7614cb1d078ad7ae890c9143edebbf072/alabaster-0.7.12.tar.gz -> alabaster-0.7.12.tar.gz
"

DEPEND=""
RDEPEND="!<=dev-python/alabaster-0.7.13 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/alabaster-0.7.12"

post_src_install() {
	rm -rf ${D}/usr/bin
}