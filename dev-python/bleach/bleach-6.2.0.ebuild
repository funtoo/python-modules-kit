# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="An easy safelist-based HTML-sanitizing tool."
HOMEPAGE="https://github.com/mozilla/bleach https://pypi.org/project/bleach/"
SRC_URI="https://files.pythonhosted.org/packages/76/9a/0e33f5054c54d349ea62c277191c020c2d6ef1d65ab2cb1993f91ec846d1/bleach-6.2.0.tar.gz -> bleach-6.2.0.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	dev-python/webencodings[${PYTHON_USEDEP}]
	dev-python/tinycss2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/bleach-6.2.0"