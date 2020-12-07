# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/66/e3/26bf4eddbd2feb1eb7ebdf11c0c2eae56646b8bdc9bf8649390bc6da7e4c/setuptools-declarative-requirements-1.1.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/setuptools-declarative-requirements-${PV}"

# https://github.com/s0undt3ch/setuptools-declarative-requirements/pull/3
src_prepare() {
	rm ${S}/tests/__init__.py || die
	default
}
