.class public final Lcom/stripe/cots/common/NfcAntennaLogger;
.super Ljava/lang/Object;
.source "NfcAntennaLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNfcAntennaLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NfcAntennaLogger.kt\ncom/stripe/cots/common/NfcAntennaLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1864#2,3:54\n*S KotlinDebug\n*F\n+ 1 NfcAntennaLogger.kt\ncom/stripe/cots/common/NfcAntennaLogger\n*L\n28#1:54,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u000c\u001a\u00020\rJ\u0015\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0001\u00a2\u0006\u0002\u0008\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/cots/common/NfcAntennaLogger;",
        "",
        "context",
        "Landroid/content/Context;",
        "sdkInt",
        "Lcom/stripe/core/device/SdkInt;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Landroid/content/Context;Lcom/stripe/core/device/SdkInt;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "logDiscoveredAntennas",
        "",
        "nfcAdapter",
        "Landroid/nfc/NfcAdapter;",
        "logDiscoveredAntennas$common_release",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkInt:Lcom/stripe/core/device/SdkInt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/stripe/core/device/SdkInt;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/stripe/core/device/SdkInt;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/cots/common/NfcAntennaLogger;->context:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/stripe/cots/common/NfcAntennaLogger;->sdkInt:Lcom/stripe/core/device/SdkInt;

    .line 14
    iput-object p3, p0, Lcom/stripe/cots/common/NfcAntennaLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public final logDiscoveredAntennas()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/stripe/cots/common/NfcAntennaLogger;->sdkInt:Lcom/stripe/core/device/SdkInt;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/stripe/core/device/SdkInt;->isAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/stripe/cots/common/NfcAntennaLogger;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, v0}, Lcom/stripe/cots/common/NfcAntennaLogger;->logDiscoveredAntennas$common_release(Landroid/nfc/NfcAdapter;)V

    :cond_0
    return-void
.end method

.method public final logDiscoveredAntennas$common_release(Landroid/nfc/NfcAdapter;)V
    .locals 12

    const-string v0, "nfcAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getNfcAntennaInfo()Landroid/nfc/NfcAntennaInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Landroid/nfc/NfcAntennaInfo;->getAvailableNfcAntennas()Ljava/util/List;

    move-result-object v1

    const-string v2, "getAvailableNfcAntennas(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 55
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Landroid/nfc/AvailableNfcAntenna;

    .line 31
    invoke-virtual {v4}, Landroid/nfc/AvailableNfcAntenna;->getLocationX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/nfc/NfcAntennaInfo;->getDeviceWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x1

    int-to-float v8, v7

    .line 32
    invoke-virtual {v4}, Landroid/nfc/AvailableNfcAntenna;->getLocationY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/nfc/NfcAntennaInfo;->getDeviceHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 34
    iget-object v9, p0, Lcom/stripe/cots/common/NfcAntennaLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v10, 0x7

    .line 36
    new-array v10, v10, [Lkotlin/Pair;

    const-string v11, "index"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v10, v0

    .line 37
    invoke-virtual {v4}, Landroid/nfc/AvailableNfcAntenna;->getLocationX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v11, "x"

    invoke-static {v11, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v10, v7

    .line 38
    invoke-virtual {v4}, Landroid/nfc/AvailableNfcAntenna;->getLocationY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "y"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v10, v4

    .line 39
    invoke-virtual {p1}, Landroid/nfc/NfcAntennaInfo;->getDeviceWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "deviceWidth"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v10, v4

    .line 40
    invoke-virtual {p1}, Landroid/nfc/NfcAntennaInfo;->getDeviceHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "deviceHeight"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v10, v4

    .line 41
    const-string v3, "xRatio"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v10, v4

    .line 42
    const-string v3, "yRatio"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v10, v4

    .line 34
    const-string v3, "Discovered NFC Antenna"

    invoke-interface {v9, v3, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    move v3, v5

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_3

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 48
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 49
    iget-object p1, p0, Lcom/stripe/cots/common/NfcAntennaLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v1, "No NFC antennas discovered"

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_4
    return-void
.end method
