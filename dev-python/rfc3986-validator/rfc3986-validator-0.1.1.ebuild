# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Pure python rfc3986 validator"
HOMEPAGE="https://github.com/naimetti/rfc3986-validator https://pypi.org/project/rfc3986-validator/"
SRC_URI="https://files.pythonhosted.org/packages/da/88/f270de456dd7d11dcc808abfa291ecdd3f45ff44e3b549ffa01b126464d0/rfc3986_validator-0.1.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/rfc3987[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/rfc3986-validator-0.1.1"

python_prepare_all() {
	# remove dep on pytest-runner
	sed -i -r "s:('|\")pytest-runner('|\")(,|)::" setup.py || die
	distutils-r1_python_prepare_all
}
