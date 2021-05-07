# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/a0/a3/3d909e1e0b39d4d2fcfbb8fca6fc259c14b7bf06f34482c70c198d9c1c9a/pop-18.0.0.tar.gz
"

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

S="${WORKDIR}/pop-18.0.0"

# drobbins fixed upstream
src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt
	default
}
