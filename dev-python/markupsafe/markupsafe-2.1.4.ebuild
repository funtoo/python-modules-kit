# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Implements a XML/HTML/XHTML Markup safe string for Python"
HOMEPAGE="https://pypi.org/project/MarkupSafe"
SRC_URI="https://files.pythonhosted.org/packages/fb/5a/fb1326fe32913e663c8e2d6bdf7cde6f472e51f9c21f0768d9b9080fe7c5/MarkupSafe-2.1.4.tar.gz -> MarkupSafe-2.1.4.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/markupsafe-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/MarkupSafe-2.1.4"