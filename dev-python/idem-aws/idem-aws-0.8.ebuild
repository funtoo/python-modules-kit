# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/e5/65/ffa48f79f8ab6f775dcb1c747c6264424362d5dec87190404a4d8b412853/idem-aws-0.8.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/acct-2.3[${PYTHON_USEDEP}]
	dev-python/aioboto3[${PYTHON_USEDEP}]
	>=dev-python/dict-toolbox-1.12[${PYTHON_USEDEP}]
	>=dev-python/pop-15[${PYTHON_USEDEP}]
	>=dev-python/idem-7.6[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/idem-aws-${PV}"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
