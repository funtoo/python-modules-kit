# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="File support for setuptools declarative setup.cfg"
HOMEPAGE="https://github.com/s0undt3ch/setuptools-declarative-requirements https://pypi.org/project/setuptools-declarative-requirements/"
SRC_URI="https://files.pythonhosted.org/packages/f0/06/85fb4a4ccb82f5040cd5ddc4ab55db5f9d16e0a1b43887e82a8e671e17cb/setuptools-declarative-requirements-1.3.0.tar.gz -> setuptools-declarative-requirements-1.3.0.tar.gz
"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/setuptools-declarative-requirements-1.3.0"

# https://github.com/s0undt3ch/setuptools-declarative-requirements/pull/3
src_prepare() {
	rm ${S}/tests/__init__.py || die
	default
}
