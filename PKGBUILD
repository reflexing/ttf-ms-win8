# Maintainer: reflexing <reflexing@reflexing.ru>
#
# BUILD INSTRUCTIONS:
# ----------------------
# This package is based on 'ttf-win7-fonts' package with fixes,
# suggested by AUR's 'severach' user in comments.
#
# It is intended as a more up-to-date replacement for the AUR's
# 'ttf-ms-fonts', 'ttf-vista-fonts' and 'ttf-win7-fonts' packages.
# It provides newer versions of the fonts in these packages, but due
# to license issues cannot automatically download the fonts.
#
# Please note, that usage of Microsoft fonts outside running Windows
# system is prohibited by EULA (although in certain countries EULA is invalid).
# Please consult Microsoft license before using fonts.
#
# You can acquire fonts either from an installed Windows 8 RTM system
# or install medium. Any edition of Windows 8 build 6.2.9200.16384 will work.
#
# On the installed Windows 8 system fonts are usually located in
#       C:\Windows\Fonts
#
# How to acquire fonts from Windows 8 RTM install medium:
#
#    You can freely download Windows 8 Enterprise 90-day evaluation
#    for developers from:
#       http://msdn.microsoft.com/en-US/evalcenter/jj554510.aspx
#
#    Fonts are located in 'sources/install.wim' on the ISO, which
#    is a 'Windows Imaging Format' (WIM) archive.
#
#    This archive can be extracted with 7-zip ('p7zip' package in repos)
#    running the following commands in the dir, containing ISO
#   (make necessary changes if needed):
#
#       7z e Windows_8_Pro_EN-US_x64.ISO sources/install.wim
#       7z e install.wim 1/Windows/Fonts/{*.ttf,cambria.ttc} -ofonts
#
#    Fonts will be located in the 'fonts' dir.
#
#    You can also use GNOME's File Roller (and maybe other archive
#    managers) to extract the files if the 'p7zip' package is installed.
#
#    Alternatively, you can extract WIM using imagex
#   ('wimlib' package from AUR).
#
#    Put the following script together with previously extracted
#   'install.wim' and execute:
#
#       #!/bin/sh
#       mkdir tmp fonts
#       imagex mount install.wim 1 tmp
#       cp tmp/Windows/Fonts/{*.ttf,cambria.ttc} fonts
#       imagex unmount tmp
#
#    Fonts will be located in the 'fonts' dir.
#
# Fonts are best viewed with Infinality freetype2 packages:
#   https://wiki.archlinux.org/index.php/Font_Configuration#Infinality
# Infinality offers great font rendering and customization.
#
# You need the files listed in the source=() array. Place them in the same
# directory as this PKGBUILD file, then run makepkg.

pkgname=ttf-ms-win8
pkgver=6.2.9200.20569
pkgrel=1
pkgdesc='Microsoft Windows 8 TrueType fonts'
arch=('any')
url='http://www.microsoft.com/typography/fonts/product.aspx?PID=164'
license=('custom')
depends=('fontconfig' 'xorg-fonts-encodings' 'xorg-mkfontscale' 'xorg-mkfontdir')
makedepends=('fontforge')
provides=('ttf-win7-fonts' 'ttf-vista-fonts' 'ttf-ms-fonts' 'ttf-tahoma')
conflicts=('ttf-win7-fonts' 'ttf-vista-fonts' 'ttf-ms-fonts' 'ttf-tahoma')
install="$pkgname.install"
PKGEXT='.pkg.tar'

source=(
#####################################################################################################
# Normal         Bold          Italic        Bold+Italic    #  Full name           Version  Comment #
#####################################################################################################
arial.ttf      arialbd.ttf    ariali.ttf     arialbi.ttf    # Arial                   6.81
                                                            #   Italic                6.80
                                                            #   Bold Italic           6.80
ariblk.ttf                                                  # Arial Black             5.21
comic.ttf      comicbd.ttf    comici.ttf     comicz.ttf     # Comic Sans MS           5.11
cour.ttf       courbd.ttf     couri.ttf      courbi.ttf     # Courier New             6.81
                                                            #   Italic                6.80
                                                            #   Bold Italic           6.80
framd.ttf                     framdit.ttf                   # Franklin Gothic Medium  5.01
                                                            #   Italic                5.00
Gabriola.ttf                                                # Gabriola                5.92
georgia.ttf    georgiab.ttf   georgiai.ttf   georgiaz.ttf   # Georgia                 5.51
impact.ttf                                                  # Impact                  5.10
lucon.ttf                                                   # Lucida Console          5.00
l_10646.ttf                                                 # Lucida Sans Unicode     5.00
marlett.ttf                                                 # Marlett                 5.00 Symbol
micross.ttf                                                 # Microsoft Sans Serif    5.11
pala.ttf       palab.ttf      palai.ttf      palabi.ttf     # Palatino Linotype       5.01
segoepr.ttf    segoeprb.ttf                                 # Segoe Print             5.02
segoesc.ttf    segoescb.ttf                                 # Segoe Script            5.00
segoeui.ttf    segoeuib.ttf   segoeuii.ttf   segoeuiz.ttf   # Segoe UI                5.28
                                                            #   Bold                  5.27
                                                            #   Italic                5.26
                                                            #   Bold Italic           5.26
segoeuil.ttf                  seguili.ttf                   # Segoe UI Light          5.27
                                                            #   Italic                5.26
seguisb.ttf                   seguisbi.ttf                  # Segoe UI Semibold       5.27
                                                            #   Italic                5.26
segoeuisl.ttf                 seguisli.ttf                  # Segoe UI Semilight      5.27
                                                            #   Italic                5.26
seguisym.ttf                                                # Segoe UI Symbol         5.90
sylfaen.ttf                                                 # Sylfaen                 5.03
symbol.ttf                                                  # Symbol                  5.00
tahoma.ttf     tahomabd.ttf                                 # Tahoma                  5.26
times.ttf      timesbd.ttf    timesi.ttf     timesbi.ttf    # Times New Roman         6.81
                                                            #   Italic                6.80
                                                            #   Bold Italic           6.80
trebuc.ttf     trebucbd.ttf   trebucit.ttf   trebucbi.ttf   # Trebuchet MS            5.10
verdana.ttf    verdanab.ttf   verdanai.ttf   verdanaz.ttf   # Verdana                 5.31
                                                            #   Bold                  5.30
                                                            #   Italic                5.30
                                                            #   Bold Italic           5.30
webdings.ttf                                                # Webdings                5.00 Symbol
wingding.ttf                                                # Wingdings               5.00 Symbol
# Windows Vista introduced fonts
calibri.ttf    calibrib.ttf   calibrii.ttf   calibriz.ttf   # Calibri                 5.72
calibril.ttf                  calibrili.ttf                 # Calibri Light           2.00
cambria.ttc    cambriab.ttf   cambriai.ttf   cambriaz.ttf   # Cambria                 6.80
#cambria.ttc                                                # Cambria Math            6.80
Candara.ttf    Candarab.ttf   Candarai.ttf   Candaraz.ttf   # Candara                 5.61
consola.ttf    consolab.ttf   consolai.ttf   consolaz.ttf   # Consolas                5.32
constan.ttf    constanb.ttf   constani.ttf   constanz.ttf   # Constantia              5.90
corbel.ttf     corbelb.ttf    corbeli.ttf    corbelz.ttf    # Corbel                  5.61
license.rtf
)

build() {
  cd "$srcdir"

  # cambria.ttc is a TrueType Collection (TTC) which causes problems with
  # LibreOffice (Cambria Regular cannot be selected) so we need to convert
  # the TTC into a TrueType Font (TTF).
  fontforge -lang=ff -c 'Open("cambria.ttc(Cambria)"); Generate("cambria.ttf"); Close();
    Open("cambria.ttc(Cambria Math)"); Generate("cambria-math.ttf"); Close();' &> /dev/null
}



function _package {
    cd "$srcdir"

    # Array name can't have underscores… thus this check
    if [ "$1" = "$pkgbase" ]; then
        fonts_array_name=_${pkgbase//-/_}[@];
    else
        fonts_array_name=_${1#${pkgbase}-}[@];
        provides=($1)
        conflicts=()
    fi

    fonts=${!fonts_array_name};

    # Prepare destination directory
    install -dm755 "$pkgdir/usr/share/fonts/TTF"

    # Install fonts
    for font in ${fonts[@]}; do
        install -m644 $font "$pkgdir/usr/share/fonts/TTF"
    done

    # Install license
    install -Dm644 license.rtf "$pkgdir/usr/share/licenses/$pkgname/license.rtf"
}

md5sums=('ef538142f0ec5aa6849874796f726f15'
         '91a086306dad3f93f703482dd94c5077'
         'dec6705e773e544f6f19a150f83d3114'
         '3d6c0be1f2859fe527795c4d7d709d76'
         '1f704893145d21747186116f85b2c062'
         'cfbe2858223b5d6f0fead9583b07f3fd'
         '6548235ee4b7ca0b8a7d464546fa5ca5'
         '1d32338d1c97538b798ca8563f70d39a'
         '8f87bcf26c27af0830c28c30a35bb211'
         '21e0660b22b5566ade0379fb22923112'
         '49b91ed3c755401d9c4b7471352c177c'
         '8f5e2cc6baf642e7dea9ebe68d129987'
         '4f0fe9bfbbff9647ccc24d00a80ecf16'
         '45a9841a7f5ba7a780f0a804553cfce7'
         'e2ae623d5f37a67aaf66673fc5be6ea7'
         '9f6c62f1f041ca9f3d69ac76684314d0'
         'de6243382a94fdc4813e4cbd4ff7d919'
         'd9e4d24448593640c2cc90e68c3317f6'
         'ca432c56ca6ff81a0a1476846dffeac9'
         '9d82f2cd4cf4ec35d72f70e4e025072b'
         '9d0962f073f288d799831d4688b1e917'
         'ed07815509f9c255b6e0f66c7910eb97'
         'bcccd674c3fe808a4b01b8914c6898d5'
         '5f10daf510c3cb9ccfa737cade9c5a90'
         'c2c84a9b6da6c29b7b4290f8c47042b4'
         '8361c7922287c672493a11c10ffedb32'
         '363ce725d6c62520d087cd583c2f63f4'
         '3ee4f47946aa203f078877fd6f6427c0'
         '3eb766b15f377d0956685ce734063d30'
         'c455d94eee43dc4ceeb83c0c0fd0d4c8'
         '4ed8298204138b08c1e73d2d9a6cba9a'
         '5c452fb7a0f5751f4e94e9d84eb01154'
         'acd33fd0ea8c011932aa4f3ac713663c'
         'f99ea84062835b8d7ac4c68f6acf5b7e'
         '1fcaecda063112df9165fb6ec00882bb'
         '452133c98458128fe74e982078460cab'
         '5d51eba86e9217c97559947f2d01f53b'
         '886dc601b2adb01bbfe8a4facf9d566d'
         'd6a449664f4fcbec971dc5b92ff7801d'
         'ae4f7684dc1c509accc0d295f7487a2b'
         '1770fbba68d5afa129c8243ed92b0c1c'
         '073c54deab691dba98be14fe4fea8278'
         'c5e631d3da2bdf8ce9929ae794843a06'
         '437c3323b83093ccb16abbf197bb4e40'
         '4c8aa8124876afd5474fb94d53785536'
         '9629034e291841f941497d4a365c01f7'
         '8aa958a1003e6b954e980fc1aedaedd3'
         'ecaaa9a26d2c4c5753f50a6852718075'
         '7dbfa50c5178ae8deb1b3665ad5899e5'
         '213d8ddf796055f533ceff3243a7ab25'
         'b24f0a2dc431774a60aece53a0de1bdb'
         'f617a107c4509b8c44e5747920a52df9'
         '1abd1c73463dca1a3e18006ba34ad4ac'
         '8b3f07fcea987ce38c83246fa6175cd3'
         '4c98e9ed8ddca5e465f3340f833a616e'
         '6d953d3bbe8817cd2b004dc11ac9f1d5'
         'ba34b303291e36596759eb46ad9c51f2'
         'ddbe52e2cfdcc2b8c9c4ab8de872a325'
         '85e38a5e32b54e416c4b437b59501d31'
         'b8d06d04e2d848ebcdd428cd8125f211'
         '40a90d72da61d7c609c9a4c4bb37c710'
         '68c74934563bf4afa50793c67bd19b24'
         'baf2d27a2cc7aea124138fb8b4fb5b4d'
         '8879a4caa29c42ce616cd5f172299366'
         'a2e4c0b388a3013015349a2aee18fe38'
         'a3e6f73440d8535c2c7c43489e942a10'
         '333ce7de4d889233dea963e16f547487'
         '2c03a94cb796eb012908069335c98252'
         '6ede9249499bba99886e63efb89eac37'
         '081c24bfc5625fd86e7aa96d2599d869'
         '7e32ca996d7f588ed65551a37ae145ed'
         '6036be2d769db6a0f1918cb65b48b89c'
         '8daa0f2304ee100fe3888d5b7307e64f'
         '702d8433e65d57e2612d01f1db078242'
         'f4ab481e2d12c0321cc1907192da90f0'
         '44b0a478d3b790698f52828bbf6b2b68'
         '2b96269935d724df38efb541ee391f8f'
         '3ff4f49424db1e955ca167ce06a0dfd2'
         '5409c269bd43ed6daece60eaa546a02c'
         '242915b2e93efd217abef857cc3d3ed1'
         '39d51726a8c8b7eb4bb6fab61d16841a'
         'b411b0999020c9c25b8151e359197150'
         '68948ea9bc8b232cc5664e2aab39c80c'
         '1ad619060822679a34db35a498f98ecc'
         '51ee907427c788c3ab4442e73286d641'
         'c87f06ae40c78321844f2eac8b51737f'
         'e6c0e179deb07f3fc7a6d0d7a2a77247'
         '6c5e3e581b522258be508b4d8868025d'
         'c70dcf29d5da576587eee25911f06321')
