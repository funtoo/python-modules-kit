# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/db/4d/4a828c4fcec19c5275f1bed6320de8cb6b65e9ba5bbcf58b93846a9195c1/setuptools-declarative-requirements-1.2.0.tar.gz"

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
