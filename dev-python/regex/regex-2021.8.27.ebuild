# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="https://bitbucket.org/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/e8/6a/15aa779bd30653c2b0e8423a47945640dbe7f9d70ecc26c007a6b9d77540/regex-2021.8.27.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="doc python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/regex-2021.8.27"

python_install_all() {
	use doc && local HTML_DOCS=( docs/Features.html )
	local DOCS=( README.rst docs/*.rst )
	distutils-r1_python_install_all
}
