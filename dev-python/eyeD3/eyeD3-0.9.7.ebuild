# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python tool for working with audio files, specifically MP3 files containing ID3 metadata"
HOMEPAGE="https://eyeD3.nicfit.net/ https://pypi.org/project/eyed3/"
SRC_URI="https://files.pythonhosted.org/packages/75/a5/263664ef1f1be58f72c8bc66ef128781af0a8110aeb591428d5c3a67b356/eyeD3-0.9.7.tar.gz -> eyeD3-0.9.7.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/deprecation[${PYTHON_USEDEP}]
	dev-python/filetype[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="*"
S="${WORKDIR}/eyeD3-0.9.7"