@echo ConfData Pack Start ......
set NAMESPACE=ConfigData
set PACKAGE_NAME=com.trinitigames.server.conf.auto

set EXCLE_PAHT=G:\GitHub\Excel2Protobuf\test\excel
set DATA_OUTPUT=G:\GitHub\Excel2Protobuf\test\client\data
set CSHARP_OUTPUT=G:\GitHub\Excel2Protobuf\test\client\scripts
set SERVER_DATAPATH=G:\GitHub\Excel2Protobuf\test\server\data
set SERVER_OUTPUT=G:\GitHub\Excel2Protobuf\test\server\class


set TEMP_PROTOFILE=.\_temp\proto_files
set SERVER_PROTOFILE=G:\GitHub\Excel2Protobuf\test\server\proto
set SERVER_LANGUGE=java

rem build script and data
python G:\GitHub\Excel2Protobuf\src\Map\python\excel_to_protobuf.py -i %EXCLE_PAHT% -n %NAMESPACE% -d %DATA_OUTPUT% -c %CSHARP_OUTPUT% -s %SERVER_OUTPUT% -l %SERVER_LANGUGE% -p %PACKAGE_NAME%
rem copy to server work folder
xcopy /s/y/i "%DATA_OUTPUT%\*.bin" "%SERVER_DATAPATH%" 

xcopy /s/y/i "%TEMP_PROTOFILE%\*.proto" "%SERVER_PROTOFILE%"

@echo ======== ConfData Pack End ========
pause