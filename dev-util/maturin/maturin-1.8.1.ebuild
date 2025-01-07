# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://files.pythonhosted.org/packages/9a/08/ccb0f917722a35ab0d758be9bb5edaf645c3a3d6170061f10d396ecd273f/maturin-1.8.1.tar.gz -> maturin-1.8.1.tar.gz
https://direct.funtoo.org/4c/32/57/4c325772d8dd99215f64fdaccd5df57dd01d1921cf4e8bbd703389fd44050cd63fdcf259c69c887f5ef3e8357f3c02bfd07cedd16dbdf9fa38172e5673d3ee4e -> maturin-1.8.1-funtoo-crates-bundle-8898ea3d2acf9f027eab7e0294caffa111b31f64f668790e67ad616c74f0853bba5515299ac442439e1165d16f832d8f08c3930a4e82a96d8fcf9e5e59394f7b.tar.gz

$(cargo_crate_uris ${CRATES})"

DEPEND="dev-python/setuptools-rust[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.8.1"