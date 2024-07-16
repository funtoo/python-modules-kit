# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A python wrapper for the GitLab API"
HOMEPAGE="None https://pypi.org/project/python-gitlab/"
SRC_URI="https://files.pythonhosted.org/packages/af/b7/a4612f69565dc14f44e78672770756153c13cbd9857ac8b8aa1f46c72556/python_gitlab-4.8.0.tar.gz -> python_gitlab-4.8.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python_gitlab-4.8.0"