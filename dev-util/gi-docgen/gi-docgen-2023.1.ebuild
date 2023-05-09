# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://gitlab.gnome.org/GNOME/gi-docgen https://pypi.org/project/gi-docgen/"
SRC_URI="https://files.pythonhosted.org/packages/29/72/a319bce143e5d10677bc89b66e750c1511ec005c7a8bb098b415cc68ac68/gi-docgen-2023.1.tar.gz -> gi-docgen-2023.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/markdown[${PYTHON_USEDEP}]
	dev-python/typogrify[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 GPL-3+ ) CC0-1.0 OFL-1.1 MIT GPL-3+ LGPL-2 MIT MPL-1.1 CC-By-SA-3"
KEYWORDS="*"
S="${WORKDIR}/gi-docgen-2023.1"