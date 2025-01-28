# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The python wrapper for the GitLab REST and GraphQL APIs."
HOMEPAGE="None https://pypi.org/project/python-gitlab/"
SRC_URI="https://files.pythonhosted.org/packages/d6/08/d35d0f28549c43611e942f39b6321a7b35c02189d5badceefe601c0207ce/python_gitlab-5.6.0.tar.gz -> python_gitlab-5.6.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python_gitlab-5.6.0"