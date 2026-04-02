package com.sun.jna.platform.win32;

import com.sun.jna.platform.win32.WinDef;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.ptr.IntByReference;

/* JADX INFO: loaded from: classes4.dex */
public interface Wincon {
    public static final int ATTACH_PARENT_PROCESS = -1;
    public static final int CONSOLE_FULLSCREEN = 1;
    public static final int CONSOLE_FULLSCREEN_HARDWARE = 2;
    public static final int CTRL_BREAK_EVENT = 1;
    public static final int CTRL_C_EVENT = 0;
    public static final int ENABLE_ECHO_INPUT = 4;
    public static final int ENABLE_EXTENDED_FLAGS = 128;
    public static final int ENABLE_INSERT_MODE = 32;
    public static final int ENABLE_LINE_INPUT = 2;
    public static final int ENABLE_MOUSE_INPUT = 16;
    public static final int ENABLE_PROCESSED_INPUT = 1;
    public static final int ENABLE_PROCESSED_OUTPUT = 1;
    public static final int ENABLE_QUICK_EDIT_MODE = 64;
    public static final int ENABLE_WINDOW_INPUT = 8;
    public static final int ENABLE_WRAP_AT_EOL_OUTPUT = 2;
    public static final int MAX_CONSOLE_TITLE_LENGTH = 65536;
    public static final int STD_ERROR_HANDLE = -12;
    public static final int STD_INPUT_HANDLE = -10;
    public static final int STD_OUTPUT_HANDLE = -11;

    boolean AllocConsole();

    boolean AttachConsole(int i);

    boolean FlushConsoleInputBuffer(WinNT.HANDLE handle);

    boolean FreeConsole();

    boolean GenerateConsoleCtrlEvent(int i, int i2);

    int GetConsoleCP();

    boolean GetConsoleDisplayMode(IntByReference intByReference);

    boolean GetConsoleMode(WinNT.HANDLE handle, IntByReference intByReference);

    int GetConsoleOriginalTitle(char[] cArr, int i);

    int GetConsoleOutputCP();

    int GetConsoleTitle(char[] cArr, int i);

    WinDef.HWND GetConsoleWindow();

    boolean GetNumberOfConsoleInputEvents(WinNT.HANDLE handle, IntByReference intByReference);

    boolean GetNumberOfConsoleMouseButtons(IntByReference intByReference);

    WinNT.HANDLE GetStdHandle(int i);

    boolean SetConsoleCP(int i);

    boolean SetConsoleMode(WinNT.HANDLE handle, int i);

    boolean SetConsoleOutputCP(int i);

    boolean SetConsoleTitle(String str);

    boolean SetStdHandle(int i, WinNT.HANDLE handle);
}
