# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://files.pythonhosted.org/packages/51/28/31a650d9209d873b6aec759c944bd284155154d7a01f7f541786d7c435ca/maturin-1.7.4.tar.gz -> maturin-1.7.4.tar.gz
https://direct.funtoo.org/f8/ba/b8/f8bab8e6fd4d70c6b51ce35e7ed12c7320cd6f5b82c0ade397e3fd56096365fc43cd67be82471c3aaca80eb98b2ed96a21e2b7a2098294ecebd49be4b3ae79b7 -> maturin-1.7.4-funtoo-crates-bundle-bdd0f0deae25444b2c35336ab18c6dc172e1589ffb0c8a5c0495b77b352e6ed4ef2aefddf24944020712ce082b344d38648b31d69f29edf21223813992bf50cf.tar.gz

$(cargo_crate_uris ${CRATES})"

DEPEND="dev-python/setuptools-rust[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.7.4"