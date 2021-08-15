# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="Pytest Salt Plugin"
HOMEPAGE="https://github.com/saltstack/pytest-salt-factories https://pypi.org/project/pytest-salt-factories/"
SRC_URI="https://files.pythonhosted.org/packages/28/e3/6a4af4e084ad1e598284e3bc1e012c2470f62529056affaee2ca45a72e8a/pytest-salt-factories-0.907.0.tar.gz
"

DEPEND=""
RDEPEND="
	>dev-python/pytest-6.1.1[${PYTHON_USEDEP}]
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
	>=dev-python/pytest-tempdir-2019.9.6[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/pyzmq[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/setuptools-declarative-requirements[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/pytest-salt-factories-0.907.0"

# submitted PR https://github.com/saltstack/pytest-salt-factories/pull/33
src_prepare() {
	rm ${S}/tests/__init__.py || die
	default
}
