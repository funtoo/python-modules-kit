# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/f2/3a/b8e17cbc1e346e0d522e215ce85471b43c88440f5e12d1b1ba434a77f6bc/pop-config-6.11.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/pop[${PYTHON_USEDEP}]
	dev-python/dict-toolbox[${PYTHON_USEDEP}]
	dev-python/aiologger[${PYTHON_USEDEP}]
	dev-python/aiofiles[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pop-config-6.11"

# drobbins fixed upstream
src_prepare() {
	touch ${S}/requirements.txt
	default
}
