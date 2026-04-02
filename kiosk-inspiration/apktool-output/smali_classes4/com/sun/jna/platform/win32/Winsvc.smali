.class public interface abstract Lcom/sun/jna/platform/win32/Winsvc;
.super Ljava/lang/Object;
.source "Winsvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;,
        Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;,
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_HANDLE;,
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_DESCRIPTION;,
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_TABLE_ENTRY;,
        Lcom/sun/jna/platform/win32/Winsvc$HandlerEx;,
        Lcom/sun/jna/platform/win32/Winsvc$Handler;,
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_MAIN_FUNCTION;,
        Lcom/sun/jna/platform/win32/Winsvc$SC_STATUS_TYPE;,
        Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;,
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;,
        Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;,
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;,
        Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;,
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;,
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;
    }
.end annotation


# static fields
.field public static final SC_ACTION_NONE:I = 0x0

.field public static final SC_ACTION_REBOOT:I = 0x2

.field public static final SC_ACTION_RESTART:I = 0x1

.field public static final SC_ACTION_RUN_COMMAND:I = 0x3

.field public static final SC_ENUM_PROCESS_INFO:I = 0x0

.field public static final SC_MANAGER_ALL_ACCESS:I = 0xf003f

.field public static final SC_MANAGER_CONNECT:I = 0x1

.field public static final SC_MANAGER_CREATE_SERVICE:I = 0x2

.field public static final SC_MANAGER_ENUMERATE_SERVICE:I = 0x4

.field public static final SC_MANAGER_LOCK:I = 0x8

.field public static final SC_MANAGER_MODIFY_BOOT_CONFIG:I = 0x20

.field public static final SC_MANAGER_QUERY_LOCK_STATUS:I = 0x10

.field public static final SERVICE_ACCEPT_HARDWAREPROFILECHANGE:I = 0x20

.field public static final SERVICE_ACCEPT_NETBINDCHANGE:I = 0x10

.field public static final SERVICE_ACCEPT_PARAMCHANGE:I = 0x8

.field public static final SERVICE_ACCEPT_PAUSE_CONTINUE:I = 0x2

.field public static final SERVICE_ACCEPT_POWEREVENT:I = 0x40

.field public static final SERVICE_ACCEPT_PRESHUTDOWN:I = 0x100

.field public static final SERVICE_ACCEPT_SESSIONCHANGE:I = 0x80

.field public static final SERVICE_ACCEPT_SHUTDOWN:I = 0x4

.field public static final SERVICE_ACCEPT_STOP:I = 0x1

.field public static final SERVICE_ACCEPT_TIMECHANGE:I = 0x200

.field public static final SERVICE_ACCEPT_TRIGGEREVENT:I = 0x400

.field public static final SERVICE_ACTIVE:I = 0x1

.field public static final SERVICE_ALL_ACCESS:I = 0xf01ff

.field public static final SERVICE_CHANGE_CONFIG:I = 0x2

.field public static final SERVICE_CONFIG_DELAYED_AUTO_START_INFO:I = 0x3

.field public static final SERVICE_CONFIG_DESCRIPTION:I = 0x1

.field public static final SERVICE_CONFIG_FAILURE_ACTIONS:I = 0x2

.field public static final SERVICE_CONFIG_FAILURE_ACTIONS_FLAG:I = 0x4

.field public static final SERVICE_CONFIG_LAUNCH_PROTECTED:I = 0xc

.field public static final SERVICE_CONFIG_PREFERRED_NODE:I = 0x9

.field public static final SERVICE_CONFIG_PRESHUTDOWN_INFO:I = 0x7

.field public static final SERVICE_CONFIG_REQUIRED_PRIVILEGES_INFO:I = 0x6

.field public static final SERVICE_CONFIG_SERVICE_SID_INFO:I = 0x5

.field public static final SERVICE_CONFIG_TRIGGER_INFO:I = 0x8

.field public static final SERVICE_CONTINUE_PENDING:I = 0x5

.field public static final SERVICE_CONTROL_CONTINUE:I = 0x3

.field public static final SERVICE_CONTROL_DEVICEEVENT:I = 0xb

.field public static final SERVICE_CONTROL_HARDWAREPROFILECHANGE:I = 0xc

.field public static final SERVICE_CONTROL_INTERROGATE:I = 0x4

.field public static final SERVICE_CONTROL_NETBINDADD:I = 0x7

.field public static final SERVICE_CONTROL_NETBINDDISABLE:I = 0xa

.field public static final SERVICE_CONTROL_NETBINDENABLE:I = 0x9

.field public static final SERVICE_CONTROL_NETBINDREMOVE:I = 0x8

.field public static final SERVICE_CONTROL_PARAMCHANGE:I = 0x6

.field public static final SERVICE_CONTROL_PAUSE:I = 0x2

.field public static final SERVICE_CONTROL_POWEREVENT:I = 0xd

.field public static final SERVICE_CONTROL_PRESHUTDOWN:I = 0xf

.field public static final SERVICE_CONTROL_SESSIONCHANGE:I = 0xe

.field public static final SERVICE_CONTROL_SHUTDOWN:I = 0x5

.field public static final SERVICE_CONTROL_STOP:I = 0x1

.field public static final SERVICE_CONTROL_TIMECHANGE:I = 0x10

.field public static final SERVICE_CONTROL_TRIGGEREVENT:I = 0x20

.field public static final SERVICE_CONTROL_USERMODEREBOOT:I = 0x40

.field public static final SERVICE_ENUMERATE_DEPENDENTS:I = 0x8

.field public static final SERVICE_INACTIVE:I = 0x2

.field public static final SERVICE_INTERROGATE:I = 0x80

.field public static final SERVICE_PAUSED:I = 0x7

.field public static final SERVICE_PAUSE_CONTINUE:I = 0x40

.field public static final SERVICE_PAUSE_PENDING:I = 0x6

.field public static final SERVICE_QUERY_CONFIG:I = 0x1

.field public static final SERVICE_QUERY_STATUS:I = 0x4

.field public static final SERVICE_RUNNING:I = 0x4

.field public static final SERVICE_RUNS_IN_SYSTEM_PROCESS:I = 0x1

.field public static final SERVICE_START:I = 0x10

.field public static final SERVICE_START_PENDING:I = 0x2

.field public static final SERVICE_STATE_ALL:I = 0x3

.field public static final SERVICE_STOP:I = 0x20

.field public static final SERVICE_STOPPED:I = 0x1

.field public static final SERVICE_STOP_PENDING:I = 0x3

.field public static final SERVICE_USER_DEFINED_CONTROL:I = 0x100
