.class public final Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;
.super Ljava/lang/Object;
.source "ReaderInfoHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;",
        "",
        "()V",
        "getRawReaderInfoFields",
        "",
        "",
        "hardware_release"
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
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;->INSTANCE:Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRawReaderInfoFields()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x14

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "isSupportedTrack1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 12
    const-string v2, "isSupportedTrack2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 13
    const-string v2, "isSupportedTrack3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 14
    const-string v2, "hardwareID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 15
    const-string v2, "isSupportedSoftwarePinPad"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 16
    const-string v2, "trackKsn"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 17
    const-string v2, "emvKsn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 18
    const-string v2, "macKeyProfileID1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 19
    const-string v2, "cmacKeyProfileID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 20
    const-string v2, "uid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 21
    const-string v2, "bID"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 22
    const-string v2, "productID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 23
    const-string v2, "isSupportedPowerSaving"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 24
    const-string v2, "vendorID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 25
    const-string v2, "formatID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 26
    const-string v2, "macKsn"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 27
    const-string v2, "isSupportedNfc"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 28
    const-string v2, "sdkVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 29
    const-string v2, "firmwareDebugInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 30
    const-string v2, "deviceTamperStatus"

    aput-object v2, v0, v1

    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
