# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Implements a XML/HTML/XHTML Markup safe string for Python"
HOMEPAGE="https://pypi.org/project/MarkupSafe"
SRC_URI="https://files.pythonhosted.org/packages/62/0f/52c009332fdadd484e898dc8f2acca0663c1031b3517070fd34ad9c1b64e/MarkupSafe-2.1.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/markupsafe-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/MarkupSafe-2.1.0"