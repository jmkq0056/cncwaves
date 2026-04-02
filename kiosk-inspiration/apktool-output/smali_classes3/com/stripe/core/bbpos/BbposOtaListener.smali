.class public final Lcom/stripe/core/bbpos/BbposOtaListener;
.super Ljava/lang/Object;
.source "BbposOtaListener.kt"

# interfaces
.implements Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/BbposOtaListener$Companion;,
        Lcom/stripe/core/bbpos/BbposOtaListener$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposOtaListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposOtaListener.kt\ncom/stripe/core/bbpos/BbposOtaListener\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,246:1\n16#2:247\n*S KotlinDebug\n*F\n+ 1 BbposOtaListener.kt\ncom/stripe/core/bbpos/BbposOtaListener\n*L\n46#1:247\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 .2\u00020\u0001:\u0001.B\'\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000e\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u000fJ6\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0016\u0008\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\u001c\u0010\u001e\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010!\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001e\u0010\"\u001a\u00020\u00172\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020#\u0018\u00010\u001bH\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0016J\u001c\u0010\'\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010(\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010)\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010*\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J8\u0010+\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u001a\u0010\u001a\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c0\u001b\u0018\u00010,2\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J(\u0010-\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/BbposOtaListener;",
        "Lcom/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;",
        "updateListener",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
        "debugLogsShouldBeSentToSplunk",
        "Ljavax/inject/Provider;",
        "",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljavax/inject/Provider;)V",
        "updateController",
        "Lcom/stripe/core/bbpos/BbposReaderUpdateController;",
        "getUpdateController$sdk_release",
        "()Lcom/stripe/core/bbpos/BbposReaderUpdateController;",
        "setUpdateController$sdk_release",
        "(Lcom/stripe/core/bbpos/BbposReaderUpdateController;)V",
        "handleOTAResultError",
        "",
        "result",
        "Lcom/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;",
        "data",
        "Ljava/util/Hashtable;",
        "",
        "message",
        "onReturnLocalConfigUpdateResult",
        "otaResult",
        "responseMessage",
        "onReturnLocalFirmwareUpdateResult",
        "onReturnOTADebugLog",
        "",
        "onReturnOTAProgress",
        "percentage",
        "",
        "onReturnRemoteConfigUpdateResult",
        "onReturnRemoteFirmwareUpdateResult",
        "onReturnRemoteKeyInjectionResult",
        "onReturnSetTargetVersionResult",
        "onReturnTargetVersionListResult",
        "",
        "onReturnTargetVersionResult",
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
.field public static final Companion:Lcom/stripe/core/bbpos/BbposOtaListener$Companion;

.field private static final TAG:Ljava/lang/String; = "BbposOtaListener"


# instance fields
.field private final debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field public updateController:Lcom/stripe/core/bbpos/BbposReaderUpdateController;

.field private final updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/BbposOtaListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/BbposOtaListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/BbposOtaListener;->Companion:Lcom/stripe/core/bbpos/BbposOtaListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugLogsShouldBeSentToSplunk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    .line 36
    iput-object p2, p0, Lcom/stripe/core/bbpos/BbposOtaListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 37
    iput-object p3, p0, Lcom/stripe/core/bbpos/BbposOtaListener;->debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .param p2    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/core/featureflag/dagger/DebugLogsShouldBeSentToSplunk;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "updateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugLogsShouldBeSentToSplunk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    const-class v0, Lcom/stripe/core/bbpos/BbposOtaListener;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p3

    .line 44
    invoke-direct {p0, p1, p3, p2}, Lcom/stripe/core/bbpos/BbposOtaListener;-><init>(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljavax/inject/Provider;)V

    return-void
.end method

.method private final handleOTAResultError(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, -0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    .line 172
    :cond_0
    sget-object v3, Lcom/stripe/core/bbpos/BbposOtaListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->ordinal()I

    move-result v4

    aget v3, v3, v4

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v3, v2, :cond_8

    packed-switch v3, :pswitch_data_0

    return-void

    .line 222
    :pswitch_0
    iget-object v1, v0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    .line 223
    new-instance v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedInterrupted;

    .line 224
    const-string v3, "Update failed due to unexpected interruption"

    .line 223
    invoke-direct {v2, v3, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedInterrupted;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    .line 222
    invoke-interface {v1, v2}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V

    return-void

    .line 204
    :pswitch_1
    const-string v2, "Update failed"

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v6, "<get-keys>(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    .line 206
    const-string v3, ","

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " {"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    .line 208
    const-string v3, "}"

    move-object v10, v3

    check-cast v10, Ljava/lang/CharSequence;

    .line 205
    new-instance v3, Lcom/stripe/core/bbpos/BbposOtaListener$handleOTAResultError$constructedMessage$1$1;

    invoke-direct {v3, v1}, Lcom/stripe/core/bbpos/BbposOtaListener$handleOTAResultError$constructedMessage$1$1;-><init>(Ljava/util/Hashtable;)V

    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/16 v14, 0x18

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move-object/from16 v1, p3

    :cond_3
    if-eqz v1, :cond_4

    .line 212
    sget-object v3, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v6, "BbposOtaListener"

    invoke-virtual {v3, v6, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_4
    iget-object v3, v0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    .line 215
    new-instance v6, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    invoke-direct {v6, v2, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    .line 214
    invoke-interface {v3, v6}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V

    return-void

    .line 195
    :pswitch_2
    iget-object v1, v0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    .line 196
    new-instance v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;

    if-nez p3, :cond_6

    .line 197
    const-string v3, "Update failed due to lack of internet connection"

    goto :goto_3

    :cond_6
    move-object/from16 v3, p3

    .line 196
    :goto_3
    invoke-direct {v2, v3, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    .line 195
    invoke-interface {v1, v2}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V

    return-void

    .line 187
    :pswitch_3
    iget-object v1, v0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    .line 188
    new-instance v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;

    if-nez p3, :cond_7

    .line 189
    const-string v3, "Update failed due to lack of reader connection"

    goto :goto_4

    :cond_7
    move-object/from16 v3, p3

    .line 188
    :goto_4
    invoke-direct {v2, v3, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    .line 187
    invoke-interface {v1, v2}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V

    return-void

    .line 179
    :pswitch_4
    iget-object v1, v0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    .line 180
    new-instance v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedBatteryLow;

    .line 181
    const-string v3, "Update failed due to low battery on the reader"

    .line 180
    invoke-direct {v2, v3, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedBatteryLow;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    .line 179
    invoke-interface {v1, v2}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V

    return-void

    .line 233
    :cond_8
    :pswitch_5
    iget-object v1, v0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    .line 234
    new-instance v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    .line 235
    const-string v3, "Update failed for unknown reason"

    .line 234
    invoke-direct {v2, v3, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    .line 233
    invoke-interface {v1, v2}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic handleOTAResultError$default(Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 167
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/bbpos/BbposOtaListener;->handleOTAResultError(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getUpdateController$sdk_release()Lcom/stripe/core/bbpos/BbposReaderUpdateController;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateController:Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "updateController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReturnLocalConfigUpdateResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnLocalFirmwareUpdateResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnOTADebugLog(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;->toLogString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposOtaListener;->debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "onReturnOTADebugLog: "

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposOtaListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BbposOtaListener"

    invoke-virtual {v0, v1, p1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnOTAProgress(D)V
    .locals 3

    .line 162
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReturnOTAProgress("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BbposOtaListener"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    double-to-float p1, p1

    const/16 p2, 0x64

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-interface {v0, p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleUpdateProgress(F)V

    return-void
.end method

.method public onReturnRemoteConfigUpdateResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 8

    .line 138
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BbposOtaListener"

    const-string v2, "onReturnRemoteConfigUpdateResult"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Lcom/stripe/core/bbpos/BbposOtaListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    .line 142
    invoke-static/range {v2 .. v7}, Lcom/stripe/core/bbpos/BbposOtaListener;->handleOTAResultError$default(Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    move-object v2, p0

    .line 141
    iget-object p1, v2, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    invoke-interface {p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleConfigUpdateComplete()V

    return-void
.end method

.method public onReturnRemoteFirmwareUpdateResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 8

    .line 125
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BbposOtaListener"

    const-string v2, "onReturnRemoteFirmwareUpdateResult"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lcom/stripe/core/bbpos/BbposOtaListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    .line 129
    invoke-static/range {v2 .. v7}, Lcom/stripe/core/bbpos/BbposOtaListener;->handleOTAResultError$default(Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    move-object v2, p0

    .line 128
    iget-object p1, v2, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    invoke-interface {p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleFirmwareUpdateComplete()V

    return-void
.end method

.method public onReturnRemoteKeyInjectionResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 8

    .line 112
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BbposOtaListener"

    const-string v2, "onReturnRemoteKeyInjectionResult"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lcom/stripe/core/bbpos/BbposOtaListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    .line 116
    invoke-static/range {v2 .. v7}, Lcom/stripe/core/bbpos/BbposOtaListener;->handleOTAResultError$default(Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    move-object v2, p0

    .line 115
    iget-object p1, v2, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    invoke-interface {p1}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleKeyUpdateComplete()V

    return-void
.end method

.method public onReturnSetTargetVersionResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 8

    .line 97
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BbposOtaListener"

    const-string v2, "onReturnSetTargetVersionResult"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lcom/stripe/core/bbpos/BbposOtaListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    .line 101
    invoke-static/range {v2 .. v7}, Lcom/stripe/core/bbpos/BbposOtaListener;->handleOTAResultError$default(Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/BbposOtaListener;->getUpdateController$sdk_release()Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/bbpos/BbposReaderUpdateController;->onSetTargetVersion()V

    return-void
.end method

.method public onReturnTargetVersionListResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;",
            "Ljava/util/List<",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onReturnTargetVersionResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BbposOtaListener"

    const-string v2, "onReturnTargetVersionResult"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/stripe/core/bbpos/BbposOtaListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 88
    invoke-static/range {v2 .. v7}, Lcom/stripe/core/bbpos/BbposOtaListener;->handleOTAResultError$default(Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    move-object v2, p0

    .line 86
    iget-object p1, v2, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleTargetReaderVersion(Lcom/stripe/core/hardware/updates/ReaderVersion;)V

    return-void

    :cond_2
    move-object v2, p0

    move-object v4, p2

    .line 83
    iget-object p1, v2, Lcom/stripe/core/bbpos/BbposOtaListener;->updateListener:Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    sget-object p2, Lcom/stripe/core/bbpos/ReaderVersionMaker;->INSTANCE:Lcom/stripe/core/bbpos/ReaderVersionMaker;

    invoke-virtual {p2, v4}, Lcom/stripe/core/bbpos/ReaderVersionMaker;->fromBbposData$sdk_release(Ljava/util/Hashtable;)Lcom/stripe/core/hardware/updates/ReaderVersion;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;->handleTargetReaderVersion(Lcom/stripe/core/hardware/updates/ReaderVersion;)V

    return-void
.end method

.method public final setUpdateController$sdk_release(Lcom/stripe/core/bbpos/BbposReaderUpdateController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/stripe/core/bbpos/BbposOtaListener;->updateController:Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    return-void
.end method
