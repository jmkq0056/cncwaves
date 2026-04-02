.class public final enum Lcom/stripe/hardware/status/DisconnectCause;
.super Ljava/lang/Enum;
.source "DisconnectCause.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "COMM_LINK_UNINITIALIZED",
        "CONNECTED_TO_ANOTHER_DEVICE",
        "FAIL_TO_START_BLUETOOTH",
        "FAIL_TO_START_USB",
        "USB_DEVICE_NOT_FOUND",
        "USB_DEVICE_PERMISSION_DENIED",
        "USB_NOT_SUPPORTED",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/status/DisconnectCause;

.field public static final enum COMM_LINK_UNINITIALIZED:Lcom/stripe/hardware/status/DisconnectCause;

.field public static final enum CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/hardware/status/DisconnectCause;

.field public static final enum FAIL_TO_START_BLUETOOTH:Lcom/stripe/hardware/status/DisconnectCause;

.field public static final enum FAIL_TO_START_USB:Lcom/stripe/hardware/status/DisconnectCause;

.field public static final enum UNKNOWN:Lcom/stripe/hardware/status/DisconnectCause;

.field public static final enum USB_DEVICE_NOT_FOUND:Lcom/stripe/hardware/status/DisconnectCause;

.field public static final enum USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/hardware/status/DisconnectCause;

.field public static final enum USB_NOT_SUPPORTED:Lcom/stripe/hardware/status/DisconnectCause;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/status/DisconnectCause;
    .locals 8

    sget-object v0, Lcom/stripe/hardware/status/DisconnectCause;->UNKNOWN:Lcom/stripe/hardware/status/DisconnectCause;

    sget-object v1, Lcom/stripe/hardware/status/DisconnectCause;->COMM_LINK_UNINITIALIZED:Lcom/stripe/hardware/status/DisconnectCause;

    sget-object v2, Lcom/stripe/hardware/status/DisconnectCause;->CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/hardware/status/DisconnectCause;

    sget-object v3, Lcom/stripe/hardware/status/DisconnectCause;->FAIL_TO_START_BLUETOOTH:Lcom/stripe/hardware/status/DisconnectCause;

    sget-object v4, Lcom/stripe/hardware/status/DisconnectCause;->FAIL_TO_START_USB:Lcom/stripe/hardware/status/DisconnectCause;

    sget-object v5, Lcom/stripe/hardware/status/DisconnectCause;->USB_DEVICE_NOT_FOUND:Lcom/stripe/hardware/status/DisconnectCause;

    sget-object v6, Lcom/stripe/hardware/status/DisconnectCause;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/hardware/status/DisconnectCause;

    sget-object v7, Lcom/stripe/hardware/status/DisconnectCause;->USB_NOT_SUPPORTED:Lcom/stripe/hardware/status/DisconnectCause;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/hardware/status/DisconnectCause;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/stripe/hardware/status/DisconnectCause;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->UNKNOWN:Lcom/stripe/hardware/status/DisconnectCause;

    .line 8
    new-instance v0, Lcom/stripe/hardware/status/DisconnectCause;

    const-string v1, "COMM_LINK_UNINITIALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->COMM_LINK_UNINITIALIZED:Lcom/stripe/hardware/status/DisconnectCause;

    .line 11
    new-instance v0, Lcom/stripe/hardware/status/DisconnectCause;

    const-string v1, "CONNECTED_TO_ANOTHER_DEVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/hardware/status/DisconnectCause;

    .line 14
    new-instance v0, Lcom/stripe/hardware/status/DisconnectCause;

    const-string v1, "FAIL_TO_START_BLUETOOTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->FAIL_TO_START_BLUETOOTH:Lcom/stripe/hardware/status/DisconnectCause;

    .line 17
    new-instance v0, Lcom/stripe/hardware/status/DisconnectCause;

    const-string v1, "FAIL_TO_START_USB"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->FAIL_TO_START_USB:Lcom/stripe/hardware/status/DisconnectCause;

    .line 20
    new-instance v0, Lcom/stripe/hardware/status/DisconnectCause;

    const-string v1, "USB_DEVICE_NOT_FOUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->USB_DEVICE_NOT_FOUND:Lcom/stripe/hardware/status/DisconnectCause;

    .line 23
    new-instance v0, Lcom/stripe/hardware/status/DisconnectCause;

    const-string v1, "USB_DEVICE_PERMISSION_DENIED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/hardware/status/DisconnectCause;

    .line 26
    new-instance v0, Lcom/stripe/hardware/status/DisconnectCause;

    const-string v1, "USB_NOT_SUPPORTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->USB_NOT_SUPPORTED:Lcom/stripe/hardware/status/DisconnectCause;

    invoke-static {}, Lcom/stripe/hardware/status/DisconnectCause;->$values()[Lcom/stripe/hardware/status/DisconnectCause;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->$VALUES:[Lcom/stripe/hardware/status/DisconnectCause;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/DisconnectCause;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/status/DisconnectCause;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/status/DisconnectCause;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/status/DisconnectCause;
    .locals 1

    const-class v0, Lcom/stripe/hardware/status/DisconnectCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/status/DisconnectCause;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/status/DisconnectCause;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/status/DisconnectCause;->$VALUES:[Lcom/stripe/hardware/status/DisconnectCause;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/status/DisconnectCause;

    return-object v0
.end method
