# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="A library for working with color names and color values formats defined by HTML and CSS."
HOMEPAGE="https://github.com/ubernostrum/webcolors https://pypi.org/project/webcolors/"
SRC_URI="https://files.pythonhosted.org/packages/5f/f5/004dabd8f86abe0e770df4bcde8baf658709d3ebdd4d8fa835f6680012bb/webcolors-1.12.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/webcolors-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/webcolors-1.12"