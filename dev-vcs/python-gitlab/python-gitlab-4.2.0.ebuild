# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A python wrapper for the GitLab API"
HOMEPAGE=" https://pypi.org/project/python-gitlab/"
SRC_URI="https://files.pythonhosted.org/packages/0d/3d/efdfb3a2902df814fb694b1a9da153a8ba5de16f5bd3f706b6daea6d6c1c/python-gitlab-4.2.0.tar.gz -> python-gitlab-4.2.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python-gitlab-4.2.0"