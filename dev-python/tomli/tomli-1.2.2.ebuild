# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="autostub"
inherit distutils-r1

DESCRIPTION="A lil' TOML parser"
HOMEPAGE=" https://pypi.org/project/tomli/"
SRC_URI="https://files.pythonhosted.org/packages/aa/5b/62165da80cbc6e1779f342234c7ddc6c6bc9e64cef149046a9c0456f912b/tomli-1.2.2.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/tomli-1.2.2"

DOCS=( README.md )
