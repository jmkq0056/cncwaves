.class public final Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;
.super Ljava/lang/Object;
.source "Outcome.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/Outcome$RpcTransportError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;",
        "",
        "()V",
        "toOutcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "Lcom/stripe/proto/net/rpc/base/RpcEC;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toOutcome(Lcom/stripe/proto/net/rpc/base/RpcEC;)Lcom/stripe/loggingmodels/Outcome;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/proto/net/rpc/base/RpcEC;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 164
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerBusy;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerBusy;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 163
    :pswitch_1
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Retry;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Retry;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 162
    :pswitch_2
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Timeout;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Timeout;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 161
    :pswitch_3
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$BadResponse;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$BadResponse;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 160
    :pswitch_4
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$BadRequest;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$BadRequest;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 159
    :pswitch_5
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerUnreachable;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerUnreachable;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 158
    :pswitch_6
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerUnresolvable;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$ServerUnresolvable;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 157
    :pswitch_7
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$NetworkUnavailable;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$NetworkUnavailable;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 156
    :pswitch_8
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Error;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Error;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 155
    :pswitch_9
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 154
    :pswitch_a
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$EcInvalid;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$EcInvalid;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
