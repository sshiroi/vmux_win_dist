@echo off

WHERE cargo
IF %ERRORLEVEL% NEQ 0 (
    ECHO "Please install rustup"
    pause
    exit
) else (
    echo "Cargo found"
)

WHERE clang
IF %ERRORLEVEL% NEQ 0 (
    ECHO "Please install LLVM and choose add to path"
    pause
    exit
) else (
    echo "LLVM found"
)

if exist vmux/Cargo.toml (
    ECHO "VMUX found"
) else (
    ECHO "Please download vmux as a zip and extract it into vmux folder"
    pause
    exit
)

if exist vmux/ipagp.ttf (
    ECHO "font found"
) else (
    copy "fonts\ipagp.ttf" "vmux\ipagp.ttf"
)

SET FFMS_INCLUDE_DIR=%cd%\ffms_include
SET FFMS_LIB_DIR=%cd%\ffms_lib
SET LIBBLURAY_INCLUDE_DIR=%cd%\bluray_include
SET LIBBLURAY_AND_LIBS_DIR=%cd%\bluray_lib

SET PATH=%PATH%;%cd%\mpv;%cd%\vlc


echo "Starting"

pushd vmux & cargo run --release --bin vmux_gui & popd

pause