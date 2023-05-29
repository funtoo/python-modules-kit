# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Infer file type and MIME type checking the magic numbers signature of a file or buffer."
HOMEPAGE="https://github.com/h2non/filetype.py https://pypi.org/project/filetype/"
SRC_URI="https://files.pythonhosted.org/packages/bb/29/745f7d30d47fe0f251d3ad3dc2978a23141917661998763bebb6da007eb1/filetype-1.2.0.tar.gz -> filetype-1.2.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/filetype-1.2.0"