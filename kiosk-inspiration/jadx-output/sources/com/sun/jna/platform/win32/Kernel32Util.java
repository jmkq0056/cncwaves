package com.sun.jna.platform.win32;

import com.squareup.moshi.Json;
import com.sun.jna.LastErrorException;
import com.sun.jna.Memory;
import com.sun.jna.Native;
import com.sun.jna.Pointer;
import com.sun.jna.platform.win32.Tlhelp32;
import com.sun.jna.platform.win32.WinBase;
import com.sun.jna.platform.win32.WinDef;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.ptr.IntByReference;
import com.sun.jna.ptr.PointerByReference;
import com.sun.jna.win32.W32APITypeMapper;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Kernel32Util implements WinDef {
    public static final String VOLUME_GUID_PATH_PREFIX = "\\\\?\\Volume{";
    public static final String VOLUME_GUID_PATH_SUFFIX = "}\\";

    private static boolean isWideCharEnvironmentStringBlock(byte b) {
        return b == 0;
    }

    public static String getComputerName() {
        int i = WinBase.MAX_COMPUTERNAME_LENGTH + 1;
        char[] cArr = new char[i];
        if (!Kernel32.INSTANCE.GetComputerName(cArr, new IntByReference(i))) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        return Native.toString(cArr);
    }

    public static void freeLocalMemory(Pointer pointer) {
        if (Kernel32.INSTANCE.LocalFree(pointer) != null) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
    }

    public static void freeGlobalMemory(Pointer pointer) {
        if (Kernel32.INSTANCE.GlobalFree(pointer) != null) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
    }

    public static void closeHandleRefs(WinNT.HANDLEByReference... hANDLEByReferenceArr) {
        Win32Exception win32Exception = null;
        for (WinNT.HANDLEByReference hANDLEByReference : hANDLEByReferenceArr) {
            try {
                closeHandleRef(hANDLEByReference);
            } catch (Win32Exception e) {
                if (win32Exception == null) {
                    win32Exception = e;
                } else {
                    win32Exception.addSuppressedReflected(e);
                }
            }
        }
        if (win32Exception != null) {
            throw win32Exception;
        }
    }

    public static void closeHandleRef(WinNT.HANDLEByReference hANDLEByReference) {
        closeHandle(hANDLEByReference == null ? null : hANDLEByReference.getValue());
    }

    public static void closeHandles(WinNT.HANDLE... handleArr) {
        Win32Exception win32Exception = null;
        for (WinNT.HANDLE handle : handleArr) {
            try {
                closeHandle(handle);
            } catch (Win32Exception e) {
                if (win32Exception == null) {
                    win32Exception = e;
                } else {
                    win32Exception.addSuppressedReflected(e);
                }
            }
        }
        if (win32Exception != null) {
            throw win32Exception;
        }
    }

    public static void closeHandle(WinNT.HANDLE handle) {
        if (handle != null && !Kernel32.INSTANCE.CloseHandle(handle)) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
    }

    public static String formatMessage(int i) {
        PointerByReference pointerByReference = new PointerByReference();
        if (Kernel32.INSTANCE.FormatMessage(4864, null, i, 0, pointerByReference, 0, null) == 0) {
            throw new LastErrorException(Native.getLastError());
        }
        Pointer value = pointerByReference.getValue();
        try {
            return value.getWideString(0L).trim();
        } finally {
            freeLocalMemory(value);
        }
    }

    public static String formatMessage(WinNT.HRESULT hresult) {
        return formatMessage(hresult.intValue());
    }

    public static String formatMessageFromLastErrorCode(int i) {
        return formatMessage(W32Errors.HRESULT_FROM_WIN32(i));
    }

    public static String getLastErrorMessage() {
        return formatMessageFromLastErrorCode(Kernel32.INSTANCE.GetLastError());
    }

    public static String getTempPath() {
        WinDef.DWORD dword = new WinDef.DWORD(260L);
        char[] cArr = new char[dword.intValue()];
        if (Kernel32.INSTANCE.GetTempPath(dword, cArr).intValue() == 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        return Native.toString(cArr);
    }

    public static void deleteFile(String str) {
        if (!Kernel32.INSTANCE.DeleteFile(str)) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
    }

    public static List<String> getLogicalDriveStrings() {
        WinDef.DWORD dwordGetLogicalDriveStrings = Kernel32.INSTANCE.GetLogicalDriveStrings(new WinDef.DWORD(0L), null);
        if (dwordGetLogicalDriveStrings.intValue() <= 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        char[] cArr = new char[dwordGetLogicalDriveStrings.intValue()];
        int iIntValue = Kernel32.INSTANCE.GetLogicalDriveStrings(dwordGetLogicalDriveStrings, cArr).intValue();
        if (iIntValue <= 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        return Native.toStringList(cArr, 0, iIntValue);
    }

    public static int getFileAttributes(String str) {
        int iGetFileAttributes = Kernel32.INSTANCE.GetFileAttributes(str);
        if (iGetFileAttributes != -1) {
            return iGetFileAttributes;
        }
        throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007c  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.sun.jna.platform.win32.WinNT$HANDLE] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getFileType(java.lang.String r11) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r11)
            boolean r0 = r0.exists()
            if (r0 == 0) goto L7d
            r1 = 0
            com.sun.jna.platform.win32.Kernel32 r2 = com.sun.jna.platform.win32.Kernel32.INSTANCE     // Catch: java.lang.Throwable -> L5f com.sun.jna.platform.win32.Win32Exception -> L63
            com.sun.jna.platform.win32.WinBase$SECURITY_ATTRIBUTES r6 = new com.sun.jna.platform.win32.WinBase$SECURITY_ATTRIBUTES     // Catch: java.lang.Throwable -> L5f com.sun.jna.platform.win32.Win32Exception -> L63
            r6.<init>()     // Catch: java.lang.Throwable -> L5f com.sun.jna.platform.win32.Win32Exception -> L63
            com.sun.jna.platform.win32.WinNT$HANDLEByReference r0 = new com.sun.jna.platform.win32.WinNT$HANDLEByReference     // Catch: java.lang.Throwable -> L5f com.sun.jna.platform.win32.Win32Exception -> L63
            r0.<init>()     // Catch: java.lang.Throwable -> L5f com.sun.jna.platform.win32.Win32Exception -> L63
            com.sun.jna.platform.win32.WinNT$HANDLE r9 = r0.getValue()     // Catch: java.lang.Throwable -> L5f com.sun.jna.platform.win32.Win32Exception -> L63
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = 1
            r7 = 3
            r8 = 128(0x80, float:1.794E-43)
            r3 = r11
            com.sun.jna.platform.win32.WinNT$HANDLE r11 = r2.CreateFile(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L5f com.sun.jna.platform.win32.Win32Exception -> L63
            com.sun.jna.platform.win32.WinNT$HANDLE r0 = com.sun.jna.platform.win32.WinBase.INVALID_HANDLE_VALUE     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            boolean r0 = r0.equals(r11)     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            if (r0 != 0) goto L50
            com.sun.jna.platform.win32.Kernel32 r0 = com.sun.jna.platform.win32.Kernel32.INSTANCE     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            int r2 = r0.GetFileType(r11)     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            if (r2 == 0) goto L38
            goto L40
        L38:
            com.sun.jna.platform.win32.Kernel32 r0 = com.sun.jna.platform.win32.Kernel32.INSTANCE     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            int r0 = r0.GetLastError()     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            if (r0 != 0) goto L4a
        L40:
            closeHandle(r11)     // Catch: com.sun.jna.platform.win32.Win32Exception -> L44
            goto L46
        L44:
            r0 = move-exception
            r1 = r0
        L46:
            if (r1 != 0) goto L49
            return r2
        L49:
            throw r1
        L4a:
            com.sun.jna.platform.win32.Win32Exception r2 = new com.sun.jna.platform.win32.Win32Exception     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            r2.<init>(r0)     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            throw r2     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
        L50:
            com.sun.jna.platform.win32.Win32Exception r0 = new com.sun.jna.platform.win32.Win32Exception     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            com.sun.jna.platform.win32.Kernel32 r2 = com.sun.jna.platform.win32.Kernel32.INSTANCE     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            int r2 = r2.GetLastError()     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            r0.<init>(r2)     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
            throw r0     // Catch: com.sun.jna.platform.win32.Win32Exception -> L5c java.lang.Throwable -> L69
        L5c:
            r0 = move-exception
            r1 = r0
            goto L68
        L5f:
            r0 = move-exception
            r11 = r0
            r2 = r1
            goto L6d
        L63:
            r0 = move-exception
            r11 = r0
            r10 = r1
            r1 = r11
            r11 = r10
        L68:
            throw r1     // Catch: java.lang.Throwable -> L69
        L69:
            r0 = move-exception
            r2 = r1
            r1 = r11
            r11 = r0
        L6d:
            closeHandle(r1)     // Catch: com.sun.jna.platform.win32.Win32Exception -> L71
            goto L79
        L71:
            r0 = move-exception
            if (r2 != 0) goto L76
            r2 = r0
            goto L79
        L76:
            r2.addSuppressedReflected(r0)
        L79:
            if (r2 == 0) goto L7c
            throw r2
        L7c:
            throw r11
        L7d:
            r3 = r11
            java.io.FileNotFoundException r11 = new java.io.FileNotFoundException
            r11.<init>(r3)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.jna.platform.win32.Kernel32Util.getFileType(java.lang.String):int");
    }

    public static int getDriveType(String str) {
        return Kernel32.INSTANCE.GetDriveType(str);
    }

    public static String getEnvironmentVariable(String str) {
        int iGetEnvironmentVariable = Kernel32.INSTANCE.GetEnvironmentVariable(str, null, 0);
        if (iGetEnvironmentVariable == 0) {
            return null;
        }
        if (iGetEnvironmentVariable < 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        char[] cArr = new char[iGetEnvironmentVariable];
        if (Kernel32.INSTANCE.GetEnvironmentVariable(str, cArr, iGetEnvironmentVariable) <= 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        return Native.toString(cArr);
    }

    public static Map<String, String> getEnvironmentVariables() {
        Pointer pointerGetEnvironmentStrings = Kernel32.INSTANCE.GetEnvironmentStrings();
        if (pointerGetEnvironmentStrings == null) {
            throw new LastErrorException(Kernel32.INSTANCE.GetLastError());
        }
        try {
            Map<String, String> environmentVariables = getEnvironmentVariables(pointerGetEnvironmentStrings, 0L);
            if (Kernel32.INSTANCE.FreeEnvironmentStrings(pointerGetEnvironmentStrings)) {
                return environmentVariables;
            }
            throw new LastErrorException(Kernel32.INSTANCE.GetLastError());
        } catch (Throwable th) {
            if (!Kernel32.INSTANCE.FreeEnvironmentStrings(pointerGetEnvironmentStrings)) {
                throw new LastErrorException(Kernel32.INSTANCE.GetLastError());
            }
            throw th;
        }
    }

    public static Map<String, String> getEnvironmentVariables(Pointer pointer, long j) {
        if (pointer == null) {
            return null;
        }
        TreeMap treeMap = new TreeMap();
        boolean zIsWideCharEnvironmentStringBlock = isWideCharEnvironmentStringBlock(pointer, j);
        long j2 = zIsWideCharEnvironmentStringBlock ? 2L : 1L;
        while (true) {
            String environmentStringBlockEntry = readEnvironmentStringBlockEntry(pointer, j, zIsWideCharEnvironmentStringBlock);
            int length = environmentStringBlockEntry.length();
            if (length == 0) {
                return treeMap;
            }
            int iIndexOf = environmentStringBlockEntry.indexOf(61);
            if (iIndexOf < 0) {
                throw new IllegalArgumentException("Missing variable value separator in " + environmentStringBlockEntry);
            }
            treeMap.put(environmentStringBlockEntry.substring(0, iIndexOf), environmentStringBlockEntry.substring(iIndexOf + 1));
            j += ((long) (length + 1)) * j2;
        }
    }

    public static String readEnvironmentStringBlockEntry(Pointer pointer, long j, boolean z) {
        int iFindEnvironmentStringBlockEntryEnd = (int) (findEnvironmentStringBlockEntryEnd(pointer, j, z) - j);
        if (iFindEnvironmentStringBlockEntryEnd == 0) {
            return "";
        }
        if (z) {
            iFindEnvironmentStringBlockEntryEnd /= 2;
        }
        char[] cArr = new char[iFindEnvironmentStringBlockEntryEnd];
        long j2 = z ? 2L : 1L;
        ByteOrder byteOrderNativeOrder = ByteOrder.nativeOrder();
        int i = 0;
        while (i < iFindEnvironmentStringBlockEntryEnd) {
            byte b = pointer.getByte(j);
            if (z) {
                byte b2 = pointer.getByte(j + 1);
                if (ByteOrder.LITTLE_ENDIAN.equals(byteOrderNativeOrder)) {
                    cArr[i] = (char) ((b & 255) | ((b2 << 8) & 65280));
                } else {
                    cArr[i] = (char) (((b << 8) & 65280) | (b2 & 255));
                }
            } else {
                cArr[i] = (char) (b & 255);
            }
            i++;
            j += j2;
        }
        return new String(cArr);
    }

    public static long findEnvironmentStringBlockEntryEnd(Pointer pointer, long j, boolean z) {
        long j2 = z ? 2L : 1L;
        while (pointer.getByte(j) != 0) {
            j += j2;
        }
        return j;
    }

    public static boolean isWideCharEnvironmentStringBlock(Pointer pointer, long j) {
        byte b = pointer.getByte(j);
        byte b2 = pointer.getByte(j + 1);
        if (ByteOrder.LITTLE_ENDIAN.equals(ByteOrder.nativeOrder())) {
            return isWideCharEnvironmentStringBlock(b2);
        }
        return isWideCharEnvironmentStringBlock(b);
    }

    public static final int getPrivateProfileInt(String str, String str2, int i, String str3) {
        return Kernel32.INSTANCE.GetPrivateProfileInt(str, str2, i, str3);
    }

    public static final String getPrivateProfileString(String str, String str2, String str3, String str4) {
        char[] cArr = new char[1024];
        Kernel32.INSTANCE.GetPrivateProfileString(str, str2, str3, cArr, new WinDef.DWORD(1024), str4);
        return Native.toString(cArr);
    }

    public static final void writePrivateProfileString(String str, String str2, String str3, String str4) {
        if (!Kernel32.INSTANCE.WritePrivateProfileString(str, str2, str3, str4)) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
    }

    public static final WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION[] getLogicalProcessorInformation() {
        int iGetLastError;
        int size = new WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION().size();
        WinDef.DWORDByReference dWORDByReference = new WinDef.DWORDByReference(new WinDef.DWORD(size));
        do {
            Memory memory = new Memory(dWORDByReference.getValue().intValue());
            if (!Kernel32.INSTANCE.GetLogicalProcessorInformation(memory, dWORDByReference)) {
                iGetLastError = Kernel32.INSTANCE.GetLastError();
            } else {
                return (WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION[]) new WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION(memory).toArray(new WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION[dWORDByReference.getValue().intValue() / size]);
            }
        } while (iGetLastError == 122);
        throw new Win32Exception(iGetLastError);
    }

    public static final WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX[] getLogicalProcessorInformationEx(int i) {
        int iGetLastError;
        WinDef.DWORDByReference dWORDByReference = new WinDef.DWORDByReference(new WinDef.DWORD(1L));
        do {
            Memory memory = new Memory(dWORDByReference.getValue().intValue());
            if (!Kernel32.INSTANCE.GetLogicalProcessorInformationEx(i, memory, dWORDByReference)) {
                iGetLastError = Kernel32.INSTANCE.GetLastError();
            } else {
                ArrayList arrayList = new ArrayList();
                int i2 = 0;
                while (i2 < dWORDByReference.getValue().intValue()) {
                    WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX system_logical_processor_information_exFromPointer = WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX.fromPointer(memory.share(i2));
                    arrayList.add(system_logical_processor_information_exFromPointer);
                    i2 += system_logical_processor_information_exFromPointer.size;
                }
                return (WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX[]) arrayList.toArray(new WinNT.SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX[0]);
            }
        } while (iGetLastError == 122);
        throw new Win32Exception(iGetLastError);
    }

    public static final String[] getPrivateProfileSection(String str, String str2) {
        char[] cArr = new char[32768];
        if (Kernel32.INSTANCE.GetPrivateProfileSection(str, cArr, new WinDef.DWORD(32768), str2).intValue() == 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        return new String(cArr).split(Json.UNSET_NAME);
    }

    public static final String[] getPrivateProfileSectionNames(String str) {
        char[] cArr = new char[65536];
        if (Kernel32.INSTANCE.GetPrivateProfileSectionNames(cArr, new WinDef.DWORD(65536), str).intValue() == 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        return new String(cArr).split(Json.UNSET_NAME);
    }

    public static final void writePrivateProfileSection(String str, String[] strArr, String str2) {
        StringBuilder sb = new StringBuilder();
        for (String str3 : strArr) {
            sb.append(str3).append((char) 0);
        }
        sb.append((char) 0);
        if (!Kernel32.INSTANCE.WritePrivateProfileSection(str, sb.toString(), str2)) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
    }

    public static final List<String> queryDosDevice(String str, int i) {
        char[] cArr = new char[i];
        int iQueryDosDevice = Kernel32.INSTANCE.QueryDosDevice(str, cArr, i);
        if (iQueryDosDevice == 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        return Native.toStringList(cArr, 0, iQueryDosDevice);
    }

    public static final List<String> getVolumePathNamesForVolumeName(String str) {
        char[] cArr = new char[WinUser.WM_SYSKEYUP];
        IntByReference intByReference = new IntByReference();
        if (!Kernel32.INSTANCE.GetVolumePathNamesForVolumeName(str, cArr, WinUser.WM_SYSKEYUP, intByReference)) {
            int iGetLastError = Kernel32.INSTANCE.GetLastError();
            if (iGetLastError != 234) {
                throw new Win32Exception(iGetLastError);
            }
            int value = intByReference.getValue();
            cArr = new char[value];
            if (!Kernel32.INSTANCE.GetVolumePathNamesForVolumeName(str, cArr, value, intByReference)) {
                throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
            }
        }
        return Native.toStringList(cArr, 0, intByReference.getValue());
    }

    public static final String extractVolumeGUID(String str) {
        if (str == null || str.length() <= VOLUME_GUID_PATH_PREFIX.length() + VOLUME_GUID_PATH_SUFFIX.length() || !str.startsWith(VOLUME_GUID_PATH_PREFIX) || !str.endsWith(VOLUME_GUID_PATH_SUFFIX)) {
            throw new IllegalArgumentException("Bad volume GUID path format: " + str);
        }
        return str.substring(VOLUME_GUID_PATH_PREFIX.length(), str.length() - VOLUME_GUID_PATH_SUFFIX.length());
    }

    public static final String QueryFullProcessImageName(WinNT.HANDLE handle, int i) {
        char[] cArr = new char[260];
        IntByReference intByReference = new IntByReference(260);
        if (Kernel32.INSTANCE.QueryFullProcessImageName(handle, 0, cArr, intByReference)) {
            return new String(cArr).substring(0, intByReference.getValue());
        }
        throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
    }

    public static byte[] getResource(String str, String str2, String str3) {
        byte[] byteArray;
        Pointer memory;
        Pointer memory2;
        WinDef.HRSRC hrsrcFindResource;
        Win32Exception win32Exception = null;
        WinDef.HMODULE hmoduleLoadLibraryEx = Kernel32.INSTANCE.LoadLibraryEx(str, null, 2);
        if (hmoduleLoadLibraryEx == null) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        try {
            try {
                memory = new Pointer(Long.parseLong(str2));
            } catch (NumberFormatException unused) {
                memory = new Memory(Native.WCHAR_SIZE * (str2.length() + 1));
                memory.setWideString(0L, str2);
            }
            try {
                memory2 = new Pointer(Long.parseLong(str3));
            } catch (NumberFormatException unused2) {
                memory2 = new Memory(Native.WCHAR_SIZE * (str3.length() + 1));
                memory2.setWideString(0L, str3);
            }
            hrsrcFindResource = Kernel32.INSTANCE.FindResource(hmoduleLoadLibraryEx, memory2, memory);
        } catch (Win32Exception e) {
            if (hmoduleLoadLibraryEx != null && !Kernel32.INSTANCE.FreeLibrary(hmoduleLoadLibraryEx)) {
                Win32Exception win32Exception2 = new Win32Exception(Kernel32.INSTANCE.GetLastError());
                win32Exception2.addSuppressedReflected(e);
                throw win32Exception2;
            }
            win32Exception = e;
            byteArray = null;
        } catch (Throwable th) {
            if (hmoduleLoadLibraryEx != null && !Kernel32.INSTANCE.FreeLibrary(hmoduleLoadLibraryEx)) {
                throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
            }
            throw th;
        }
        if (hrsrcFindResource == null) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        WinNT.HANDLE handleLoadResource = Kernel32.INSTANCE.LoadResource(hmoduleLoadLibraryEx, hrsrcFindResource);
        if (handleLoadResource == null) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        int iSizeofResource = Kernel32.INSTANCE.SizeofResource(hmoduleLoadLibraryEx, hrsrcFindResource);
        if (iSizeofResource == 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        Pointer pointerLockResource = Kernel32.INSTANCE.LockResource(handleLoadResource);
        if (pointerLockResource == null) {
            throw new IllegalStateException("LockResource returned null.");
        }
        byteArray = pointerLockResource.getByteArray(0L, iSizeofResource);
        if (hmoduleLoadLibraryEx != null && !Kernel32.INSTANCE.FreeLibrary(hmoduleLoadLibraryEx)) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        if (win32Exception == null) {
            return byteArray;
        }
        throw win32Exception;
    }

    public static Map<String, List<String>> getResourceNames(String str) {
        Pointer memory;
        Win32Exception win32Exception = null;
        WinDef.HMODULE hmoduleLoadLibraryEx = Kernel32.INSTANCE.LoadLibraryEx(str, null, 2);
        if (hmoduleLoadLibraryEx == null) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        final ArrayList<String> arrayList = new ArrayList();
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        WinBase.EnumResTypeProc enumResTypeProc = new WinBase.EnumResTypeProc() { // from class: com.sun.jna.platform.win32.Kernel32Util.1
            @Override // com.sun.jna.platform.win32.WinBase.EnumResTypeProc
            public boolean invoke(WinDef.HMODULE hmodule, Pointer pointer, Pointer pointer2) {
                if (Pointer.nativeValue(pointer) <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                    arrayList.add(Pointer.nativeValue(pointer) + "");
                    return true;
                }
                arrayList.add(pointer.getWideString(0L));
                return true;
            }
        };
        WinBase.EnumResNameProc enumResNameProc = new WinBase.EnumResNameProc() { // from class: com.sun.jna.platform.win32.Kernel32Util.2
            @Override // com.sun.jna.platform.win32.WinBase.EnumResNameProc
            public boolean invoke(WinDef.HMODULE hmodule, Pointer pointer, Pointer pointer2, Pointer pointer3) {
                String wideString;
                if (Pointer.nativeValue(pointer) <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                    wideString = Pointer.nativeValue(pointer) + "";
                } else {
                    wideString = pointer.getWideString(0L);
                }
                if (Pointer.nativeValue(pointer2) < WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                    ((List) linkedHashMap.get(wideString)).add(Pointer.nativeValue(pointer2) + "");
                    return true;
                }
                ((List) linkedHashMap.get(wideString)).add(pointer2.getWideString(0L));
                return true;
            }
        };
        try {
        } catch (Win32Exception e) {
            win32Exception = e;
            if (hmoduleLoadLibraryEx != null && !Kernel32.INSTANCE.FreeLibrary(hmoduleLoadLibraryEx)) {
                Win32Exception win32Exception2 = new Win32Exception(Kernel32.INSTANCE.GetLastError());
                win32Exception2.addSuppressedReflected(win32Exception);
                throw win32Exception2;
            }
        } catch (Throwable th) {
            if (hmoduleLoadLibraryEx != null && !Kernel32.INSTANCE.FreeLibrary(hmoduleLoadLibraryEx)) {
                throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
            }
            throw th;
        }
        if (!Kernel32.INSTANCE.EnumResourceTypes(hmoduleLoadLibraryEx, enumResTypeProc, null)) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        for (String str2 : arrayList) {
            linkedHashMap.put(str2, new ArrayList());
            try {
                memory = new Pointer(Long.parseLong(str2));
            } catch (NumberFormatException unused) {
                memory = new Memory(Native.WCHAR_SIZE * (str2.length() + 1));
                memory.setWideString(0L, str2);
            }
            if (!Kernel32.INSTANCE.EnumResourceNames(hmoduleLoadLibraryEx, memory, enumResNameProc, null)) {
                throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
            }
        }
        if (hmoduleLoadLibraryEx != null && !Kernel32.INSTANCE.FreeLibrary(hmoduleLoadLibraryEx)) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        if (win32Exception == null) {
            return linkedHashMap;
        }
        throw win32Exception;
    }

    public static List<Tlhelp32.MODULEENTRY32W> getModules(int i) {
        WinNT.HANDLE handleCreateToolhelp32Snapshot = Kernel32.INSTANCE.CreateToolhelp32Snapshot(Tlhelp32.TH32CS_SNAPMODULE, new WinDef.DWORD(i));
        if (handleCreateToolhelp32Snapshot == null) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        Win32Exception e = null;
        try {
            try {
                Tlhelp32.MODULEENTRY32W moduleentry32w = new Tlhelp32.MODULEENTRY32W();
                if (!Kernel32.INSTANCE.Module32FirstW(handleCreateToolhelp32Snapshot, moduleentry32w)) {
                    throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(moduleentry32w);
                for (Tlhelp32.MODULEENTRY32W moduleentry32w2 = new Tlhelp32.MODULEENTRY32W(); Kernel32.INSTANCE.Module32NextW(handleCreateToolhelp32Snapshot, moduleentry32w2); moduleentry32w2 = new Tlhelp32.MODULEENTRY32W()) {
                    arrayList.add(moduleentry32w2);
                }
                int iGetLastError = Kernel32.INSTANCE.GetLastError();
                if (iGetLastError != 0 && iGetLastError != 18) {
                    throw new Win32Exception(iGetLastError);
                }
                try {
                    closeHandle(handleCreateToolhelp32Snapshot);
                } catch (Win32Exception e2) {
                    e = e2;
                }
                if (e == null) {
                    return arrayList;
                }
                throw e;
            } catch (Throwable th) {
                try {
                    closeHandle(handleCreateToolhelp32Snapshot);
                } catch (Win32Exception e3) {
                    if (0 == 0) {
                        e = e3;
                    } else {
                        e.addSuppressedReflected(e3);
                    }
                }
                if (e != null) {
                    throw e;
                }
                throw th;
            }
        } catch (Win32Exception e4) {
            throw e4;
        }
    }

    public static String expandEnvironmentStrings(String str) {
        Memory memory;
        if (str == null) {
            return "";
        }
        int iExpandEnvironmentStrings = Kernel32.INSTANCE.ExpandEnvironmentStrings(str, null, 0);
        if (iExpandEnvironmentStrings == 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        if (W32APITypeMapper.DEFAULT == W32APITypeMapper.UNICODE) {
            memory = new Memory(Native.WCHAR_SIZE * iExpandEnvironmentStrings);
        } else {
            memory = new Memory(iExpandEnvironmentStrings + 1);
        }
        if (Kernel32.INSTANCE.ExpandEnvironmentStrings(str, memory, iExpandEnvironmentStrings) == 0) {
            throw new Win32Exception(Kernel32.INSTANCE.GetLastError());
        }
        if (W32APITypeMapper.DEFAULT == W32APITypeMapper.UNICODE) {
            return memory.getWideString(0L);
        }
        return memory.getString(0L);
    }
}
