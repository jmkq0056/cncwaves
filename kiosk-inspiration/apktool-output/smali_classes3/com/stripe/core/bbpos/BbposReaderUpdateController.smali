.class public final Lcom/stripe/core/bbpos/BbposReaderUpdateController;
.super Ljava/lang/Object;
.source "BbposReaderUpdateController.kt"

# interfaces
.implements Lcom/stripe/core/hardware/updates/ReaderUpdateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/BbposReaderUpdateController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0001 B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J8\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002J\u0014\u0010\u0015\u001a\u00020\u000b2\n\u0010\u0016\u001a\u00060\u0017j\u0002`\u0018H\u0002J\"\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0096@\u00a2\u0006\u0002\u0010\u001bJ\"\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0096@\u00a2\u0006\u0002\u0010\u001bJ\u0018\u0010\u001d\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\u0096@\u00a2\u0006\u0002\u0010\u001eJ\u0006\u0010\u001f\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/BbposReaderUpdateController;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
        "otaController",
        "Lcom/stripe/core/bbpos/BbposDeviceOtaController;",
        "listener",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
        "otaListener",
        "Lcom/stripe/core/bbpos/BbposOtaListener;",
        "(Lcom/stripe/core/bbpos/BbposDeviceOtaController;Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/core/bbpos/BbposOtaListener;)V",
        "targetVersionDeferred",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "cancel",
        "checkForUpdates",
        "createSetTargetVersionData",
        "Ljava/util/Hashtable;",
        "",
        "",
        "keyProfile",
        "configVersion",
        "firmwareVersion",
        "handleException",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "installConfig",
        "updateHex",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "installFirmware",
        "installKeys",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSetTargetVersion",
        "Companion",
        "sdk_release"
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
.field public static final Companion:Lcom/stripe/core/bbpos/BbposReaderUpdateController$Companion;

.field private static final ENC_HEX:Ljava/lang/String; = "encHex"

.field private static final TAG:Ljava/lang/String; = "BbposUpdateController"

.field private static final TIMEOUT_DELAY:J

.field private static final UPDATE_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final listener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

.field private final otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;

.field private targetVersionDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/BbposReaderUpdateController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->Companion:Lcom/stripe/core/bbpos/BbposReaderUpdateController$Companion;

    .line 36
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    sput-wide v2, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->TIMEOUT_DELAY:J

    const/4 v0, 0x5

    .line 40
    new-array v0, v0, [Lkotlin/Pair;

    const-string v2, "forceUpdate"

    const-string v3, "true"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 41
    const-string v2, "vendorID"

    const-string v3, "bbpos1"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 42
    const-string v1, "vendorSecret"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    const-string v1, "appID"

    const-string v2, "bbpos2"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 44
    const-string v1, "appSecret"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 39
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->UPDATE_PARAMS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/bbpos/BbposDeviceOtaController;Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/core/bbpos/BbposOtaListener;)V
    .locals 1

    const-string v0, "otaController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otaListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    .line 20
    iput-object p2, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->listener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    .line 26
    invoke-virtual {p3, p0}, Lcom/stripe/core/bbpos/BbposOtaListener;->setUpdateController$sdk_release(Lcom/stripe/core/bbpos/BbposReaderUpdateController;)V

    return-void
.end method

.method public static final synthetic access$getTargetVersionDeferred$p(Lcom/stripe/core/bbpos/BbposReaderUpdateController;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->targetVersionDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method private final createSetTargetVersionData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->UPDATE_PARAMS:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 153
    const-string v1, "applyToAll"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "listType"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    .line 157
    new-array v5, v4, [Lkotlin/Pair;

    const-string v6, "keyProfileName"

    invoke-static {v6, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v5, v3

    .line 158
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->KEY_PROFILE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v5, v2

    .line 156
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 155
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x3

    .line 165
    new-array p1, p1, [Lkotlin/Pair;

    const-string v5, "deviceSettingVersion"

    invoke-static {v5, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, p1, v3

    .line 166
    const-string v5, "terminalSettingVersion"

    invoke-static {v5, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v2

    .line 167
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->CONFIG:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v4

    .line 164
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 163
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 174
    new-array p1, v4, [Lkotlin/Pair;

    const-string p2, "firmwareVersion"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v3

    .line 175
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->FIRMWARE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v2

    .line 173
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 172
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 151
    :cond_2
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method static synthetic createSetTargetVersionData$default(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Hashtable;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 146
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->createSetTargetVersionData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method private final handleException(Ljava/lang/Exception;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->targetVersionDeferred:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 186
    :cond_0
    instance-of v0, p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;

    const-string v1, "Update failed due to configuration error"

    if-nez v0, :cond_6

    .line 191
    instance-of v0, p1, Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;

    if-nez v0, :cond_5

    .line 196
    instance-of v0, p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;

    if-nez v0, :cond_4

    .line 201
    instance-of v0, p1, Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;

    if-nez v0, :cond_3

    .line 206
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_2

    .line 211
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    .line 213
    const-string v1, "Attempt to install invalid configuration"

    .line 214
    check-cast p1, Ljava/lang/Throwable;

    .line 212
    invoke-direct {v0, v1, p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    .line 218
    const-string v1, "Update failed for unknown reason"

    .line 219
    check-cast p1, Ljava/lang/Throwable;

    .line 217
    invoke-direct {v0, v1, p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    goto :goto_0

    .line 207
    :cond_2
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedReaderError;

    .line 208
    const-string v1, "Reader timed out during update"

    .line 209
    check-cast p1, Ljava/lang/Throwable;

    .line 207
    invoke-direct {v0, v1, p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedReaderError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    goto :goto_0

    .line 202
    :cond_3
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;

    .line 203
    const-string v1, "Update failed due to lack of internet connection"

    .line 204
    check-cast p1, Ljava/lang/Throwable;

    .line 202
    invoke-direct {v0, v1, p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    goto :goto_0

    .line 197
    :cond_4
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;

    .line 198
    const-string v1, "Update failed since there is no connected reader"

    .line 199
    check-cast p1, Ljava/lang/Throwable;

    .line 197
    invoke-direct {v0, v1, p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    goto :goto_0

    .line 192
    :cond_5
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    .line 194
    check-cast p1, Ljava/lang/Throwable;

    .line 192
    invoke-direct {v0, v1, p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    goto :goto_0

    .line 187
    :cond_6
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    .line 189
    check-cast p1, Ljava/lang/Throwable;

    .line 187
    invoke-direct {v0, v1, p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    .line 223
    :goto_0
    iget-object p1, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->listener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    invoke-interface {p1, v0}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V

    .line 227
    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 49
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BbposUpdateController"

    const-string v2, "cancelUpdates"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 53
    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method public checkForUpdates()V
    .locals 3

    .line 58
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BbposUpdateController"

    const-string v2, "checkForReaderUpdates"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    new-instance v1, Ljava/util/Hashtable;

    sget-object v2, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->UPDATE_PARAMS:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->getTargetVersionWithData(Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 62
    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method public installConfig(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;

    iget v1, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;-><init>(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 66
    iget v2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    move-object v4, p0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    sget-object p3, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v2, "BbposUpdateController"

    const-string v4, "installReaderConfig"

    invoke-virtual {p3, v2, v4}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    .line 71
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include either configVersion or updateHex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object p2, p0

    move-object v4, p2

    goto/16 :goto_5

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    const/4 p3, 0x0

    .line 75
    :try_start_2
    invoke-static {p3, v3, p3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->targetVersionDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 76
    iget-object v2, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v6, p1

    :try_start_3
    invoke-static/range {v4 .. v9}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->createSetTargetVersionData$default(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->setTargetVersionWithData(Ljava/util/Hashtable;)V

    .line 79
    sget-wide v5, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->TIMEOUT_DELAY:J

    new-instance p1, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$2$1;

    invoke-direct {p1, p0, p3}, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$2$1;-><init>(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object v4, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installConfig$1;->label:I

    invoke-static {v5, v6, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, v4

    :goto_2
    :try_start_4
    check-cast p3, Lkotlin/Unit;

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p2, v0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, p0

    :goto_3
    move-object p1, v0

    move-object p2, v4

    goto :goto_5

    :cond_6
    move-object v4, p0

    move-object p1, v4

    .line 84
    :goto_4
    new-instance p3, Ljava/util/Hashtable;

    sget-object v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->UPDATE_PARAMS:Ljava/util/Map;

    invoke-direct {p3, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_7

    .line 86
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    const-string v1, "encHex"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_7
    iget-object p2, p1, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    invoke-virtual {p2, p3}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->startRemoteConfigUpdate(Ljava/util/Hashtable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 90
    :goto_5
    invoke-direct {p2, p1}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->handleException(Ljava/lang/Exception;)V

    .line 92
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public installFirmware(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;

    iget v1, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;-><init>(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 94
    iget v2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    move-object v4, p0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    sget-object p3, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v2, "BbposUpdateController"

    const-string v4, "installReaderFirmware"

    invoke-virtual {p3, v2, v4}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    .line 99
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include either firmwareVersion or updateHex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object p2, p0

    move-object v4, p2

    goto/16 :goto_5

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    const/4 p3, 0x0

    .line 103
    :try_start_2
    invoke-static {p3, v3, p3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->targetVersionDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 104
    iget-object v2, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v7, p1

    :try_start_3
    invoke-static/range {v4 .. v9}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->createSetTargetVersionData$default(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->setTargetVersionWithData(Ljava/util/Hashtable;)V

    .line 107
    sget-wide v5, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->TIMEOUT_DELAY:J

    new-instance p1, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$2$1;

    invoke-direct {p1, p0, p3}, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$2$1;-><init>(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object v4, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installFirmware$1;->label:I

    invoke-static {v5, v6, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, v4

    :goto_2
    :try_start_4
    check-cast p3, Lkotlin/Unit;

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p2, v0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, p0

    :goto_3
    move-object p1, v0

    move-object p2, v4

    goto :goto_5

    :cond_6
    move-object v4, p0

    move-object p1, v4

    .line 112
    :goto_4
    new-instance p3, Ljava/util/Hashtable;

    sget-object v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->UPDATE_PARAMS:Ljava/util/Map;

    invoke-direct {p3, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_7

    .line 114
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    const-string v1, "encHex"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_7
    iget-object p2, p1, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    invoke-virtual {p2, p3}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->startRemoteFirmwareUpdate(Ljava/util/Hashtable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 118
    :goto_5
    invoke-direct {p2, p1}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->handleException(Ljava/lang/Exception;)V

    .line 120
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public installKeys(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;

    iget v1, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;-><init>(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 122
    iget v2, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p2, v0

    move-object v4, p0

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    sget-object p2, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v2, "BbposUpdateController"

    const-string v4, "installReaderKeys"

    invoke-virtual {p2, v2, v4}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 127
    :try_start_1
    invoke-static {p2, v3, p2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->targetVersionDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 128
    iget-object v2, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    :try_start_2
    invoke-static/range {v4 .. v9}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->createSetTargetVersionData$default(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->setTargetVersionWithData(Ljava/util/Hashtable;)V

    .line 131
    sget-wide v5, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->TIMEOUT_DELAY:J

    new-instance p1, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$2;

    invoke-direct {p1, p0, p2}, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$2;-><init>(Lcom/stripe/core/bbpos/BbposReaderUpdateController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object v4, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/bbpos/BbposReaderUpdateController$installKeys$1;->label:I

    invoke-static {v5, v6, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p1, v1, :cond_4

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, p0

    :goto_1
    move-object p2, v0

    move-object p1, v4

    goto :goto_3

    :cond_3
    move-object v4, p0

    :cond_4
    move-object p1, v4

    .line 136
    :goto_2
    :try_start_3
    iget-object p2, p1, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->otaController:Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    new-instance v0, Ljava/util/Hashtable;

    sget-object v1, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->UPDATE_PARAMS:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->startRemoteKeyInjection(Ljava/util/Hashtable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object p2, v0

    .line 138
    :goto_3
    invoke-direct {p1, p2}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->handleException(Ljava/lang/Exception;)V

    .line 140
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final onSetTargetVersion()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->targetVersionDeferred:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
