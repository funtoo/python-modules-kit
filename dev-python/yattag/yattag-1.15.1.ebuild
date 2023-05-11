# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A library to generate HTML or XML"
HOMEPAGE="https://www.yattag.org https://pypi.org/project/yattag/"
SRC_URI="https://files.pythonhosted.org/packages/c6/21/93e572d8d799ff123592ff6d80f8c50cd08042e76657c6b3ec91ea3f7f7e/yattag-1.15.1.tar.gz -> yattag-1.15.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="LGPL 2.1"
KEYWORDS="*"
S="${WORKDIR}/yattag-1.15.1"