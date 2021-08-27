# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="PycURL -- A Python Interface To The cURL library"
HOMEPAGE="http://pycurl.io/ https://pypi.org/project/pycurl/"
SRC_URI="https://files.pythonhosted.org/packages/47/f9/c41d6830f7bd4e70d5726d26f8564538d08ca3a7ac3db98b325f94cdcb7f/pycurl-7.44.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pycurl-compat )
	>=net-misc/curl-7.25.0-r1:=[ssl=]
	ssl? (
		net-misc/curl[curl_ssl_gnutls(-)=,curl_ssl_libressl(-)=,curl_ssl_nss(-)=,curl_ssl_openssl(-)=,-curl_ssl_axtls(-),-curl_ssl_cyassl(-)]
		curl_ssl_gnutls? ( >=net-libs/gnutls-2.11.0:= )
		curl_ssl_openssl? ( dev-libs/openssl:= )
	)"
IUSE="curl_ssl_gnutls curl_ssl_libressl curl_ssl_nss +curl_ssl_openssl examples ssl python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"

S="${WORKDIR}/pycurl-7.44.1"

python_prepare_all() {
	# docs installed into the wrong directory
	sed -e "/setup_args\['data_files'\] = /d" -i setup.py || die
	# a cheap hack to make setuptools usage not depend on wheel
	# -- replace wheel with random standard module that is used anyway
	sed -e 's:wheel:sys:' -i setup.py || die
	distutils-r1_python_prepare_all
}
python_configure_all() {
	# Override faulty detection in setup.py, bug 510974.
	export PYCURL_SSL_LIBRARY=${CURL_SSL/libressl/openssl}
}
python_install_all() {
	local HTML_DOCS=( doc/. )
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}
