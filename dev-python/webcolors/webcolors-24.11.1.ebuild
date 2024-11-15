# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="pdm-backend"
inherit distutils-r1

DESCRIPTION="A library for working with the color formats defined by HTML and CSS."
HOMEPAGE="None https://pypi.org/project/webcolors/"
SRC_URI="https://files.pythonhosted.org/packages/7b/29/061ec845fb58521848f3739e466efd8250b4b7b98c1b6c5bf4d40b419b7e/webcolors-24.11.1.tar.gz -> webcolors-24.11.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/webcolors-24.11.1"