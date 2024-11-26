# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://files.pythonhosted.org/packages/d5/98/0bad3ddfb7504d860e3d43edb1bc61ad3b1816d805e918467908a05a9359/maturin-1.7.5.tar.gz -> maturin-1.7.5.tar.gz
https://direct.funtoo.org/37/47/99/3747998cda6875de45c100dca193680e6214cb894a5c935a6d88dd205f3acf78e8071aec5a8fe71571cbc360f8166f70df0f848abbfe140c786598bf63ca89f5 -> maturin-1.7.5-funtoo-crates-bundle-ecc5ec1222cd1e17c851fe15583ad9ff17581d93c6ab13e30df00bf1e5fd30db8319c5c2c37c6bb41810a37afd21d1780152776d80e2056f60bceee187d5bb61.tar.gz

$(cargo_crate_uris ${CRATES})"

DEPEND="dev-python/setuptools-rust[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.7.5"