// dllmain.cpp : Defines the entry point for the DLL application.
#include <Windows.h>

#pragma data_seg("SHARED")
HHOOK hook;
#pragma data_seg()
#pragma comment(linker, "/SECTION:SHARED,RWS")

HINSTANCE instance;

BOOL CALLBACK ChangeNameEnum(HWND hwnd,LPARAM lparam){
	SendMessageW(hwnd, WM_SETTEXT, 0, LPARAM(L"Я за тобой наблюдаю..."));
	return true;
}

LRESULT CALLBACK WndHook(int code,WPARAM wParam,LPARAM lParam) {
	if(code==HCBT_CREATEWND){
		EnumWindows(&ChangeNameEnum,0);
	}
	return CallNextHookEx(hook, code, wParam, lParam);
}

extern "C" __declspec(dllexport) void installHook() {
	hook = SetWindowsHookEx(WH_CBT,WndHook, instance, 0);
	if(hook==0){
		//error
	}
}

extern "C" __declspec(dllexport) void uninstallHook() {
	if(UnhookWindowsHookEx(hook)==0){
		//error
	}
}

extern "C" __declspec(dllexport) BOOL APIENTRY DllMain( HMODULE hModule,
	DWORD  ul_reason_for_call,
	LPVOID lpReserved
	)
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH:
		instance=hModule;
		break;
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		break;
	}
	return TRUE;
}