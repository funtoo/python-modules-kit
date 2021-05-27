# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/6f/82/d92e837de1609655a67e795f5abe7098c0f8e32ad85748fe04f0d8469dc5/pop-19.0.1.tar.gz
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

S="${WORKDIR}/pop-19.0.1"

# drobbins fixed upstream
src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt
	default
}
