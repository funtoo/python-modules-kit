# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://files.pythonhosted.org/packages/ab/1e/085ddc0e5b08ae7af7a743a0dd6ed06b22a1332288488f1a333137885150/maturin-1.7.8.tar.gz -> maturin-1.7.8.tar.gz
https://direct.funtoo.org/bd/c1/03/bdc103d9b3d334450bdae0d01dfa8fd2113916b7f4d07826e9664c5cae84d9903a763e024c1fca810949cd89652bb2869f3793aa3f44621d35c6ca2b1986758e -> maturin-1.7.8-funtoo-crates-bundle-79aa6f01476d4ca26cf72cad2746684b5ead1b7077725207b09709448881af31bb716ca534ab387710088641e3e9ad390f35096e0b5d3bd08d57ad184795e38e.tar.gz

$(cargo_crate_uris ${CRATES})"

DEPEND="dev-python/setuptools-rust[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.7.8"