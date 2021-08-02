# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Manipulate DNS records on various DNS providers in a standardized/agnostic way"
HOMEPAGE="https://pypi.org/project/dns-lexicon/"
SRC_URI="https://files.pythonhosted.org/packages/14/6c/8d03cf14eceda07dab6264045cfd1c3b036d069ce8e4cc4db306513658db/dns-lexicon-3.6.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/tldextract[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
"