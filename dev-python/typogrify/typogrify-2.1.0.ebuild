# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Filters for web typography, supporting Django & Jinja templates"
HOMEPAGE="https://github.com/mintchaos/typogrify/"
SRC_URI="https://files.pythonhosted.org/packages/93/8c/b73fe0050bbf67c172b7c6d0c74c356939de0e891e669667f20381c099a8/typogrify-2.1.0.tar.gz -> typogrify-2.1.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/smartypants[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/typogrify-2.1.0"