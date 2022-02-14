# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="MWParserFromHell is a parser for MediaWiki wikicode."
HOMEPAGE="https://github.com/earwig/mwparserfromhell https://pypi.org/project/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/29/01/a694dd2768d584a90802f317a8560042cc6e72c25cf017c500a7bb4b10fe/mwparserfromhell-0.6.4.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/mwparserfromhell-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/mwparserfromhell-0.6.4"