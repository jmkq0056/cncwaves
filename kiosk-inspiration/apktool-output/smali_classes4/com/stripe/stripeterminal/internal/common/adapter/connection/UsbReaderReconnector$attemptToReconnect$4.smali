.class final Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;
.super Ljava/lang/Object;
.source "UsbReaderReconnector.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->attemptToReconnect(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect;",
        "it",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/stripe/hardware/status/DisconnectCause;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect;-><init>(Lcom/stripe/hardware/status/DisconnectCause;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    check-cast p1, Lcom/stripe/hardware/status/DisconnectCause;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;->apply(Lcom/stripe/hardware/status/DisconnectCause;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect;

    move-result-object p1

    return-object p1
.end method
