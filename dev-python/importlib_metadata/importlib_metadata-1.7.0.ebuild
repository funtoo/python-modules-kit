# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/e2/ae/0b037584024c1557e537d25482c306cf6327b5a09b6c4b893579292c1c38/importlib_metadata-1.7.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/zipp[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/configparser-3.5[${PYTHON_USEDEP}]' -2)
	$(python_gen_cond_dep 'dev-python/contextlib2[${PYTHON_USEDEP}]' -2)
	$(python_gen_cond_dep 'dev-python/pathlib2[${PYTHON_USEDEP}]' -2)
"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	test? (
		${RDEPEND}
		$(python_gen_cond_dep 'dev-python/importlib_resources[${PYTHON_USEDEP}]' pypy{,3} python{2_7,3_{5,6}})
		dev-python/packaging[${PYTHON_USEDEP}]
	)
"

distutils_enable_sphinx "${PN}/docs" \
	'>=dev-python/rst-linker-1.9'
distutils_enable_tests unittest