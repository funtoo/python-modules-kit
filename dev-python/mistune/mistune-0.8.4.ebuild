# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="The fastest markdown parser in pure Python"
HOMEPAGE="https://github.com/lepture/mistune https://pypi.org/project/mistune/"
SRC_URI="https://files.pythonhosted.org/packages/2d/a4/509f6e7783ddd35482feda27bc7f72e65b5e7dc910eca4ab2164daf9c577/mistune-0.8.4.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/mistune-0.8.4"