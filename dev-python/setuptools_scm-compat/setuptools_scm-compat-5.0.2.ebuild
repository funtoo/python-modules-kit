# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools_scm/ https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/56/c9/09f4a531720b1bf54f316fdff926fbb937c59a9c4a34e3a533b26e501898/setuptools_scm-5.0.2.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/setuptools_scm-6.0.0 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/setuptools_scm-5.0.2"

post_src_install() {
	rm -rf ${D}/usr/bin
}