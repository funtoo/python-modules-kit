# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1 toolchain-funcs

DESCRIPTION="Python Imaging Library (Fork)"
HOMEPAGE="https://python-pillow.org https://pypi.org/project/Pillow/"
SRC_URI="https://files.pythonhosted.org/packages/8f/7d/1e9c2d8989c209edfd10f878da1af956059a1caab498e5bc34fa11b83f71/Pillow-8.3.1.tar.gz
"

DEPEND="
	imagequant? ( media-gfx/libimagequant:0 )
	jpeg? ( virtual/jpeg:0 )
	jpeg2k? ( media-libs/openjpeg:2= )
	lcms? ( media-libs/lcms:2= )
	tiff? ( media-libs/tiff:0=[jpeg,zlib] )
	truetype? ( media-libs/freetype:2= )
	webp? ( media-libs/libwebp:0= )
	xcb? ( x11-libs/libxcb )
	zlib? ( sys-libs/zlib:0= )"
RDEPEND="
	python_targets_python2_7? ( dev-python/pillow-compat )
	dev-python/olefile[${PYTHON_USEDEP}]"
BDEPEND="virtual/pkgconfig"
IUSE="examples imagequant +jpeg jpeg2k lcms tiff tk truetype webp xcb zlib python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="HPND"
KEYWORDS="*"

S="${WORKDIR}/Pillow-8.3.1"

python_configure_all() {
	# It's important that these flags are also passed during the install phase
	# as well. Make sure of that if you change the lines below. See bug 661308.
	mydistutilsargs=(
		build_ext
		--disable-platform-guessing
		$(use_enable truetype freetype)
		$(use_enable jpeg)
		$(use_enable jpeg2k jpeg2000)
		$(use_enable lcms)
		$(use_enable tiff)
		$(use_enable imagequant)
		$(use_enable webp)
		$(use_enable webp webpmux)
		$(use_enable xcb)
		$(use_enable zlib)
	)
	# setup.py sucks at adding the right toolchain paths but it does
	# accept additional ones from INCLUDE and LIB so set these. You
	# wouldn't normally need these at all as the toolchain should look
	# here anyway but this setup.py does stupid things.
	export \
		INCLUDE=${ESYSROOT}/usr/include \
		LIB=${ESYSROOT}/usr/$(get_libdir)
	# We have patched in this env var.
	tc-export PKG_CONFIG
}
python_install() {
	python_doheader src/libImaging/*.h
	distutils-r1_python_install
}
python_install_all() {
	if use examples ; then
		docinto example
		dodoc docs/example/*
		docompress -x /usr/share/doc/${PF}/example
	fi
	distutils-r1_python_install_all
}
