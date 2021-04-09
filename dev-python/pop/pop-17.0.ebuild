# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/7e/6d/0c0558c156ecc9f0ab301d0b73dc44ef01c6680da1830f022bdf43c257fb/pop-17.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pop-17.0"

# drobbins fixed upstream
src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt
	default
}
