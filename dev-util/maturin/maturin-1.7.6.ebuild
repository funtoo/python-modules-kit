# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://files.pythonhosted.org/packages/c1/e6/e888521dada73aa113b6007db391b1df51b0f9fbfc8fc574722f38b05c5e/maturin-1.7.6.tar.gz -> maturin-1.7.6.tar.gz
https://direct.funtoo.org/bd/0c/b0/bd0cb0ea0369da08da9e68759d7f97050548e3fae882bc923e3c50c8ec45cfa91f169dbbc6e89d09376a4ecf4474ae23e6d1ff510801ee67224b83ba35725189 -> maturin-1.7.6-funtoo-crates-bundle-bee69162c2509b03668eb7846c7957f9d1735a61bb3ebabd7114ac69e2309cb1c398b1728fe243c268e5c61524f2c50f528526aa33e24dddad076587c46305af.tar.gz

$(cargo_crate_uris ${CRATES})"

DEPEND="dev-python/setuptools-rust[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.7.6"