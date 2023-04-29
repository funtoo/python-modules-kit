# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/python-hyper/h2 https://pypi.org/project/h2/"
SRC_URI="https://files.pythonhosted.org/packages/2a/32/fec683ddd10629ea4ea46d206752a95a2d8a48c22521edd70b142488efe1/h2-4.1.0.tar.gz -> h2-4.1.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/hpack[${PYTHON_USEDEP}]
	dev-python/hyperframe[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/h2-4.1.0"