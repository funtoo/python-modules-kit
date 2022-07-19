# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

MY_PN="Flask-JWT"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Flask-JWT is a Flask extension that adds basic Json Web Token features to any application"
HOMEPAGE="https://pythonhosted.org/Flask-JWT"
SRC_URI="https://files.pythonhosted.org/packages/9b/8a/5d3b2e593f1fc5c1b464aa1cbf35023a4400a2b53ce6a52801f68d7a1eeb/Flask-JWT-0.3.2.tar.gz -> Flask-JWT-0.3.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="dev-python/flask[${PYTHON_USEDEP}]
		dev-python/pyjwt[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( ${RDEPEND} )"

S="${WORKDIR}/${MY_P}"

python_prepare_all() {
	# relax PyJWT dependency.
	sed -i 's/,<1.5.0//' requirements.txt || die "sed failed"
	distutils-r1_python_prepare_all
}