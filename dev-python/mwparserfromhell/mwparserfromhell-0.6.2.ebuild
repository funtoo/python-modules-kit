# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="MWParserFromHell is a parser for MediaWiki wikicode."
HOMEPAGE="https://github.com/earwig/mwparserfromhell https://pypi.org/project/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/35/7c/2e0d48f42d7a5c48d788194d4853e49196460e125941649f409236ece717/mwparserfromhell-0.6.2.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/mwparserfromhell-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT License"
KEYWORDS="*"

S="${WORKDIR}/mwparserfromhell-0.6.2"