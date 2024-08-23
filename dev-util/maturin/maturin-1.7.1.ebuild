# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://files.pythonhosted.org/packages/1d/ec/1f688d6ad82a568fd7c239f1c7a130d3fc2634977df4ef662ee0ac58a153/maturin-1.7.1.tar.gz -> maturin-1.7.1.tar.gz
https://direct.funtoo.org/d4/a0/ce/d4a0ce5854f04af71080341e5f93e2e2817e8d7d2673f5763874652fad537bc8f3e950352362a78cf1f3a2c2d6db90c8ea956097351ae867481b6706d297b53d -> maturin-1.7.1-funtoo-crates-bundle-7c6cf505cb3df67595e1a9ca7dc5a6636155e474c0762107fb74526cc4141d2664b4eee482d5f9a93551887f18feeb0c2de83bb97b6f426a5d202c0c204ff957.tar.gz

$(cargo_crate_uris ${CRATES})"

DEPEND="dev-python/setuptools-rust[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.7.1"