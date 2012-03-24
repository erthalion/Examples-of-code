#include <Windows.h>

typedef void (*InstallHook)();
typedef void (*UninstallHook)();

int APIENTRY WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
                     LPSTR lpCmdLine, int nCmdShow)
{
	HINSTANCE library = LoadLibraryW(L"ISeeYouHook.dll");
	if (library == NULL) {
		return 1;
	}

	InstallHook install = (InstallHook) GetProcAddress(library, "installHook");
	UninstallHook uninstall = (UninstallHook) GetProcAddress(library, "uninstallHook");

	install();

	Sleep(30000);

	uninstall();

	FreeLibrary(library);
	return 0;
}
