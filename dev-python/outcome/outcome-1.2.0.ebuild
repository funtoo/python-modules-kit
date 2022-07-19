# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/python-trio/outcome https://pypi.org/project/outcome/"
SRC_URI="https://files.pythonhosted.org/packages/dd/91/741e1626e89fdc3664169e16300c59eefa4b23540cc6d6c70450f885098f/outcome-1.2.0.tar.gz -> outcome-1.2.0.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 MIT )"
KEYWORDS="*"
S="${WORKDIR}/outcome-1.2.0"