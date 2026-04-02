package com.sun.jna.platform.win32;

import com.sun.jna.Native;
import com.sun.jna.Pointer;
import com.sun.jna.Structure;
import com.sun.jna.platform.win32.WinDef;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.ptr.IntByReference;
import com.sun.jna.ptr.PointerByReference;
import com.sun.jna.win32.StdCallLibrary;
import com.sun.jna.win32.W32APIOptions;
import com.sun.jna.win32.W32APITypeMapper;

/* JADX INFO: loaded from: classes4.dex */
public interface Wtsapi32 extends StdCallLibrary {
    public static final int NOTIFY_FOR_ALL_SESSIONS = 1;
    public static final int NOTIFY_FOR_THIS_SESSION = 0;
    public static final int WTS_ANY_SESSION = -2;
    public static final int WTS_CONSOLE_CONNECT = 1;
    public static final int WTS_CONSOLE_DISCONNECT = 2;
    public static final int WTS_CURRENT_SESSION = -1;
    public static final int WTS_PROCESS_INFO_LEVEL_0 = 0;
    public static final int WTS_PROCESS_INFO_LEVEL_1 = 1;
    public static final int WTS_REMOTE_CONNECT = 3;
    public static final int WTS_REMOTE_DISCONNECT = 4;
    public static final int WTS_SESSION_LOCK = 7;
    public static final int WTS_SESSION_LOGOFF = 6;
    public static final int WTS_SESSION_LOGON = 5;
    public static final int WTS_SESSION_REMOTE_CONTROL = 9;
    public static final int WTS_SESSION_UNLOCK = 8;
    public static final Wtsapi32 INSTANCE = (Wtsapi32) Native.load("Wtsapi32", Wtsapi32.class, W32APIOptions.DEFAULT_OPTIONS);
    public static final WinNT.HANDLE WTS_CURRENT_SERVER_HANDLE = new WinNT.HANDLE(null);

    boolean WTSEnumerateProcessesEx(WinNT.HANDLE handle, IntByReference intByReference, int i, PointerByReference pointerByReference, IntByReference intByReference2);

    boolean WTSFreeMemoryEx(int i, Pointer pointer, int i2);

    boolean WTSRegisterSessionNotification(WinDef.HWND hwnd, int i);

    boolean WTSUnRegisterSessionNotification(WinDef.HWND hwnd);

    @Structure.FieldOrder({"SessionId", "ProcessId", "pProcessName", "pUserSid", "NumberOfThreads", "HandleCount", "PagefileUsage", "PeakPagefileUsage", "WorkingSetSize", "PeakWorkingSetSize", "UserTime", "KernelTime"})
    public static class WTS_PROCESS_INFO_EX extends Structure {
        public int HandleCount;
        public WinNT.LARGE_INTEGER KernelTime;
        public int NumberOfThreads;
        public int PagefileUsage;
        public int PeakPagefileUsage;
        public int PeakWorkingSetSize;
        public int ProcessId;
        public int SessionId;
        public WinNT.LARGE_INTEGER UserTime;
        public int WorkingSetSize;
        public String pProcessName;
        public WinNT.PSID pUserSid;

        public WTS_PROCESS_INFO_EX() {
            super(W32APITypeMapper.DEFAULT);
        }

        public WTS_PROCESS_INFO_EX(Pointer pointer) {
            super(pointer, 0, W32APITypeMapper.DEFAULT);
            read();
        }
    }
}
