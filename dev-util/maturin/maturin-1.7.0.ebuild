# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://files.pythonhosted.org/packages/80/da/a4bbd6e97f3645f4ebd725321aa235e22e31037dfd92caf4539f721c0a5a/maturin-1.7.0.tar.gz -> maturin-1.7.0.tar.gz
https://direct.funtoo.org/ff/d5/bc/ffd5bc1b1468d4c80dd842b7dd7830fe34eb6830ea23c1beceef769a690ad26be6e47f988de1eeed0aa5329c53ff222ea672b443418995ac82d383b6f94549c6 -> maturin-1.7.0-funtoo-crates-bundle-f548a79fe2dcd8c6515d7c72ca39924e0858c97ef0cbed345dfcc12dc5173fd7be20cb2b30b950ae030fa916083dfca1ad8b6bb2ba519d9b765635402f222ed4.tar.gz

$(cargo_crate_uris ${CRATES})"

DEPEND="dev-python/setuptools-rust[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.7.0"