# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
inherit distutils-r1

DESCRIPTION="HTTP library for human beings"
HOMEPAGE="https://requests.readthedocs.io/en/master/"
SRC_URI="https://files.pythonhosted.org/packages/e0/69/122171604bcef06825fa1c05bd9e9b1d43bc9feb8c6c0717c42c92cc6f3c/requests-2.30.0.tar.gz -> requests-2.30.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/requests-compat )
	$(python_gen_cond_dep '
	' -3
	)
	>=dev-python/certifi-2017.4.17[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	dev-python/charset_normalizer[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
	socks5? ( >=dev-python/PySocks-1.5.6[${PYTHON_USEDEP}] )
	ssl? ( >=dev-python/cryptography-1.3.4[${PYTHON_USEDEP}] >=dev-python/pyopenssl-0.14[${PYTHON_USEDEP}] )"
IUSE="socks5 +ssl python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/requests-2.30.0"

# FL-7939, FL-10662: relax deps for idna, charset_normalizer: requests sets "cautionary upper masks" which can break:
src_prepare() {
	sed -i -e '/^idna/c idna' -e '/^charset_normalizer/c charset_normalizer' requests.egg-info/requires.txt || die
	sed -i -e 's/idna.*/idna/' -e 's/charset_normalizer.*/charset_normalizer/' setup.cfg || die
	sed -i -e 's/"idna.*$/"idna",/' -e 's/"charset_normalizer.*$/"charset_normalizer",/' setup.py || die
	distutils-r1_src_prepare
}
