# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal"
HOMEPAGE="https://github.com/Textualize/rich https://pypi.org/project/rich/"
SRC_URI="https://files.pythonhosted.org/packages/d0/50/74cc70b70662f0571c28733581a40097c0d626d70eefd17c606a195f36fc/rich-13.5.0.tar.gz -> rich-13.5.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rich-13.5.0"