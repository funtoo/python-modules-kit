# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/25/81/d807672b1a38aaa483eedd99c18b641a0561727c9758ca52d8acee46db65/rend-6.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/rend-6"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
