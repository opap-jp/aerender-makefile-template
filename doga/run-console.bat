@ECHO OFF

SET MSYS_DIR=C:\MinGW\msys

REM MSYS�W���ł�profile�Łucd $HOME�v�����Ă���̂ŁA��ƃf�B���N�g�����ς���Ă��܂��B
REM ������������ׁAprofile��ǂݍ���ł��Ȃ���Ԃň�U��ƃf�B���N�g���̃p�X���擾����B
FOR /F "usebackq" %%w IN (`%MSYS_DIR%\bin\sh.exe -c "printf $(printf '\x25q') ""$(pwd)"""`) DO SET CUR_DIR=%%w

REM ��L�Ŏ擾������ƃf�B���N�g���Ɉړ����Ă���R���\�[�����J��

%MSYS_DIR%\bin\sh.exe --login -i -c "cd %CUR_DIR% && bash"
