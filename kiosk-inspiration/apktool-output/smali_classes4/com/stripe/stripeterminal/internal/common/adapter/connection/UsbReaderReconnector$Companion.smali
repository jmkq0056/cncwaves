.class public final Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;
.super Ljava/lang/Object;
.source "UsbReaderReconnector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0008\u001a\u00020\tX\u0080T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u00020\u0004X\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u000b\u0010\u0006R\u000e\u0010\u000c\u001a\u00020\rX\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;",
        "",
        "()V",
        "DEFAULT_ATTEMPT_DELAY",
        "Lkotlin/time/Duration;",
        "getDEFAULT_ATTEMPT_DELAY-UwyO8pc$adapter_release",
        "()J",
        "J",
        "DEFAULT_RECONNECTION_MAX_ATTEMPTS",
        "",
        "DEFAULT_RECONNECTION_TIMEOUT",
        "getDEFAULT_RECONNECTION_TIMEOUT-UwyO8pc$adapter_release",
        "OUTCOME_TAG_KEY",
        "",
        "adapter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_ATTEMPT_DELAY-UwyO8pc$adapter_release()J
    .locals 2

    .line 204
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getDEFAULT_ATTEMPT_DELAY$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDEFAULT_RECONNECTION_TIMEOUT-UwyO8pc$adapter_release()J
    .locals 2

    .line 205
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getDEFAULT_RECONNECTION_TIMEOUT$cp()J

    move-result-wide v0

    return-wide v0
.end method
