# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python parsing module"
HOMEPAGE="https://github.com/pyparsing/pyparsing/ https://pypi.org/project/pyparsing/"
SRC_URI="https://files.pythonhosted.org/packages/3e/f2/e451732f6263b3b95400cd8f938bc238f109b6b5431491d45915421025e4/pyparsing-3.0.2.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pyparsing-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyparsing-3.0.2"