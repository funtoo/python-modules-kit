# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Define boolean algebras, create and parse boolean expressions and create custom boolean DSL."
HOMEPAGE="https://github.com/bastikr/boolean.py https://pypi.org/project/boolean.py/"
SRC_URI="https://files.pythonhosted.org/packages/a2/d9/b6e56a303d221fc0bdff2c775e4eef7fedd58194aa5a96fa89fb71634cc9/boolean.py-4.0.tar.gz -> boolean.py-4.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/boolean.py-4.0"