# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extract semantic information about static Python code"
HOMEPAGE="https://github.com/serge-sans-paille/beniget/ https://pypi.org/project/beniget/"
SRC_URI="https://files.pythonhosted.org/packages/2e/27/5bb01af8f2860d431b98d0721b96ff2cea979106cae3f2d093ec74f6400c/beniget-0.4.2.post1.tar.gz -> beniget-0.4.2.post1.tar.gz"

DEPEND=""
RDEPEND="dev-python/gast[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/beniget-0.4.2.post1"