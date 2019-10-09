@echo off

rem pushdでバッチのディレクトリに移動、popdで撤収
pushd "%~dp0"

rem 実行ポリシーを変更してから実行
powershell -ExecutionPolicy RemoteSigned -File .\conectingSharePoint.ps1

popd
pause