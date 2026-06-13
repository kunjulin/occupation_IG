@echo off
if not exist input-cache mkdir input-cache
echo Downloading latest publisher.jar from HL7...
powershell -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar' -OutFile 'input-cache\publisher.jar'"
echo Publisher updated successfully.
pause
