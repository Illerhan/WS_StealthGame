@ECHO OFF
SET DXC="D:\Epic Games\UE_5.2\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "D:\Epic Games\UE_5.2\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 /auto-binding-space 0 /Zpr /O3 -Wno-parentheses-equality -disable-lifetime-markers /T ps_6_6 /E ComposeVolumetricRTOverScenePS /Fc VolumetricRenderTarget.d3dasm /Fo VolumetricRenderTarget.dxil VolumetricRenderTarget.usf
:END
PAUSE