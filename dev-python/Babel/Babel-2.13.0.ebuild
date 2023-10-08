# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Internationalization utilities"
HOMEPAGE="https://babel.pocoo.org/ https://pypi.org/project/Babel/"
SRC_URI="https://files.pythonhosted.org/packages/d5/7d/08e7b8b1ab446121ace3de332f144be41a52049a23303375a0126d515cb7/Babel-2.13.0.tar.gz -> Babel-2.13.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/Babel-compat )
	dev-python/pytz[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Babel-2.13.0"