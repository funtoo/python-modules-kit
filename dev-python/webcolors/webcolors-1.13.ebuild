# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="A library for working with the color formats defined by HTML and CSS."
HOMEPAGE=" https://pypi.org/project/webcolors/"
SRC_URI="https://files.pythonhosted.org/packages/a1/fb/f95560c6a5d4469d9c49e24cf1b5d4d21ffab5608251c6020a965fb7791c/webcolors-1.13.tar.gz -> webcolors-1.13.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/webcolors-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/webcolors-1.13"