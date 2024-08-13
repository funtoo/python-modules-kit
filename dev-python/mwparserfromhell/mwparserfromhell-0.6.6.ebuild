# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="MWParserFromHell is a parser for MediaWiki wikicode."
HOMEPAGE="https://github.com/earwig/mwparserfromhell https://pypi.org/project/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/47/aa/358f9af602b743ac8898353f240f678b69722801bd0625507c69d9755936/mwparserfromhell-0.6.6.tar.gz -> mwparserfromhell-0.6.6.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/mwparserfromhell-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mwparserfromhell-0.6.6"