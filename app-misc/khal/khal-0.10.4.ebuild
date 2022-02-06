# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A CalDAV based calendar"
HOMEPAGE="http://lostpackets.de/khal/"
SRC_URI="https://files.pythonhosted.org/packages/7a/d8/9718385de260ebc07ff48c838e22fde6b05d143f1f8ab81ff1c8718d7102/khal-0.10.4.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	zsh-completion? ( app-shells/zsh )
	dev-python/atomicwrites[${PYTHON_USEDEP}]
	dev-python/click-log[${PYTHON_USEDEP}]
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/configobj[${PYTHON_USEDEP}]
	dev-python/freezegun[${PYTHON_USEDEP}]
	dev-python/icalendar[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/pyxdg[${PYTHON_USEDEP}]
	dev-python/setproctitle[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/tzlocal[${PYTHON_USEDEP}]
	dev-python/urwid[${PYTHON_USEDEP}]
	dev-python/vdirsyncer[${PYTHON_USEDEP}]"

IUSE="zsh-completion"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/khal-0.10.4"

DOCS=( AUTHORS.txt CHANGELOG.rst CONTRIBUTING.rst README.rst khal.conf.sample )
src_install() {
	distutils-r1_src_install
	if use zsh-completion; then
		insinto /usr/share/zsh/site-functions
		doins misc/__khal
	fi
}
