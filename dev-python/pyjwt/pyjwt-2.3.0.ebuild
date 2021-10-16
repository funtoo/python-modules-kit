# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1 eutils

MY_PN="PyJWT"

DESCRIPTION="JSON Web Token implementation in Python"
HOMEPAGE="https://github.com/progrium/pyjwt https://pypi.org/project/PyJWT/"
SRC_URI="https://files.pythonhosted.org/packages/1d/8e/01bdcfdbb352daaba8ea406d9df149c5bba7dbf70f908d4fa4c269fe6a08/PyJWT-2.3.0.tar.gz"

LICENSE=" MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND=""
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		>=dev-python/pytest-4.0.1[${PYTHON_USEDEP}]
		>=dev-python/pytest-cov-2.6.0[${PYTHON_USEDEP}]
		>=dev-python/pytest-runner-4.2[${PYTHON_USEDEP}]
	)"

S="${WORKDIR}"/${MY_PN}-${PV}

python_prepare_all() {
	find . -name '__pycache__' -prune -exec rm -rf {} \; || die "Cleaning __pycache__ failed"
	find . -name '*.pyc' -exec rm -f {} \; || die "Cleaing *.pyc failed"

	# enables coverage, we don't need that
	rm setup.cfg || die

	distutils-r1_python_prepare_all
}

python_test() {
	pytest -vv || die "Tests fail with ${EPYTHON}"
}

pkg_postinst() {
	elog "Available optional features:"
	optfeature "cryptography" ">=dev-python/cryptography-1.4.0"
	optfeature "flake8" "dev-python/flake8 dev-python/flake8-import-order dev-python/pep8-naming"
}