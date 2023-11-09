# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1 eutils

DESCRIPTION="A super-fast templating language that borrows the best ideas from the existing templating languages."
HOMEPAGE="https://www.makotemplates.org/ https://pypi.org/project/Mako/"
SRC_URI="https://files.pythonhosted.org/packages/a9/6e/6b41e654bbdcef90c6b9e7f280bf7cbd756dc2560ce76214f5cdbc4ddab5/Mako-1.3.0.tar.gz -> Mako-1.3.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/mako-compat )
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Mako-1.3.0"

pkg_postinst() {
	elog "Optional dependencies:"
	optfeature "caching support" dev-python/beaker
}
