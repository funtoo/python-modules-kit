# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Attributes without boilerplate"
HOMEPAGE="
	https://github.com/hynek/attrs
	https://attrs.readthedocs.org/
	https://pypi.org/project/attrs/"
SRC_URI="https://files.pythonhosted.org/packages/f0/cb/80a4a274df7da7b8baf083249b0890a0579374c3d74b5ac0ee9291f912dc/attrs-20.3.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/zope-interface[${PYTHON_USEDEP}]"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		$(python_gen_impl_dep sqlite)
		>=dev-python/hypothesis-3.6.0[${PYTHON_USEDEP}]
		>=dev-python/pytest-4.3.0[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest