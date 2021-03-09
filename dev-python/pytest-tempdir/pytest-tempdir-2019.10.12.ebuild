# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/c9/3c/8dca670b288016e579097384bfc50944c83fe18d6731042ea836b2a88a76/pytest-tempdir-2019.10.12.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/pytest-2.8.1[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pytest-tempdir-2019.10.12"