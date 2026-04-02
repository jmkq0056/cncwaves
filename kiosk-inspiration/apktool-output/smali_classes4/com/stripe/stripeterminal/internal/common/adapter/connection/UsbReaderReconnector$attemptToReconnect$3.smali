.class final Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;
.super Ljava/lang/Object;
.source "UsbReaderReconnector.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "test"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/stripe/hardware/status/DisconnectCause;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/stripe/hardware/status/DisconnectCause;->COMM_LINK_UNINITIALIZED:Lcom/stripe/hardware/status/DisconnectCause;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 165
    check-cast p1, Lcom/stripe/hardware/status/DisconnectCause;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;->test(Lcom/stripe/hardware/status/DisconnectCause;)Z

    move-result p1

    return p1
.end method
