.class public final Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;
.super Ljava/lang/Object;
.source "Outcome.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;",
        "",
        "()V",
        "toOutcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
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

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toOutcome(Lcom/stripe/proto/net/rpc/base/ApplicationEC;)Lcom/stripe/loggingmodels/Outcome;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 133
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Unimplemented;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Unimplemented;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 132
    :pswitch_1
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$TooManyRequests;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$TooManyRequests;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 131
    :pswitch_2
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$ReaderInUse;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$ReaderInUse;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 130
    :pswitch_3
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$AlreadyExists;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$AlreadyExists;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 129
    :pswitch_4
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidConfig;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidConfig;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 128
    :pswitch_5
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$ServerError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$ServerError;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 127
    :pswitch_6
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidRequest;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidRequest;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 126
    :pswitch_7
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Unauthorized;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Unauthorized;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 125
    :pswitch_8
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidSessionToken;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidSessionToken;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 124
    :pswitch_9
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$AuthenticationFailure;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$AuthenticationFailure;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 123
    :pswitch_a
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$IllegalState;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$IllegalState;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 122
    :pswitch_b
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidLoadId;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$InvalidLoadId;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 121
    :pswitch_c
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$LockResourcesException;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$LockResourcesException;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 120
    :pswitch_d
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    .line 119
    :pswitch_e
    sget-object p1, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$EcInvalid;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$EcInvalid;

    check-cast p1, Lcom/stripe/loggingmodels/Outcome;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
