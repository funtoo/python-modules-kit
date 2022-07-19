# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_PN="sphinxcontrib_github_alt"

DESCRIPTION="Link to GitHub issues, pull requests, commits and users from Sphinx docs"
HOMEPAGE="https://github.com/jupyter/sphinxcontrib_github_alt"
SRC_URI="https://files.pythonhosted.org/packages/b8/d5/2880f4f441f3b46f264cb031d9e7135714b5060c895c8a6458051002c41a/sphinxcontrib_github_alt-1.2.tar.gz -> sphinxcontrib_github_alt-1.2.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/sphinx[${PYTHON_USEDEP}]"

S="${WORKDIR}/${MY_PN}-${PV}"

python_prepare_all() {
	distutils-r1_python_prepare_all

	mkdir "${S}/${MY_PN}/" || die
	mv "${S}/sphinxcontrib_github_alt.py" "${S}/${MY_PN}/" || die

	local init_patch="
from distutils.core import setup

setup(name='sphinxcontrib_github_alt',
      version='1.1',
      author='Jupyter Development Team',
      author_email='jupyter@googlegroups.com',
      url='https://github.com/jupyter/sphinxcontrib_github_alt',
      packages=['sphinxcontrib_github_alt'],
      classifiers=[
          'License :: OSI Approved :: BSD License'
      ]
)

"
	local setup_py=$(cat "${S}/setup.py")

	echo "$init_patch" > "${S}/setup.py"
	echo "$setup_py" >> "${S}/setup.py"
}