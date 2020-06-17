# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="Naming Convention checker for Python"
HOMEPAGE="https://github.com/PyCQA/pep8-naming"
SRC_URI="https://files.pythonhosted.org/packages/23/f4/55e9fcad80b3210d607e87008f1db5607945d4615f739b397dc97f5f0bba/pep8-naming-0.11.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND=">=dev-python/flake8-polyfill-1.0.2[${PYTHON_USEDEP}]
	<dev-python/flake8-polyfill-2.0.0"
DEPEND="${RDEPEND}"

DOCS="README.rst"