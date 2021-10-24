# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python parsing module"
HOMEPAGE="https://github.com/pyparsing/pyparsing/ https://pypi.org/project/pyparsing/"
SRC_URI="https://files.pythonhosted.org/packages/31/c9/b29ea153b9bffaae787ecc81873b4b51bd36cc13c37586b41891beae37eb/pyparsing-3.0.1.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pyparsing-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyparsing-3.0.1"