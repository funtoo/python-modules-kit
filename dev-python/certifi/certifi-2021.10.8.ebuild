# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1 prefix readme.gentoo-r1

DESCRIPTION="Python package for providing Mozilla's CA Bundle"
HOMEPAGE="http://certifi.io/ https://pypi.org/project/certifi"
SRC_URI="https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="app-misc/ca-certificates"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_prepare_all() {
	distutils-r1_python_prepare_all
	cp ${FILESDIR}/core.py certifi/ || die
	eprefixify certifi/core.py
}

python_install_all() {
	distutils-r1_python_install_all

	local DOC_CONTENTS="
		In Gentoo, we don't use certifi's bundled CA certificates.
		Instead we remove bundled cacert.pem and patch certifi
		to return system's CA certificates.
	"
	readme.gentoo_create_doc

	# Precaution -- nothing should use bundled CA certificates
	find "${D}" -name 'cacert.pem' -delete || die "Failed to delete bundled CA certificates"
}