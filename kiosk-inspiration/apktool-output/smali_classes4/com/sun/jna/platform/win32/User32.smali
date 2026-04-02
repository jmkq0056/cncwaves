.class public interface abstract Lcom/sun/jna/platform/win32/User32;
.super Ljava/lang/Object;
.source "User32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;
.implements Lcom/sun/jna/platform/win32/WinUser;
.implements Lcom/sun/jna/platform/win32/WinNT;


# static fields
.field public static final CS_GLOBALCLASS:I = 0x4000

.field public static final DEVICE_NOTIFY_ALL_INTERFACE_CLASSES:I = 0x4

.field public static final DEVICE_NOTIFY_SERVICE_HANDLE:I = 0x1

.field public static final DEVICE_NOTIFY_WINDOW_HANDLE:I = 0x0

.field public static final HWND_MESSAGE:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/User32;

.field public static final SW_SHOWDEFAULT:I = 0xa

.field public static final WS_EX_TOPMOST:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-class v0, Lcom/sun/jna/platform/win32/User32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "user32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/User32;

    sput-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    .line 54
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$HWND;

    const/4 v1, -0x3

    invoke-static {v1}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinDef$HWND;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/User32;->HWND_MESSAGE:Lcom/sun/jna/platform/win32/WinDef$HWND;

    return-void
.end method


# virtual methods
.method public abstract AdjustWindowRect(Lcom/sun/jna/platform/win32/WinDef$RECT;Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinDef$BOOL;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract AdjustWindowRectEx(Lcom/sun/jna/platform/win32/WinDef$RECT;Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinDef$BOOL;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract AttachThreadInput(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinDef$DWORD;Z)Z
.end method

.method public abstract CallNextHookEx(Lcom/sun/jna/platform/win32/WinUser$HHOOK;ILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)Lcom/sun/jna/platform/win32/WinDef$LRESULT;
.end method

.method public abstract CloseWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z
.end method

.method public abstract CopyIcon(Lcom/sun/jna/platform/win32/WinDef$HICON;)Lcom/sun/jna/platform/win32/WinDef$HICON;
.end method

.method public abstract CreateWindowEx(ILjava/lang/String;Ljava/lang/String;IIIIILcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HMENU;Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract DefWindowProc(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)Lcom/sun/jna/platform/win32/WinDef$LRESULT;
.end method

.method public abstract DestroyIcon(Lcom/sun/jna/platform/win32/WinDef$HICON;)Z
.end method

.method public abstract DestroyWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z
.end method

.method public abstract DispatchMessage(Lcom/sun/jna/platform/win32/WinUser$MSG;)Lcom/sun/jna/platform/win32/WinDef$LRESULT;
.end method

.method public abstract EnumChildWindows(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinUser$WNDENUMPROC;Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract EnumDisplayMonitors(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$RECT;Lcom/sun/jna/platform/win32/WinUser$MONITORENUMPROC;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract EnumThreadWindows(ILcom/sun/jna/platform/win32/WinUser$WNDENUMPROC;Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract EnumWindows(Lcom/sun/jna/platform/win32/WinUser$WNDENUMPROC;Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract ExitWindowsEx(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract FindWindow(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract FindWindowEx(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HWND;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract FlashWindowEx(Lcom/sun/jna/platform/win32/WinUser$FLASHWINFO;)Z
.end method

.method public abstract GetActiveWindow()Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract GetAncestor(Lcom/sun/jna/platform/win32/WinDef$HWND;I)Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract GetAsyncKeyState(I)S
.end method

.method public abstract GetClassInfoEx(Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinUser$WNDCLASSEX;)Z
.end method

.method public abstract GetClassLong(Lcom/sun/jna/platform/win32/WinDef$HWND;I)I
.end method

.method public abstract GetClassLongPtr(Lcom/sun/jna/platform/win32/WinDef$HWND;I)Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;
.end method

.method public abstract GetClassName(Lcom/sun/jna/platform/win32/WinDef$HWND;[CI)I
.end method

.method public abstract GetClientRect(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$RECT;)Z
.end method

.method public abstract GetCursorPos(Lcom/sun/jna/platform/win32/WinDef$POINT;)Z
.end method

.method public abstract GetDC(Lcom/sun/jna/platform/win32/WinDef$HWND;)Lcom/sun/jna/platform/win32/WinDef$HDC;
.end method

.method public abstract GetDesktopWindow()Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract GetForegroundWindow()Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract GetGUIThreadInfo(ILcom/sun/jna/platform/win32/WinUser$GUITHREADINFO;)Z
.end method

.method public abstract GetIconInfo(Lcom/sun/jna/platform/win32/WinDef$HICON;Lcom/sun/jna/platform/win32/WinGDI$ICONINFO;)Z
.end method

.method public abstract GetKeyboardLayout(I)Lcom/sun/jna/platform/win32/WinDef$HKL;
.end method

.method public abstract GetKeyboardLayoutList(I[Lcom/sun/jna/platform/win32/WinDef$HKL;)I
.end method

.method public abstract GetKeyboardLayoutName([C)Z
.end method

.method public abstract GetKeyboardState([B)Z
.end method

.method public abstract GetLastInputInfo(Lcom/sun/jna/platform/win32/WinUser$LASTINPUTINFO;)Z
.end method

.method public abstract GetLayeredWindowAttributes(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/ByteByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetMessage(Lcom/sun/jna/platform/win32/WinUser$MSG;Lcom/sun/jna/platform/win32/WinDef$HWND;II)I
.end method

.method public abstract GetMonitorInfo(Lcom/sun/jna/platform/win32/WinUser$HMONITOR;Lcom/sun/jna/platform/win32/WinUser$MONITORINFO;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorInfo(Lcom/sun/jna/platform/win32/WinUser$HMONITOR;Lcom/sun/jna/platform/win32/WinUser$MONITORINFOEX;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetRawInputDeviceList([Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;Lcom/sun/jna/ptr/IntByReference;I)I
.end method

.method public abstract GetSystemMetrics(I)I
.end method

.method public abstract GetWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract GetWindowInfo(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinUser$WINDOWINFO;)Z
.end method

.method public abstract GetWindowLong(Lcom/sun/jna/platform/win32/WinDef$HWND;I)I
.end method

.method public abstract GetWindowLongPtr(Lcom/sun/jna/platform/win32/WinDef$HWND;I)Lcom/sun/jna/platform/win32/BaseTSD$LONG_PTR;
.end method

.method public abstract GetWindowModuleFileName(Lcom/sun/jna/platform/win32/WinDef$HWND;[CI)I
.end method

.method public abstract GetWindowPlacement(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinUser$WINDOWPLACEMENT;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetWindowRect(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$RECT;)Z
.end method

.method public abstract GetWindowText(Lcom/sun/jna/platform/win32/WinDef$HWND;[CI)I
.end method

.method public abstract GetWindowTextLength(Lcom/sun/jna/platform/win32/WinDef$HWND;)I
.end method

.method public abstract GetWindowThreadProcessId(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract InvalidateRect(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$RECT;Z)Z
.end method

.method public abstract IsWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z
.end method

.method public abstract IsWindowEnabled(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z
.end method

.method public abstract IsWindowVisible(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z
.end method

.method public abstract LoadIcon(Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$HICON;
.end method

.method public abstract LoadImage(Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Ljava/lang/String;IIII)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract LoadString(Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;ILcom/sun/jna/Pointer;I)I
.end method

.method public abstract LockWorkStation()Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract MapVirtualKeyEx(IILcom/sun/jna/platform/win32/WinDef$HKL;)I
.end method

.method public abstract MonitorFromPoint(Lcom/sun/jna/platform/win32/WinDef$POINT$ByValue;I)Lcom/sun/jna/platform/win32/WinUser$HMONITOR;
.end method

.method public abstract MonitorFromRect(Lcom/sun/jna/platform/win32/WinDef$RECT;I)Lcom/sun/jna/platform/win32/WinUser$HMONITOR;
.end method

.method public abstract MonitorFromWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;I)Lcom/sun/jna/platform/win32/WinUser$HMONITOR;
.end method

.method public abstract MoveWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;IIIIZ)Z
.end method

.method public abstract PeekMessage(Lcom/sun/jna/platform/win32/WinUser$MSG;Lcom/sun/jna/platform/win32/WinDef$HWND;III)Z
.end method

.method public abstract PostMessage(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)V
.end method

.method public abstract PostQuitMessage(I)V
.end method

.method public abstract PostThreadMessage(IILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)I
.end method

.method public abstract PrintWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;I)Z
.end method

.method public abstract RedrawWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$RECT;Lcom/sun/jna/platform/win32/WinDef$HRGN;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Z
.end method

.method public abstract RegisterClassEx(Lcom/sun/jna/platform/win32/WinUser$WNDCLASSEX;)Lcom/sun/jna/platform/win32/WinDef$ATOM;
.end method

.method public abstract RegisterClipboardFormat(Ljava/lang/String;)I
.end method

.method public abstract RegisterDeviceNotification(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Structure;I)Lcom/sun/jna/platform/win32/WinUser$HDEVNOTIFY;
.end method

.method public abstract RegisterHotKey(Lcom/sun/jna/platform/win32/WinDef$HWND;III)Z
.end method

.method public abstract RegisterWindowMessage(Ljava/lang/String;)I
.end method

.method public abstract ReleaseDC(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;)I
.end method

.method public abstract SendInput(Lcom/sun/jna/platform/win32/WinDef$DWORD;[Lcom/sun/jna/platform/win32/WinUser$INPUT;I)Lcom/sun/jna/platform/win32/WinDef$DWORD;
.end method

.method public abstract SendMessage(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)Lcom/sun/jna/platform/win32/WinDef$LRESULT;
.end method

.method public abstract SendMessageTimeout(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$LRESULT;
.end method

.method public abstract SetCursorPos(JJ)Z
.end method

.method public abstract SetFocus(Lcom/sun/jna/platform/win32/WinDef$HWND;)Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract SetForegroundWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z
.end method

.method public abstract SetLayeredWindowAttributes(Lcom/sun/jna/platform/win32/WinDef$HWND;IBI)Z
.end method

.method public abstract SetParent(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HWND;)Lcom/sun/jna/platform/win32/WinDef$HWND;
.end method

.method public abstract SetWinEventHook(IILcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/platform/win32/WinUser$WinEventProc;III)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract SetWindowLong(Lcom/sun/jna/platform/win32/WinDef$HWND;II)I
.end method

.method public abstract SetWindowLongPtr(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/Pointer;)Lcom/sun/jna/Pointer;
.end method

.method public abstract SetWindowPlacement(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinUser$WINDOWPLACEMENT;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetWindowPos(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HWND;IIIII)Z
.end method

.method public abstract SetWindowRgn(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HRGN;Z)I
.end method

.method public abstract SetWindowsHookEx(ILcom/sun/jna/platform/win32/WinUser$HOOKPROC;Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;I)Lcom/sun/jna/platform/win32/WinUser$HHOOK;
.end method

.method public abstract ShowWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;I)Z
.end method

.method public abstract ToUnicodeEx(II[B[CIILcom/sun/jna/platform/win32/WinDef$HKL;)I
.end method

.method public abstract TranslateMessage(Lcom/sun/jna/platform/win32/WinUser$MSG;)Z
.end method

.method public abstract UnhookWinEvent(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract UnhookWindowsHookEx(Lcom/sun/jna/platform/win32/WinUser$HHOOK;)Z
.end method

.method public abstract UnregisterClass(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;)Z
.end method

.method public abstract UnregisterDeviceNotification(Lcom/sun/jna/platform/win32/WinUser$HDEVNOTIFY;)Z
.end method

.method public abstract UnregisterHotKey(Lcom/sun/jna/Pointer;I)Z
.end method

.method public abstract UpdateLayeredWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$POINT;Lcom/sun/jna/platform/win32/WinUser$SIZE;Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$POINT;ILcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;I)Z
.end method

.method public abstract UpdateWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z
.end method

.method public abstract VkKeyScanExA(BLcom/sun/jna/platform/win32/WinDef$HKL;)S
.end method

.method public abstract VkKeyScanExW(CLcom/sun/jna/platform/win32/WinDef$HKL;)S
.end method

.method public abstract WaitForInputIdle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinDef$DWORD;
.end method
