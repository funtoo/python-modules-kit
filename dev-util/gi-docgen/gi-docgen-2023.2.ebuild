# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A documentation generator for GObject-based libraries"
HOMEPAGE="https://gitlab.gnome.org/GNOME/gi-docgen"
SRC_URI="https://files.pythonhosted.org/packages/e5/6e/9f05646d0dbfa537c9328204212e7d22942e656b9279d1d36d8efedf5dec/gi-docgen-2023.2.tar.gz -> gi-docgen-2023.2.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/markdown[${PYTHON_USEDEP}]
	dev-python/typogrify[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 GPL-3+ ) CC0-1.0 OFL-1.1 MIT GPL-3+ LGPL-2 MIT MPL-1.1 CC-By-SA-3"
KEYWORDS="*"
S="${WORKDIR}/gi-docgen-2023.2"