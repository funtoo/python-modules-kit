# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="Naming Convention checker for Python"
HOMEPAGE="https://github.com/PyCQA/pep8-naming"
SRC_URI="https://files.pythonhosted.org/packages/06/af/1e182d83519eb3fca41befaa2b671f1dcb4c4280e830aa0908c038b1de67/pep8-naming-0.10.0.tar.gz -> pep8-naming-0.10.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND=">=dev-python/flake8-polyfill-1.0.2[${PYTHON_USEDEP}]
	<dev-python/flake8-polyfill-2.0.0"
DEPEND="${RDEPEND}"

DOCS="README.rst"