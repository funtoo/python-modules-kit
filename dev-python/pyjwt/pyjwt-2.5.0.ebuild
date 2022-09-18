# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1 eutils

DESCRIPTION=""
HOMEPAGE="https://github.com/jpadilla/pyjwt https://pypi.org/project/PyJWT/"
SRC_URI="https://files.pythonhosted.org/packages/d4/63/6f57a751c9e3135856b44e2c29c548741ec14db3d24b9666e97292aa968e/PyJWT-2.5.0.tar.gz -> PyJWT-2.5.0.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="python_targets_python2_7? ( dev-python/pyjwt-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/PyJWT-2.5.0"

pkg_postinst() {
	elog "Available optional features:"
	optfeature "cryptography" ">=dev-python/cryptography-1.4.0"
	optfeature "flake8" "dev-python/flake8 dev-python/flake8-import-order dev-python/pep8-naming"
}
