.class public interface abstract Lcom/sun/jna/platform/win32/Advapi32;
.super Ljava/lang/Object;
.source "Advapi32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

.field public static final LOGON_NETCREDENTIALS_ONLY:I = 0x2

.field public static final LOGON_WITH_PROFILE:I = 0x1

.field public static final MAX_KEY_LENGTH:I = 0xff

.field public static final MAX_VALUE_NAME:I = 0x3fff

.field public static final RRF_RT_ANY:I = 0xffff

.field public static final RRF_RT_DWORD:I = 0x18

.field public static final RRF_RT_QWORD:I = 0x48

.field public static final RRF_RT_REG_BINARY:I = 0x8

.field public static final RRF_RT_REG_DWORD:I = 0x10

.field public static final RRF_RT_REG_EXPAND_SZ:I = 0x4

.field public static final RRF_RT_REG_MULTI_SZ:I = 0x20

.field public static final RRF_RT_REG_NONE:I = 0x1

.field public static final RRF_RT_REG_QWORD:I = 0x40

.field public static final RRF_RT_REG_SZ:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    const-class v0, Lcom/sun/jna/platform/win32/Advapi32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Advapi32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Advapi32;

    sput-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    return-void
.end method


# virtual methods
.method public abstract AccessCheck(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;Lcom/sun/jna/platform/win32/WinNT$PRIVILEGE_SET;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)Z
.end method

.method public abstract AddAccessAllowedAce(Lcom/sun/jna/platform/win32/WinNT$ACL;IILcom/sun/jna/platform/win32/WinNT$PSID;)Z
.end method

.method public abstract AddAccessAllowedAceEx(Lcom/sun/jna/platform/win32/WinNT$ACL;IIILcom/sun/jna/platform/win32/WinNT$PSID;)Z
.end method

.method public abstract AddAce(Lcom/sun/jna/platform/win32/WinNT$ACL;IILcom/sun/jna/Pointer;I)Z
.end method

.method public abstract AdjustTokenPrivileges(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ZLcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;ILcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract BackupEventLog(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Ljava/lang/String;)Z
.end method

.method public abstract ChangeServiceConfig2(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;)Z
.end method

.method public abstract ClearEventLog(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Ljava/lang/String;)Z
.end method

.method public abstract CloseEncryptedFileRaw(Lcom/sun/jna/Pointer;)V
.end method

.method public abstract CloseEventLog(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract CloseServiceHandle(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;)Z
.end method

.method public abstract ControlService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;)Z
.end method

.method public abstract ConvertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/ptr/PointerByReference;)Z
.end method

.method public abstract ConvertStringSidToSid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;)Z
.end method

.method public abstract CreateProcessAsUser(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ZILjava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinBase$STARTUPINFO;Lcom/sun/jna/platform/win32/WinBase$PROCESS_INFORMATION;)Z
.end method

.method public abstract CreateProcessWithLogonW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/sun/jna/Pointer;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinBase$STARTUPINFO;Lcom/sun/jna/platform/win32/WinBase$PROCESS_INFORMATION;)Z
.end method

.method public abstract CreateService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lcom/sun/jna/ptr/IntByReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;
.end method

.method public abstract CreateWellKnownSid(ILcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract DecryptFile(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Z
.end method

.method public abstract DeleteService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;)Z
.end method

.method public abstract DeregisterEventSource(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract DuplicateToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z
.end method

.method public abstract DuplicateTokenEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;IILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z
.end method

.method public abstract EncryptFile(Ljava/lang/String;)Z
.end method

.method public abstract EncryptionDisable(Ljava/lang/String;Z)Z
.end method

.method public abstract EnumDependentServices(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EnumServicesStatusEx(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;IIILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Ljava/lang/String;)Z
.end method

.method public abstract EqualSid(Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/platform/win32/WinNT$PSID;)Z
.end method

.method public abstract FileEncryptionStatus(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Z
.end method

.method public abstract GetAce(Lcom/sun/jna/platform/win32/WinNT$ACL;ILcom/sun/jna/ptr/PointerByReference;)Z
.end method

.method public abstract GetFileSecurity(Ljava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetLengthSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)I
.end method

.method public abstract GetNamedSecurityInfo(Ljava/lang/String;IILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract GetNumberOfEventLogRecords(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetOldestEventLogRecord(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetSecurityDescriptorControl(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;Lcom/sun/jna/ptr/ShortByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetSecurityDescriptorDacl(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;Lcom/sun/jna/platform/win32/WinNT$PACLByReference;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)Z
.end method

.method public abstract GetSecurityDescriptorGroup(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)Z
.end method

.method public abstract GetSecurityDescriptorLength(Lcom/sun/jna/Pointer;)I
.end method

.method public abstract GetSecurityDescriptorOwner(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)Z
.end method

.method public abstract GetSecurityInfo(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract GetTokenInformation(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Structure;ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetUserNameW([CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract ImpersonateLoggedOnUser(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract ImpersonateSelf(I)Z
.end method

.method public abstract InitializeAcl(Lcom/sun/jna/platform/win32/WinNT$ACL;II)Z
.end method

.method public abstract InitializeSecurityDescriptor(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;I)Z
.end method

.method public abstract IsValidAcl(Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract IsValidSecurityDescriptor(Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract IsValidSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Z
.end method

.method public abstract IsWellKnownSid(Lcom/sun/jna/platform/win32/WinNT$PSID;I)Z
.end method

.method public abstract LogonUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z
.end method

.method public abstract LookupAccountName(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Z
.end method

.method public abstract LookupAccountSid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;[CLcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Z
.end method

.method public abstract LookupPrivilegeName(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$LUID;[CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract LookupPrivilegeValue(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$LUID;)Z
.end method

.method public abstract MakeAbsoluteSD(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinNT$ACL;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinNT$ACL;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract MakeSelfRelativeSD(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract MapGenericMask(Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;)V
.end method

.method public abstract OpenBackupEventLog(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract OpenEncryptedFileRaw(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract OpenEventLog(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract OpenProcessToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z
.end method

.method public abstract OpenSCManager(Ljava/lang/String;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;
.end method

.method public abstract OpenService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;
.end method

.method public abstract OpenThreadToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IZLcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z
.end method

.method public abstract QueryServiceConfig2(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract QueryServiceStatus(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;)Z
.end method

.method public abstract QueryServiceStatusEx(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract ReadEncryptedFileRaw(Lcom/sun/jna/platform/win32/WinBase$FE_EXPORT_FUNC;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I
.end method

.method public abstract ReadEventLog(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I
.end method

.method public abstract RegConnectRegistry(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinReg$HKEY;Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I
.end method

.method public abstract RegCreateKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILjava/lang/String;IILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegDeleteKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)I
.end method

.method public abstract RegDeleteValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)I
.end method

.method public abstract RegEnumKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;I[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)I
.end method

.method public abstract RegEnumValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;I[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegEnumValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;I[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;[BLcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;[BLcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I
.end method

.method public abstract RegQueryInfoKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)I
.end method

.method public abstract RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/LongByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;[BLcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/Pointer;I)I
.end method

.method public abstract RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;II[BI)I
.end method

.method public abstract RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;II[CI)I
.end method

.method public abstract RegisterEventSource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract RegisterServiceCtrlHandler(Ljava/lang/String;Lcom/sun/jna/Library$Handler;)Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_HANDLE;
.end method

.method public abstract RegisterServiceCtrlHandlerEx(Ljava/lang/String;Lcom/sun/jna/platform/win32/Winsvc$HandlerEx;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_HANDLE;
.end method

.method public abstract ReportEvent(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IIILcom/sun/jna/platform/win32/WinNT$PSID;II[Ljava/lang/String;Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract RevertToSelf()Z
.end method

.method public abstract SetFileSecurity(Ljava/lang/String;ILcom/sun/jna/Pointer;)Z
.end method

.method public abstract SetNamedSecurityInfo(Ljava/lang/String;IILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I
.end method

.method public abstract SetSecurityDescriptorControl(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;SS)Z
.end method

.method public abstract SetSecurityDescriptorDacl(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;ZLcom/sun/jna/platform/win32/WinNT$ACL;Z)Z
.end method

.method public abstract SetSecurityDescriptorGroup(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;Lcom/sun/jna/platform/win32/WinNT$PSID;Z)Z
.end method

.method public abstract SetSecurityDescriptorOwner(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;Lcom/sun/jna/platform/win32/WinNT$PSID;Z)Z
.end method

.method public abstract SetSecurityInfo(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I
.end method

.method public abstract SetServiceStatus(Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_HANDLE;Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;)Z
.end method

.method public abstract SetThreadToken(Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract StartService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;I[Ljava/lang/String;)Z
.end method

.method public abstract StartServiceCtrlDispatcher([Lcom/sun/jna/platform/win32/Winsvc$SERVICE_TABLE_ENTRY;)Z
.end method

.method public abstract WriteEncryptedFileRaw(Lcom/sun/jna/platform/win32/WinBase$FE_IMPORT_FUNC;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I
.end method
