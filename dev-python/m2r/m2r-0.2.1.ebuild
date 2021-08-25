# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Markdown and reStructuredText in a single file."
HOMEPAGE="https://github.com/miyakogi/m2r https://pypi.org/project/m2r/"
SRC_URI="https://files.pythonhosted.org/packages/39/e7/9fae11a45f5e1a3a21d8a98d02948e597c4afd7848a0dbe1a1ebd235f13e/m2r-0.2.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/docutils[${PYTHON_USEDEP}]
	<dev-python/mistune-2.0[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/m2r-0.2.1"