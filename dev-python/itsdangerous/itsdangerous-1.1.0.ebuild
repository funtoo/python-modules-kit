# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Various helpers to pass trusted data to untrusted environments and back"
HOMEPAGE="https://pythonhosted.org/itsdangerous/ https://pypi.org/project/itsdangerous/"
SRC_URI="https://files.pythonhosted.org/packages/68/1a/f27de07a8a304ad5fa817bbe383d1238ac4396da447fa11ed937039fa04b/itsdangerous-1.1.0.tar.gz -> itsdangerous-1.1.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/freezegun[${PYTHON_USEDEP}] )"

distutils_enable_tests pytest