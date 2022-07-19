# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/naimetti/rfc3339-validator https://pypi.org/project/rfc3339-validator/"
SRC_URI="https://files.pythonhosted.org/packages/28/ea/a9387748e2d111c3c2b275ba970b735e04e15cdb1eb30693b6b5708c4dbd/rfc3339_validator-0.1.4.tar.gz -> rfc3339_validator-0.1.4.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/strict-rfc3339[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rfc3339_validator-0.1.4"