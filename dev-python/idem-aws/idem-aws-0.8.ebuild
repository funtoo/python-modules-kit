# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/e5/65/ffa48f79f8ab6f775dcb1c747c6264424362d5dec87190404a4d8b412853/idem-aws-0.8.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/idem-aws-0.8"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
