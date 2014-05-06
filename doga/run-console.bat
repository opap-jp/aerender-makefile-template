@ECHO OFF

SET MSYS_DIR=C:\MinGW\msys

REM MSYS標準ではprofileで「cd $HOME」をしているので、作業ディレクトリが変わってしまう。
REM それを回避する為、profileを読み込んでいない状態で一旦作業ディレクトリのパスを取得する。
FOR /F "usebackq" %%w IN (`%MSYS_DIR%\bin\sh.exe -c "printf $(printf '\x25q') ""$(pwd)"""`) DO SET CUR_DIR=%%w

REM 上記で取得した作業ディレクトリに移動してからコンソールを開く

%MSYS_DIR%\bin\sh.exe --login -i -c "cd %CUR_DIR% && bash"
