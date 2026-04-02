.class public final Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;
.super Ljava/lang/Object;
.source "CrpcResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007H\u0002J;\u0010\u0008\u001a\u0002H\t\"\u0012\u0008\u0000\u0010\t*\u000c\u0012\u0004\u0012\u0002H\t\u0012\u0002\u0008\u00030\n*\n\u0012\u0004\u0012\u0002H\t\u0018\u00010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000cJ+\u0010\r\u001a\u0002H\t\"\u0012\u0008\u0000\u0010\t*\u000c\u0012\u0004\u0012\u0002H\t\u0012\u0002\u0008\u00030\n*\n\u0012\u0004\u0012\u0002H\t\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;",
        "",
        "()V",
        "disconnectIfCommunicationError",
        "",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;",
        "onUnexpectedDisconnect",
        "Lkotlin/Function0;",
        "ensureConnectedJackrabbitResponse",
        "T",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;",
        "(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;Lkotlin/jvm/functions/Function0;)Lcom/squareup/wire/Message;",
        "withJackrabbitResponse",
        "(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;)Lcom/squareup/wire/Message;",
        "jackrabbitclient_release"
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
.field public static final INSTANCE:Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;

    invoke-direct {v0}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;-><init>()V

    sput-object v0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final disconnectIfCommunicationError(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 26
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final ensureConnectedJackrabbitResponse(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;Lkotlin/jvm/functions/Function0;)Lcom/squareup/wire/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;
        }
    .end annotation

    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->withJackrabbitResponse(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p1
    :try_end_0
    .catch Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->disconnectIfCommunicationError(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;Lkotlin/jvm/functions/Function0;)V

    .line 20
    throw p1
.end method

.method public final withJackrabbitResponse(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;)Lcom/squareup/wire/Message;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;
        }
    .end annotation

    .line 36
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$Success;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$Success;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;

    if-eqz v0, :cond_2

    .line 41
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;->isCancellation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v0

    sget-object v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BUSY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 49
    :pswitch_2
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->SESSION_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, v0

    .line 66
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 42
    :cond_1
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 43
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 42
    const-string v2, "Transaction is cancelled by the user."

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 69
    :cond_2
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    if-eqz v0, :cond_4

    .line 70
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->isRetryable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 72
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 73
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 71
    invoke-direct {v0, v1, v2, p1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 77
    :cond_3
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 78
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 79
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 77
    invoke-direct {v0, v1, v2, p1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    if-nez p1, :cond_5

    .line 86
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "No active reader"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
