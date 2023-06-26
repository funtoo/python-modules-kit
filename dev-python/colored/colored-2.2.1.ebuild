# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Simple python library for color and formatting to terminal"
HOMEPAGE="None https://pypi.org/project/colored/"
SRC_URI="https://files.pythonhosted.org/packages/8b/59/95fc71d0186b2ea57434f9bcc84bcd770fc488a921a7ca976f93b352eccd/colored-2.2.1.tar.gz -> colored-2.2.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/colored-2.2.1"