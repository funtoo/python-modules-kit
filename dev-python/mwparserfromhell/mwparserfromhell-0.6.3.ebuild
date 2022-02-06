# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="MWParserFromHell is a parser for MediaWiki wikicode."
HOMEPAGE="https://github.com/earwig/mwparserfromhell https://pypi.org/project/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/28/3a/aeb61580d9543a6c05aa28afe85ebab7d5d1ce8c57995869747bad33c0b3/mwparserfromhell-0.6.3.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/mwparserfromhell-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/mwparserfromhell-0.6.3"