# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A light, configurable Sphinx theme"
HOMEPAGE=" https://pypi.org/project/alabaster/"
SRC_URI="https://files.pythonhosted.org/packages/71/c3/70da7d8ac18a4f4c502887bd2549e05745fa403e2cd9d06a8a9910a762bc/alabaster-0.7.9.tar.gz -> alabaster-0.7.9.tar.gz"

DEPEND=""
RDEPEND="!<=dev-python/alabaster-0.7.13 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/alabaster-0.7.9"

post_src_install() {
	rm -rf ${D}/usr/bin
}