# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Low-level, data-driven core of boto 3."
HOMEPAGE="https://github.com/boto/botocore https://pypi.org/project/botocore/"
SRC_URI="https://files.pythonhosted.org/packages/b2/1b/a6f79cf60b3f0317eba52ab0d766250f8ac8c9a35314168dacb5df6dac99/botocore-1.21.11.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/tox[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/behave[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/botocore-1.21.11"