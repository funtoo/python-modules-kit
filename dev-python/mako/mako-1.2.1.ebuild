# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1 eutils

DESCRIPTION=""
HOMEPAGE="https://www.makotemplates.org/ https://pypi.org/project/Mako/"
SRC_URI="https://files.pythonhosted.org/packages/ad/dd/34201dae727bb183ca14fd8417e61f936fa068d6f503991f09ee3cac6697/Mako-1.2.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/mako-compat )
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Mako-1.2.1"

pkg_postinst() {
	elog "Optional dependencies:"
	optfeature "caching support" dev-python/beaker
}
