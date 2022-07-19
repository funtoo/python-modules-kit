# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://docutils.sourceforge.io/ https://pypi.org/project/docutils/"
SRC_URI="https://files.pythonhosted.org/packages/6b/5c/330ea8d383eb2ce973df34d1239b3b21e91cd8c865d21ff82902d952f91f/docutils-0.19.tar.gz -> docutils-0.19.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/docutils-compat )
	dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/docutils-0.19"