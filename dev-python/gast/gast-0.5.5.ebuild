# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python AST that abstracts the underlying Python version"
HOMEPAGE="https://github.com/serge-sans-paille/gast/ https://pypi.org/project/gast/"
SRC_URI="https://files.pythonhosted.org/packages/f4/85/d65445079010a6bf35041455b7b97e1bfca49f80b8aed41f89f7831cb02d/gast-0.5.5.tar.gz -> gast-0.5.5.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/gast-0.5.5"