# Maintainer: Kirill "reflexing" Churin <reflexing@reflexing.ru>
#
# BUILD INSTRUCTIONS:
# ----------------------
# This package is based on 'ttf-win7-fonts' package with fixes,
# suggested by "severach" in comments.
#
# It is intended as a more up-to-date replacement for the AUR
# 'ttf-ms-fonts', 'ttf-vista-fonts' and 'ttf-win7-fonts' packages.
# It provides newer versions of the fonts in these packages, but due
# to license issues cannot automatically download the fonts.
#
# Instead, you must acquire them from a Windows 8 system or install media:
#  - Running Windows 8 system: fonts are located in C:\Windows\Fonts
#  - Windows 8 Release Preview install media:
#
#    Checksums are computed for Windows 8 Release Preview fonts, which are
#    newer than Cosumer Preview's. Download it from
#    http://windows.microsoft.com/en-US/windows-8/release-preview
#
#    Fonts are located in "sources/install.wim", which 
#    is a "Windows Imaging Format" archive. This archive currently
#    CAN'T be extracted with 7-Zip.
#
#    To extract ISO we'll use 7-Zip ("p7zip" in repos),
#    to extract WIM we'll use imagex ("wimlib" package from AUR).
#    Put the following script together with ISO and execute:
#
#    #!/bin/sh
#    7z e Windows8-ReleasePreview-32bit-English.iso sources/install.wim
#    mkdir tmp fonts
#    imagex mount install.wim 1 tmp
#    cp tmp/Windows/{Fonts/{*.ttf,cambria.ttc},System32/license.rtf} fonts
#    imagex unmount tmp
#    rm -R tmp install.wim
#
# You need the files listed in the source=() array. Place them in the same
# directory as this PKGBUILD file, then run makepkg.

pkgname=ttf-ms-win8
pkgver=6.2.8400
pkgrel=1
pkgdesc="Microsoft Windows 8 TrueType fonts"
arch=('any')
url="http://microsoft.com"
license=('custom')
depends=('fontconfig' 'xorg-fonts-encodings' 'xorg-mkfontscale' 'xorg-mkfontdir')
makedepends=('fontforge')
provides=('ttf-win7-fonts' 'ttf-vista-fonts' 'ttf-ms-fonts' 'ttf-tahoma')
conflicts=('ttf-win7-fonts' 'ttf-vista-fonts' 'ttf-ms-fonts' 'ttf-tahoma')
install=$pkgname.install

###################################################################
#        Normal        Bold           Italic         Bold+Italic  #
###################################################################
source=('ariblk.ttf'
        'arial.ttf'   'arialbd.ttf'  'ariali.ttf'   'arialbi.ttf'
        'comic.ttf'   'comicbd.ttf'  'comici.ttf'   'comicz.ttf'
        'cour.ttf'    'courbd.ttf'   'couri.ttf'    'courbi.ttf'
        'Gabriola.ttf'
        'georgia.ttf' 'georgiab.ttf' 'georgiai.ttf' 'georgiaz.ttf'
        'impact.ttf'
        'l_10646.ttf'
        'lucon.ttf'
        'mangal.ttf'  'mangalb.ttf'
        'micross.ttf'
        'pala.ttf'    'palab.ttf'    'palai.ttf'    'palabi.ttf'
        'symbol.ttf' 
        'tahoma.ttf'  'tahomabd.ttf'
        'times.ttf'   'timesbd.ttf'  'timesi.ttf'   'timesbi.ttf'
        'trebuc.ttf'  'trebucbd.ttf' 'trebucit.ttf' 'trebucbi.ttf'
        'verdana.ttf' 'verdanab.ttf' 'verdanai.ttf' 'verdanaz.ttf'
        'webdings.ttf'
        'wingding.ttf'
        'calibri.ttf' 'calibrib.ttf' 'calibrii.ttf' 'calibriz.ttf'
        'calibril.ttf'               'calibrili.ttf'
        'cambria.ttc' 'cambriab.ttf' 'cambriai.ttf' 'cambriaz.ttf'
        'Candara.ttf' 'Candarab.ttf' 'Candarai.ttf' 'Candaraz.ttf'
        'consola.ttf' 'consolab.ttf' 'consolai.ttf' 'consolaz.ttf'
        'constan.ttf' 'constanb.ttf' 'constani.ttf' 'constanz.ttf'
        'corbel.ttf'  'corbelb.ttf'  'corbeli.ttf'  'corbelz.ttf'
        'segoeui.ttf' 'segoeuib.ttf' 'segoeuii.ttf' 'segoeuiz.ttf'
        'segoeuil.ttf'               'seguili.ttf'
        'seguisb.ttf'                'seguisbi.ttf'
        'segoeuisl.ttf'              'seguisli.ttf'
        'segoepr.ttf' 'segoeprb.ttf'
        'segoesc.ttf' 'segoescb.ttf'
        'seguisym.ttf'
        'license.rtf')

build() {
  cd "$srcdir"

  # cambria.ttc is a TrueType Collection (TTC) which causes problems with
  # LibreOffice (Cambria Reguar cannot be selected) so we need to convert
  # the TTC into a TrueType Font (TTF).
  FONTFORGE_LANGUAGE=ff fontforge -c 'Open("cambria.ttc(Cambria)"); Generate("cambria.ttf")'
}

package() {
  cd "$srcdir"

  # Prepare destination directory
  install -d -m 755 "$pkgdir/usr/share/fonts/TTF/$pkgname"

  # Install fonts and license
  install -m 644 *.ttf "$pkgdir/usr/share/fonts/TTF/$pkgname"
  install -Dm 644 license.rtf "$pkgdir/usr/share/licenses/$pkgname/license.rtf"
}

sha256sums=('80feb0e62f1a9c6a0341f65486c8fa48da8a46a6d032bd5a2e855721106180fb'
            '2d0dc750f743cdca1a06f5eacb624754f82b32b0bbdc92165b3adde048be99a2'
            'e9aebbddf5e3121f8d2425460ba5162d327f91c08af11a939269e9dd3416d88e'
            'aa4619ebd3bef99c0e7378c024682a1f8ad67c5082bc32d8e197125357987df0'
            'd7f3ccb09971d3cd42f0f82ceea64df2f8aa79518b6bd7b99c22e28f2395ac04'
            '1300142c0886fca1155689241d1f6a3c6c6d3cb9c292e7a47db7e6417401ddee'
            'f13a7e4419f5e9d9b8efb2c436675f66607bf98e2d596b8c296d7b250f4c877b'
            '04bc106970b51bf365ac2d6f7c88d4171f489e512f42229d39a0fd375ca0f956'
            'c301881da0894256a919e819b944f1cad7eea8060330ff1a48acacd6323fd4b2'
            '74dd7ae9c13f51536562566e21a8eaa31a121db2f2499882cdcb585cfeab7a53'
            '4cf6737132fced10becd2c17d8959ae2436305e9b000a30e5f2598f2dd56fb86'
            'ceb23619fa2947146a47130b6335159551fa914d92a2916316c1cfdc3c4a1e66'
            '35e750a131f2d489de2bd7e3f6413456256d7a17944f01abaf70043407145bc9'
            '29eaa6d65d0f1508d2d550d5ddf4e7e3a4e23cf13b376ff93140a8a6115b2f82'
            '4e1830dffc05312a5910afe4aa492ce1d3848f37c52cc0132ed86aca9f84d705'
            '7365d280c2a48b983aea4491ce1d94600456e9e3f1f78b80e66f613ef44d69b1'
            'f2414e11ba2767f39be169e456e9a37845f2ed35cc9ce087d4933131860e6edd'
            '8958ed20eb2a92af41a209c32693af960a53a8dfb827fe8bbc3498e904c06c2d'
            'f93975b19a5d23890387f910786c7c7d4e91aeeb134690f1ea64278fa73f9371'
            'b9ed2bf08381f8b763673504d82b27c6e029156c73cede54e551e59fe8e940da'
            'f4df4d6d1a69d24e08da2ad2f45203b4c7147ddaa5187ccd73087903ca36d177'
            '0e77754c4e3540e14cfc381be4b5829a42747f2075d400618c404a6681661128'
            '3c29ce71943ee184b906535891eecf46b2cbe82df76f9d1dcb11d0b9e99223d5'
            '0d7dac06453c067d4ce7e42346ce08bd91df8656da86021cda5e3ad08bd2879b'
            '1dc85fbce25b49cfef669a3c826d59ebba81297a18727554c715fe5cf0eeb6d2'
            '42937e4c54c028a06a796fde3aca571c4450171a43a9d77103bd93e19ed174e6'
            'fb79db5095bec1eeba5093777ff1199e96d5b9e3c6be8be51cdd8540d80ac20e'
            'a4d8de5753506c2005c1aa97168de18f7252b60b60b6350291c6abe5e926a098'
            'bffdc2fd675d9af414824ae84d8456504542480afb34fbc6bfd6903656c4f854'
            'c8e525b122766ebaa061a80f5630ae575b913dc72e0174305d2a42f2e9b9fb42'
            '82705acfa97ad08d9c8c734c8d919f7355623916d1eff50fe1a0e0e2e4cb0632'
            '1a81c41543bd2f7f9b80d1218220c8f6bab7d99a68b7fd486bd9995562843f4d'
            '14b3fd4bc08714e98c8eb4acc15925b5df84d2db1404f880d782e5ead8e0982a'
            '430b58f2bc9cfb8a7b2600c21d54118422645991f374e59e5f9b7195421df9c3'
            'b42a6891b653a8704a72cf97c8baef6d798daf42e6a8d02dc5b0a5317eea93d2'
            '4551d2c98992db601e07b1267ec7610919397b84997b62630386054aedf73d1a'
            'bf7781d2ca7b0eaa3c47edd953df99ef1f1d7a17db562272edae30afcdefea44'
            'b1484bb4b08c24bc022b85c009407af537a4fd83bfbdea41ee428f5058e346cd'
            '70e73ab2e603bd56080f9086b62f68bd36fb88d5546e433d4432891bb7802eb8'
            'bbd6f974d877a53b320410529ff1e9295148b3bac5a14029910adac1607a77eb'
            '174568c4633a8a688d579d283f7508c16e437434fd5ac97d4ce30dfc42d0860b'
            '377be5cc51493f716c6aa89f539c532f78fc0b39c7ddd6c708a2dac345cda93b'
            '2c5aa27b62da26f432406852303acad6fdc9121b73f468c75fae33ade799ea81'
            '1161ce511c44eb5464a4f8144aaf3eb965a50ed66957ad7d38e497ab9d958e5a'
            'd7c38355bd52f52e043ed904f3463d476925300d1bdca9e842b28077ca3549b8'
            '81a47afea78e098275cd04a6af224b7d81a059ee29f96055ada028815b88a97e'
            'c078163eb3df871cec8063404d1f94e0151b3cd571abbecb9d44ce37d4ba8e29'
            '4693303f885edbd172469bbf8b0d41d97d87ff304a4dc2659471663add99e500'
            '40001e058137f51f0dc5d4abcd59baea755bb8337aee53a62e42db31f39a2783'
            'f2c58c12140b8c4f673ae3aea1c4f5c6f71b9070a10048d29316e9711175951e'
            'd2966b54c89012ed14b6f3d3a2fccfdcf7eb02bdef12fc40e317510ddbeeb0f7'
            'e9a53f41d48a646cd19674aed971897b0bf7dcf3bd142810718069c544666223'
            '55e77c8bad79c0440d07569ed687a10f5ce72191436f07bf24740b0b2f74683e'
            '683197e9778784f5ccde80a98ccd64f3ef27c9165930ff10f4494f3630802371'
            '8677e1514ed9629976477764245a4b528eb91524566011720279c894e3a16d2d'
            'f4cc0c11780a2d94cd6b74ed54fa657f26677013028c956ecb40da81c6b59b9e'
            'f959e0709a770094814199e49b0441b13e2bb075475b7ed2125ead7841ff2215'
            'da786a0df49cd2f45a9a8dc67120ec534e4624bf168829947bb08c4f937c21ad'
            'c2017a26bbd51775376baa93ba63095ba90a955c0eb93bbe44b9e73e0958fd73'
            'd8b6a35e69337f1629078a97b7470a839533a8d0be2c92cb57aaf3394525aac3'
            'a0116e5ec7ff2cf5bc55560eb87dbf96f3a9a1102afdf65dd785c40988b6b2b0'
            'cac4b356d5a9a7efda6f587774f0c35d88ab0fd8942805e8278144015cb7cade'
            'cf5f95974bea4c7d3fc67b944b8e620bca2d3733794ffbdb1fcd691cf4695dc8'
            '28401ef53647e4e68f2c2bda54856fe90d9afb1cf4072bf4ea9cf6b380c09d4c'
            '11a7a1c6b1b4028cd7e55f60a9773ecc7d39b66b8f82f5b7c6fbf8a4fdfcf94e'
            'be0306e2040aeeed8bf228524071f4b941d28cbdd3ff413a9db07d1da9213ec9'
            '6bf361ae27d2f67e05d9ad0fa6e0bc4e16c2ada6926d6c24b557e2547f4f242e'
            '83f5b36107f7ea50fd5c52b1c3e8d64de3edc5d0f2c2e2e9f634fbbcfd7abd74'
            '2d3fb4d471e9669a5ab2bc8aa9b359639e17af321510f3b878bae03bc259b056'
            '7e9cd651666dce6dd3ad37b8199c7798b226b8995d35e6b672b53ce0bbec59cb'
            '9c68522951940ad49354f4fce56b528414a7e83c44474ceea0582a5434693066'
            '3696dd62a90dae85bf8280a98602fdfa289ec6a5766cb34e5990c0519bfcd702'
            '09d00d42607e2fcf6a72bb3b942d854032aa209f27724bd5238ba60a41e7f9d0'
            'c6fd0d477b71bd2eca4b060815cb15b83b64a348f02e0405c42f092547347815'
            'e396fa1e7f501b4a748fca3b1d039a9339e20b5dca751c2d419efce0ee0d81ca'
            'f9e9ed520ea283935876069bf45606d429cfc876f2f41444b3d06b5b762b7743'
            '9473a15039334f6c431c0cc77f8e4e73a2d4a18c89a63a1750d325e624f69f7b'
            '90b4c40b68f67549cf7ba32e70293108e464a73505271a46c5b8f9219f773d30'
            'e19e91ee638508028131d57e9f162973a4b4be36811d3eba85833b35737f4241'
            '11d755a910c0f7a11f7e4f3e4b46c6aee3c7bc61dcc75c9a0a24bb5cd5a2caf4'
            '14bfe97d8ed8758568550694f3ce0a59fa95219b35bab7b621e8574606e8fb85'
            'ecf3f898c2970377f7853ff7d7dd973e069bb8fd6264a36c01fff56ee28af701'
            'f1b950b4ffbcd71c581ecdaea184b789e1dbbc43da6391c790c096812b20f769'
            '8f6328619340426b2c985f6fd305bb64d164b20b20a5b493a21533761bd5d631'
            'abf76b314ca2432ab718a74a4028bb7707073cb0d50643547c59f41a540b66a5'
            '28ec7ed1890f1073ea95e445e335036ee77034fd04e47fe5073a59a1ac21b754'
            'e2a6bf0f31d3dea4f204b26585d9d36210ff4c8a4f07f55338d2be73f196016b')