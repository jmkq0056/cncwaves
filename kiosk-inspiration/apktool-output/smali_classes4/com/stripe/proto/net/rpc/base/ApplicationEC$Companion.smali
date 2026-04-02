.class public final Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;
.super Ljava/lang/Object;
.source "ApplicationEC.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/net/rpc/base/ApplicationEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
        "fromValue",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/net/rpc/base/ApplicationEC;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/16 v0, 0xd

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x142

    if-eq p1, v0, :cond_1

    const/16 v0, 0x143

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 115
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_REQUEST:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 114
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->UNAUTHORIZED:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 112
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->AUTHENTICATION_FAILURE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 111
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ILLEGAL_STATE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 110
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_LOAD_ID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 109
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->LOCK_RESOURCES_EXCEPTION:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 108
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->OK:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 107
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 121
    :cond_0
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->READER_IN_USE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 120
    :cond_1
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ALREADY_EXISTS:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 118
    :cond_2
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->UNIMPLEMENTED:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 117
    :cond_3
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->TOO_MANY_REQUESTS:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 119
    :cond_4
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_CONFIG:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 113
    :cond_5
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_SESSION_TOKEN:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    .line 116
    :cond_6
    sget-object p1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->SERVER_ERROR:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
