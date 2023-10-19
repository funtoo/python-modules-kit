# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="A drop-in replacement for argparse that allows options to also be set via config files and/or environment variables."
HOMEPAGE="https://github.com/bw2/ConfigArgParse https://pypi.org/project/ConfigArgParse/"
SRC_URI="https://files.pythonhosted.org/packages/3c/fb/bf200c55a1e7014577c37fa9cbfa0148f629762bb3acff56299d8c58cbc3/ConfigArgParse-1.5.5.tar.gz -> ConfigArgParse-1.5.5.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/configargparse-1.7.0 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ConfigArgParse-1.5.5"

post_src_install() {
	rm -rf ${D}/usr/bin
}