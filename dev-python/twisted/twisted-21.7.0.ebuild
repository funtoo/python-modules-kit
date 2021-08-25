# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="An asynchronous networking framework written in Python"
HOMEPAGE="https://twistedmatrix.com/ https://pypi.org/project/Twisted/"
SRC_URI="https://files.pythonhosted.org/packages/b2/46/ee13d2d8dd4d380132199d5b3526e01103fd9a3c43b613718cd01e179987/Twisted-21.7.0.tar.gz
"

DEPEND=">=dev-python/incremental-21.3.0[${PYTHON_USEDEP}]"
RDEPEND="
	!dev-python/twisted-core
	!dev-python/twisted-conch
	!dev-python/twisted-lore
	!dev-python/twisted-mail
	!dev-python/twisted-names
	!dev-python/twisted-news
	!dev-python/twisted-pair
	!dev-python/twisted-runner
	!dev-python/twisted-words
	!dev-python/twisted-web
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
	>=dev-python/automat-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/constantly-15.1.0[${PYTHON_USEDEP}]
	>=dev-python/hyperlink-17.1.1[${PYTHON_USEDEP}]
	>=dev-python/incremental-21.3.0[${PYTHON_USEDEP}]
	>=dev-python/pyhamcrest-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-3.6.5[${PYTHON_USEDEP}]
	>=dev-python/zope-interface-4.4.2[${PYTHON_USEDEP}]
	conch? ( >=dev-python/appdirs-1.4.0[${PYTHON_USEDEP}] dev-python/bcrypt[${PYTHON_USEDEP}] >=dev-python/cryptography-1.5.0[${PYTHON_USEDEP}] dev-python/pyasn1[${PYTHON_USEDEP}] )
	crypt? ( >=dev-python/pyopenssl-16.0.0[${PYTHON_USEDEP}] dev-python/service_identity[${PYTHON_USEDEP}] >=dev-python/idna-0.6[${PYTHON_USEDEP}] )
	serial? ( >=dev-python/pyserial-3.0[${PYTHON_USEDEP}] )
	http2? ( >=dev-python/hyper-h2-3.0.0[${PYTHON_USEDEP}] <dev-python/hyper-h2-4.0.0[${PYTHON_USEDEP}] >=dev-python/priority-1.1.0[${PYTHON_USEDEP}] <dev-python/priority-2.0[${PYTHON_USEDEP}] )"

IUSE="conch crypt http2 serial"
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/Twisted-21.7.0"

python_install() {
	distutils-r1_python_install
	cd "${D}$(python_get_sitedir)" || die
	# own the dropin.cache so we don't leave orphans
	touch twisted/plugins/dropin.cache || die
	python_doscript "${FILESDIR}"/twisted-regen-cache
}
python_install_all() {
	distutils-r1_python_install_all
	newconfd "${FILESDIR}/twistd.conf" twistd
	newinitd "${FILESDIR}/twistd.init" twistd
}
python_postinst() {
	twisted-regen-cache || die
}
pkg_postinst() {
	python_foreach_impl python_postinst
	einfo "Install complete"
}
python_postrm() {
	rm -f "${ROOT}$(python_get_sitedir)/twisted/plugins/dropin.cache" || die
}
pkg_postrm() {
	# if we're removing the last version, remove the cache file
	if [[ ! ${REPLACING_VERSIONS} ]]; then
		python_foreach_impl python_postrm
	fi
}
