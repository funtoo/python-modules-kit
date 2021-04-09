# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( 2+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="Extensible Python-based build utility"
HOMEPAGE="https://www.scons.org/"
SRC_URI="https://files.pythonhosted.org/packages/de/95/29892f46a6da11e90154147b96a18695c8562e94119e8084352f71e61d24/scons-3.1.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/scons-3.1.2"