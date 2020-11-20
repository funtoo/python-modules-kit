# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/ac/e9/007435436b681eaf80790ee0bc828672f20bd81b856c892cc39dc4065365/pytest-salt-factories-0.96.0.tar.gz"

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
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pytest-salt-factories-${PV}"

src_prepare() {
	rm ${S}/tests/__init__.py || die
	default
}
