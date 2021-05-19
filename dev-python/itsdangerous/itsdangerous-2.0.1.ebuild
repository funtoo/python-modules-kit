# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Various helpers to pass trusted data to untrusted environments and back"
HOMEPAGE="https://pythonhosted.org/itsdangerous/ https://pypi.org/project/itsdangerous/"
SRC_URI="https://files.pythonhosted.org/packages/58/66/d6c5859dcac92b442626427a8c7a42322068c5cd5d4a463ce78b93f730b7/itsdangerous-2.0.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/freezegun[${PYTHON_USEDEP}] )"

distutils_enable_tests pytest