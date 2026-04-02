.class public interface abstract Lcom/sun/jna/platform/win32/DBT;
.super Ljava/lang/Object;
.source "DBT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HANDLE;,
        Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;,
        Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_NET;,
        Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;,
        Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_VOLUME;,
        Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVNODE;,
        Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_OEM;,
        Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HDR;
    }
.end annotation


# static fields
.field public static final DBTF_MEDIA:I = 0x1

.field public static final DBTF_NET:I = 0x2

.field public static final DBT_CONFIGMGPRIVATE:I = 0x7fff

.field public static final DBT_CUSTOMEVENT:I = 0x8006

.field public static final DBT_DEVICEARRIVAL:I = 0x8000

.field public static final DBT_DEVICEQUERYREMOVE:I = 0x8001

.field public static final DBT_DEVICEQUERYREMOVEFAILED:I = 0x8002

.field public static final DBT_DEVICEREMOVECOMPLETE:I = 0x8004

.field public static final DBT_DEVICEREMOVEPENDING:I = 0x8003

.field public static final DBT_DEVICETYPESPECIFIC:I = 0x8005

.field public static final DBT_DEVNODES_CHANGED:I = 0x7

.field public static final DBT_DEVTYP_DEVICEINTERFACE:I = 0x5

.field public static final DBT_DEVTYP_DEVNODE:I = 0x1

.field public static final DBT_DEVTYP_HANDLE:I = 0x6

.field public static final DBT_DEVTYP_NET:I = 0x4

.field public static final DBT_DEVTYP_OEM:I = 0x0

.field public static final DBT_DEVTYP_PORT:I = 0x3

.field public static final DBT_DEVTYP_VOLUME:I = 0x2

.field public static final DBT_LOW_DISK_SPACE:I = 0x48

.field public static final DBT_NO_DISK_SPACE:I = 0x47

.field public static final GUID_DEVINTERFACE_HID:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public static final GUID_DEVINTERFACE_KEYBOARD:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public static final GUID_DEVINTERFACE_MOUSE:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public static final GUID_DEVINTERFACE_USB_DEVICE:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public static final GUID_DEVINTERFACE_VOLUME:Lcom/sun/jna/platform/win32/Guid$GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    const-string v1, "{A5DCBF10-6530-11D2-901F-00C04FB951ED}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/DBT;->GUID_DEVINTERFACE_USB_DEVICE:Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 82
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    const-string v1, "{4D1E55B2-F16F-11CF-88CB-001111000030}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/DBT;->GUID_DEVINTERFACE_HID:Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 85
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    const-string v1, "{53F5630D-B6BF-11D0-94F2-00A0C91EFB8B}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/DBT;->GUID_DEVINTERFACE_VOLUME:Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 88
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    const-string v1, "{884b96c3-56ef-11d1-bc8c-00a0c91405dd}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/DBT;->GUID_DEVINTERFACE_KEYBOARD:Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 91
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    const-string v1, "{378DE44C-56EF-11D1-BC8C-00A0C91405DD}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/DBT;->GUID_DEVINTERFACE_MOUSE:Lcom/sun/jna/platform/win32/Guid$GUID;

    return-void
.end method
