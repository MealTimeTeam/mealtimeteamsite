cd ..
cd mealtimeteam.github.io
copy %~dp0\public\*
@ECHO off
IF NOT EXIST "%~dp0\public\categories" (
    mkdir categories
    cd categories
    copy %~dp0\public\categories\*
    cd ..
) ELSE (
    cd categories
    copy %~dp0\public\categories\*
    cd ..
)
@pause

mkdir dist
cd dist
copy %~dp0\public\dist\*
cd ..

mkdir images
cd images
copy %~dp0\public\images\*
cd ..

mkdir tags
cd tags
copy %~dp0\public\tags\*
cd ..

ls
@pause