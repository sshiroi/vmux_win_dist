# Collection of scripts for building vmux under windows

# start.bat
Should be put in the release zip, the user needs to manually adjust the file paths


# compile.bat
- Install rustup from https://rustup.rs with msvc buildtools
- Download LLVM https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.6/LLVM-14.0.6-win64.exe and add to systempath
- download all all dependecys mentioned in the vmux readme into their respective folders
- download vmux
- download the font https://github.com/hyoshiok/ttf-ipafont/blob/master/ipagp.ttf into fonts/
- you can also put mpv and vlc in, but if your not going to run it its not needed.
- Filestructure should look something like this
```
bluray_include
└── libbluray
    ├── bluray.h
    ├── bluray-version.h
    ├── clpi_data.h
    ├── filesystem.h
    ├── keys.h
    ├── log_control.h
    ├── meta_data.h
    ├── overlay.h
    └── player_settings.h
bluray_lib
├── bluray.exp
├── bluray.lib
├── bluray.pdb
├── bz2.exp
├── bz2.lib
├── bz2.pdb
├── fontconfig.exp
├── fontconfig.lib
├── fontconfig.pdb
├── freetype.exp
├── freetype.lib
├── freetype.pdb
├── iconv.exp
├── iconv.lib
├── iconv.pdb
├── libbluray.lib
├── libbluray.pdb
├── libbz2.lib
├── libbz2.pdb
├── libfontconfig.lib
├── libfontconfig.pdb
├── libfreetype.lib
├── libfreetype.pdb
├── libiconv.lib
├── libiconv.pdb
├── liblzma.lib
├── liblzma.pdb
├── libxml2.lib
├── libxml2.pdb
├── libzlib.lib
├── libzlib.pdb
├── lzma.exp
├── lzma.lib
├── lzma.pdb
├── xml2.exp
├── xml2.lib
├── xml2.pdb
├── zlib.exp
├── zlib.lib
└── zlib.pdb
ffms_include
├── ffmscompat.h
└── ffms.h
ffms_lib
├── ffms2.dll
├── ffms2.lib
├── ffmscompat.h
├── ffms.h
└── ffmsindex.exe
fonts/
└── ipagp.ttf
vmux
├── bluray_support
│   ├── build.rs
.......
```
