.class public interface abstract Lcom/sun/jna/platform/win32/Ddeml;
.super Ljava/lang/Object;
.source "Ddeml.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Ddeml$DdeCallback;,
        Lcom/sun/jna/platform/win32/Ddeml$DDEML_MSG_HOOK_DATA;,
        Lcom/sun/jna/platform/win32/Ddeml$MONMSGSTRUCT;,
        Lcom/sun/jna/platform/win32/Ddeml$MONLINKSTRUCT;,
        Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;,
        Lcom/sun/jna/platform/win32/Ddeml$MONERRSTRUCT;,
        Lcom/sun/jna/platform/win32/Ddeml$MONCONVSTRUCT;,
        Lcom/sun/jna/platform/win32/Ddeml$MONCBSTRUCT;,
        Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;,
        Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;,
        Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;,
        Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;,
        Lcom/sun/jna/platform/win32/Ddeml$HSZ;,
        Lcom/sun/jna/platform/win32/Ddeml$HCONV;,
        Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;
    }
.end annotation


# static fields
.field public static final APPCLASS_MASK:I = 0xf

.field public static final APPCLASS_MONITOR:I = 0x1

.field public static final APPCLASS_STANDARD:I = 0x0

.field public static final APPCMD_CLIENTONLY:I = 0x10

.field public static final APPCMD_FILTERINITS:I = 0x20

.field public static final APPCMD_MASK:I = 0xff0

.field public static final CADV_LATEACK:I = 0xffff

.field public static final CBF_FAIL_ADVISES:I = 0x4000

.field public static final CBF_FAIL_ALLSVRXACTIONS:I = 0x3f000

.field public static final CBF_FAIL_CONNECTIONS:I = 0x2000

.field public static final CBF_FAIL_EXECUTES:I = 0x8000

.field public static final CBF_FAIL_POKES:I = 0x10000

.field public static final CBF_FAIL_REQUESTS:I = 0x20000

.field public static final CBF_FAIL_SELFCONNECTIONS:I = 0x1000

.field public static final CBF_SKIP_ALLNOTIFICATIONS:I = 0x3c0000

.field public static final CBF_SKIP_CONNECT_CONFIRMS:I = 0x40000

.field public static final CBF_SKIP_DISCONNECTS:I = 0x200000

.field public static final CBF_SKIP_REGISTRATIONS:I = 0x80000

.field public static final CBF_SKIP_UNREGISTRATIONS:I = 0x100000

.field public static final CP_WINANSI:I = 0x3ec

.field public static final CP_WINNEUTRAL:I = 0x4b0

.field public static final CP_WINUNICODE:I = 0x4b0

.field public static final DDE_FACK:I = 0x8000

.field public static final DDE_FACKREQ:I = 0x8000

.field public static final DDE_FACKRESERVED:I = -0xc100

.field public static final DDE_FADVRESERVED:I = -0xc001

.field public static final DDE_FAPPSTATUS:I = 0xff

.field public static final DDE_FBUSY:I = 0x4000

.field public static final DDE_FDATRESERVED:I = -0xb001

.field public static final DDE_FDEFERUPD:I = 0x4000

.field public static final DDE_FNOTPROCESSED:I = 0x0

.field public static final DDE_FPOKRESERVED:I = -0x2001

.field public static final DDE_FRELEASE:I = 0x2000

.field public static final DDE_FREQUESTED:I = 0x1000

.field public static final DMLERR_ADVACKTIMEOUT:I = 0x4000

.field public static final DMLERR_BUSY:I = 0x4001

.field public static final DMLERR_DATAACKTIMEOUT:I = 0x4002

.field public static final DMLERR_DLL_NOT_INITIALIZED:I = 0x4003

.field public static final DMLERR_DLL_USAGE:I = 0x4004

.field public static final DMLERR_EXECACKTIMEOUT:I = 0x4005

.field public static final DMLERR_FIRST:I = 0x4000

.field public static final DMLERR_INVALIDPARAMETER:I = 0x4006

.field public static final DMLERR_LAST:I = 0x4011

.field public static final DMLERR_LOW_MEMORY:I = 0x4007

.field public static final DMLERR_MEMORY_ERROR:I = 0x4008

.field public static final DMLERR_NOTPROCESSED:I = 0x4009

.field public static final DMLERR_NO_CONV_ESTABLISHED:I = 0x400a

.field public static final DMLERR_NO_ERROR:I = 0x0

.field public static final DMLERR_POKEACKTIMEOUT:I = 0x400b

.field public static final DMLERR_POSTMSG_FAILED:I = 0x400c

.field public static final DMLERR_REENTRANCY:I = 0x400d

.field public static final DMLERR_SERVER_DIED:I = 0x400e

.field public static final DMLERR_SYS_ERROR:I = 0x400f

.field public static final DMLERR_UNADVACKTIMEOUT:I = 0x4010

.field public static final DMLERR_UNFOUND_QUEUE_ID:I = 0x4011

.field public static final DNS_FILTEROFF:I = 0x8

.field public static final DNS_FILTERON:I = 0x4

.field public static final DNS_REGISTER:I = 0x1

.field public static final DNS_UNREGISTER:I = 0x2

.field public static final EC_DISABLE:I = 0x8

.field public static final EC_ENABLEALL:I = 0x0

.field public static final EC_ENABLEONE:I = 0x80

.field public static final EC_QUERYWAITING:I = 0x2

.field public static final HDATA_APPOWNED:I = 0x1

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

.field public static final MF_CALLBACKS:I = 0x8000000

.field public static final MF_CONV:I = 0x40000000

.field public static final MF_ERRORS:I = 0x10000000

.field public static final MF_HSZ_INFO:I = 0x1000000

.field public static final MF_LINKS:I = 0x20000000

.field public static final MF_MASK:I = -0x1000000

.field public static final MF_POSTMSGS:I = 0x4000000

.field public static final MF_SENDMSGS:I = 0x2000000

.field public static final MSGF_DDEMGR:I = 0x8001

.field public static final QID_SYNC:I = -0x1

.field public static final ST_ADVISE:I = 0x2

.field public static final ST_BLOCKED:I = 0x8

.field public static final ST_BLOCKNEXT:I = 0x80

.field public static final ST_CLIENT:I = 0x10

.field public static final ST_CONNECTED:I = 0x1

.field public static final ST_INLIST:I = 0x40

.field public static final ST_ISLOCAL:I = 0x4

.field public static final ST_ISSELF:I = 0x100

.field public static final ST_TERMINATED:I = 0x20

.field public static final SZDDESYS_ITEM_FORMATS:Ljava/lang/String; = "Formats"

.field public static final SZDDESYS_ITEM_HELP:Ljava/lang/String; = "Help"

.field public static final SZDDESYS_ITEM_RTNMSG:Ljava/lang/String; = "ReturnMessage"

.field public static final SZDDESYS_ITEM_STATUS:Ljava/lang/String; = "Status"

.field public static final SZDDESYS_ITEM_SYSITEMS:Ljava/lang/String; = "SysItems"

.field public static final SZDDESYS_ITEM_TOPICS:Ljava/lang/String; = "Topics"

.field public static final SZDDESYS_TOPIC:Ljava/lang/String; = "System"

.field public static final SZDDE_ITEM_ITEMLIST:Ljava/lang/String; = "TopicItemList"

.field public static final TIMEOUT_ASYNC:I = -0x1

.field public static final XCLASS_BOOL:I = 0x1000

.field public static final XCLASS_DATA:I = 0x2000

.field public static final XCLASS_FLAGS:I = 0x4000

.field public static final XCLASS_MASK:I = 0xfc00

.field public static final XCLASS_NOTIFICATION:I = 0x8000

.field public static final XST_ADVACKRCVD:I = 0xd

.field public static final XST_ADVDATAACKRCVD:I = 0x10

.field public static final XST_ADVDATASENT:I = 0xf

.field public static final XST_ADVSENT:I = 0xb

.field public static final XST_CONNECTED:I = 0x2

.field public static final XST_DATARCVD:I = 0x6

.field public static final XST_EXECACKRCVD:I = 0xa

.field public static final XST_EXECSENT:I = 0x9

.field public static final XST_INCOMPLETE:I = 0x1

.field public static final XST_INIT1:I = 0x3

.field public static final XST_INIT2:I = 0x4

.field public static final XST_NULL:I = 0x0

.field public static final XST_POKEACKRCVD:I = 0x8

.field public static final XST_POKESENT:I = 0x7

.field public static final XST_REQSENT:I = 0x5

.field public static final XST_UNADVACKRCVD:I = 0xe

.field public static final XST_UNADVSENT:I = 0xc

.field public static final XTYPF_ACKREQ:I = 0x8

.field public static final XTYPF_NOBLOCK:I = 0x2

.field public static final XTYPF_NODATA:I = 0x4

.field public static final XTYP_ADVDATA:I = 0x4010

.field public static final XTYP_ADVREQ:I = 0x2022

.field public static final XTYP_ADVSTART:I = 0x1030

.field public static final XTYP_ADVSTOP:I = 0x8040

.field public static final XTYP_CONNECT:I = 0x1062

.field public static final XTYP_CONNECT_CONFIRM:I = 0x8072

.field public static final XTYP_DISCONNECT:I = 0x80c2

.field public static final XTYP_ERROR:I = 0x8002

.field public static final XTYP_EXECUTE:I = 0x4050

.field public static final XTYP_MASK:I = 0xf0

.field public static final XTYP_MONITOR:I = 0x80f2

.field public static final XTYP_POKE:I = 0x4090

.field public static final XTYP_REGISTER:I = 0x80a2

.field public static final XTYP_REQUEST:I = 0x20b0

.field public static final XTYP_SHIFT:I = 0x4

.field public static final XTYP_UNREGISTER:I = 0x80d2

.field public static final XTYP_WILDCONNECT:I = 0x20e2

.field public static final XTYP_XACT_COMPLETE:I = 0x8080


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const-class v0, Lcom/sun/jna/platform/win32/Ddeml;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "user32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Ddeml;

    sput-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    return-void
.end method


# virtual methods
.method public abstract DdeAbandonTransaction(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)Z
.end method

.method public abstract DdeAccessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/Pointer;
.end method

.method public abstract DdeAddData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract DdeClientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract DdeConnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/Ddeml$HCONV;
.end method

.method public abstract DdeConnectList(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;
.end method

.method public abstract DdeCreateDataHandle(ILcom/sun/jna/Pointer;IILcom/sun/jna/platform/win32/Ddeml$HSZ;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract DdeCreateStringHandle(ILjava/lang/String;I)Lcom/sun/jna/platform/win32/Ddeml$HSZ;
.end method

.method public abstract DdeDisconnect(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Z
.end method

.method public abstract DdeDisconnectList(Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;)Z
.end method

.method public abstract DdeEnableCallback(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)Z
.end method

.method public abstract DdeFreeDataHandle(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)Z
.end method

.method public abstract DdeFreeStringHandle(ILcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
.end method

.method public abstract DdeGetData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)I
.end method

.method public abstract DdeGetLastError(I)I
.end method

.method public abstract DdeImpersonateClient(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Z
.end method

.method public abstract DdeInitialize(Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/Ddeml$DdeCallback;II)I
.end method

.method public abstract DdeKeepStringHandle(ILcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
.end method

.method public abstract DdeNameService(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract DdePostAdvise(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
.end method

.method public abstract DdeQueryConvInfo(Lcom/sun/jna/platform/win32/Ddeml$HCONV;ILcom/sun/jna/platform/win32/Ddeml$CONVINFO;)I
.end method

.method public abstract DdeQueryNextServer(Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Lcom/sun/jna/platform/win32/Ddeml$HCONV;
.end method

.method public abstract DdeQueryString(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/Pointer;II)I
.end method

.method public abstract DdeReconnect(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Lcom/sun/jna/platform/win32/Ddeml$HCONV;
.end method

.method public abstract DdeSetUserHandle(Lcom/sun/jna/platform/win32/Ddeml$HCONV;ILcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Z
.end method

.method public abstract DdeUnaccessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)Z
.end method

.method public abstract DdeUninitialize(I)Z
.end method
