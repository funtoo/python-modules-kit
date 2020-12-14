# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="HTTP library for human beings"
HOMEPAGE="http://python-requests.org/"
SRC_URI="https://files.pythonhosted.org/packages/9f/14/4a6542a078773957aa83101336375c9597e6fe5889d20abda9c38f9f3ff2/requests-2.25.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="socks5 +ssl"

RDEPEND="
	>=dev-python/certifi-2017.4.17[${PYTHON_USEDEP}]
	dev-python/chardet
	>=dev-python/idna-2.5[${PYTHON_USEDEP}]
	socks5? ( >=dev-python/PySocks-1.5.6[${PYTHON_USEDEP}] )
	ssl? (
		>=dev-python/cryptography-1.3.4[${PYTHON_USEDEP}]
		>=dev-python/pyopenssl-0.14[$(python_gen_usedep 'python*' pypy)]
	)
	dev-python/urllib3[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"

# tests connect to various remote sites
RESTRICT="test"

#DEPEND+="
#	test? (
#		dev-python/pytest[${PYTHON_USEDEP}]
#		dev-python/pytest-httpbin[${PYTHON_USEDEP}]
#		dev-python/pytest-mock[${PYTHON_USEDEP}]
#		dev-python/pytest-xdist[${PYTHON_USEDEP}]
#		>=dev-python/PySocks-1.5.6[${PYTHON_USEDEP}]
#	)
#"

python_test() {
	py.test || die
}