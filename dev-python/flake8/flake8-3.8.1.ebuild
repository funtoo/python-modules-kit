# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="A wrapper around PyFlakes, pep8 & mccabe"
HOMEPAGE="https://bitbucket.org/tarek/flake8 https://pypi.org/project/flake8/"
SRC_URI="https://files.pythonhosted.org/packages/73/9e/dfb9413d2962433551a93927be524a1b4369e4ac317ca3231191c6933ae7/flake8-3.8.1.tar.gz -> flake8-3.8.1.tar.gz"

KEYWORDS="*"
IUSE="test"
LICENSE="MIT"
SLOT="0"

# requires.txt inc. mccabe however that creates a circular dep
RDEPEND="
    >=dev-python/entrypoints-0.3[${PYTHON_USEDEP}]
    <dev-python/entrypoints-0.4[${PYTHON_USEDEP}]
	>=dev-python/pyflakes-2.1.0[${PYTHON_USEDEP}]
	<dev-python/pyflakes-2.2.0[${PYTHON_USEDEP}]
	>=dev-python/pycodestyle-2.5.0[${PYTHON_USEDEP}]
	<dev-python/pycodestyle-2.6.0[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/configparser[${PYTHON_USEDEP}]' 'python2*' pypy )
"
PDEPEND="
	>=dev-python/mccabe-0.6.0[${PYTHON_USEDEP}]
	<dev-python/mccabe-0.7.0[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		${PDEPEND}
		dev-python/pytest[${PYTHON_USEDEP}]
		>=dev-python/mock-2.0.0[${PYTHON_USEDEP}]
	)
"

python_prepare_all() {
	# Flake8 falsely assumes it needs pytest-runner unconditionally and will
	# try to install it, causing sandbox violations.
	sed -i -e "/setup_requires=\['pytest-runner'\],/d" setup.py || die

	distutils-r1_python_prepare_all
}

python_test() {
	py.test -v || die "Tests fail with ${EPYTHON}"
}