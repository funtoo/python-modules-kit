# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/23/82/9b53f7880d70dbbec822147dfcb12b5484d7562f21e6a780ba5d16da1d55/pop-16.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pop-config[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/dict-toolbox[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pop-${PV}"

# drobbins fixed upstream
src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt
	default
}
