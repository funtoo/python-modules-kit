# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="autostub"
inherit distutils-r1

DESCRIPTION="A lil' TOML parser"
HOMEPAGE=" https://pypi.org/project/tomli/"
SRC_URI="https://files.pythonhosted.org/packages/c0/3f/d7af728f075fb08564c5949a9c95e44352e23dee646869fa104a3b2060a3/tomli-2.0.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/tomli-2.0.1"

DOCS=( README.md )
