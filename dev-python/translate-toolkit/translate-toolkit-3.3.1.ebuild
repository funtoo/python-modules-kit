# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"

inherit distutils-r1

DESCRIPTION="Toolkit to convert between many translation formats"
HOMEPAGE="https://github.com/translate/translate"
SRC_URI="https://files.pythonhosted.org/packages/ab/47/d7e0a2fddd457cef11b0f144c4854751e820b2fdaff7671f4b3ef05f5f0e/translate-toolkit-3.3.1.tar.gz"

DEPEND=""
RDEPEND="
	!dev-python/pydiff
	app-text/iso-codes
	sys-devel/gettext
	subtitles? ( media-video/gaupol[${PYTHON_USEDEP}] )
	>=dev-python/six-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/chardet-3.0.4[${PYTHON_USEDEP}]
	dev-python/cheroot[${PYTHON_USEDEP}]
	>=dev-python/lxml-4.3.1[${PYTHON_USEDEP}]
	>=dev-python/pycountry-19.8.18[${PYTHON_USEDEP}]
	>=dev-python/python-levenshtein-0.12.0[${PYTHON_USEDEP}]
	dev-python/ruamel-yaml[${PYTHON_USEDEP}]
	html? ( dev-python/utidylib[${PYTHON_USEDEP}] )
	ical? ( dev-python/vobject[${PYTHON_USEDEP}] )
	ini? ( >=dev-python/iniparse-0.5[${PYTHON_USEDEP}] )
	yaml? ( dev-python/pyyaml[${PYTHON_USEDEP}] )"

IUSE="+html +ical +ini +subtitles +yaml"
RESTRICT="test"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"

S="${WORKDIR}/translate-toolkit-${PV}"

distutils_enable_sphinx docs dev-python/sphinx-bootstrap-theme
src_prepare() {
	sed -i -e 's#"docs", "share"#"share"#' setup.py
	distutils_src_prepare
}

python_install_all() {
	distutils-r1_python_install_all

	if ! use html; then
		rm "${ED}"/usr/bin/{html2po,po2html} || die
	fi
	if ! use ical; then
		rm "${ED}"/usr/bin/{ical2po,po2ical} || die
	fi
	if ! use ini; then
		rm "${ED}"/usr/bin/{ini2po,po2ini} || die
	fi
	if ! use subtitles; then
		rm "${ED}"/usr/bin/{sub2po,po2sub} || die
	fi
	python_optimize
}
