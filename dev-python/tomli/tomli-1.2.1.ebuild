# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="autostub"
inherit distutils-r1

DESCRIPTION="A lil' TOML parser"
HOMEPAGE=" https://pypi.org/project/tomli/"
SRC_URI="https://files.pythonhosted.org/packages/75/50/973397c5ba854445bcc396b593b5db1958da6ab8d665b27397daa1497018/tomli-1.2.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/tomli-1.2.1"

DOCS=( README.md )
