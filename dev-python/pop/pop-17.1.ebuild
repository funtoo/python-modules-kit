# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/f6/17/5c8e35c886ed175eae3c9fcad6875ae89e97e2a1673c2293fc6c205e634b/pop-17.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pop-17.1"

# drobbins fixed upstream
src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt
	default
}
