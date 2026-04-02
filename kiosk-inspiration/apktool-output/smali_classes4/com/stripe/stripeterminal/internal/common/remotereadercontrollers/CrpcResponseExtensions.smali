.class public final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;
.super Ljava/lang/Object;
.source "CrpcResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u0002H\u0004\"\u0012\u0008\u0000\u0010\u0004*\u000c\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\u0008\u00030\u0005*\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J+\u0010\u0008\u001a\u0002H\u0004\"\u0012\u0008\u0000\u0010\u0004*\u000c\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\u0008\u00030\u0005*\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;",
        "",
        "()V",
        "withJackrabbitResponse",
        "T",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;",
        "withJackrabbitResponseForActivateReader",
        "common_publish"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final withJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 49
    instance-of v0, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    if-eqz v0, :cond_2

    .line 54
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->isCancellation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 62
    :pswitch_1
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BUSY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 61
    :pswitch_2
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->SESSION_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, v0

    .line 78
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 55
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 56
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 55
    const-string v2, "Transaction is cancelled by the user."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 81
    :cond_2
    instance-of v0, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    if-eqz v0, :cond_5

    .line 83
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->isSSLError()Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->isRetryable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_1

    .line 85
    :cond_3
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_1

    .line 83
    :cond_4
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_1
    move-object v2, v0

    .line 88
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :cond_5
    if-nez p1, :cond_6

    .line 92
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v4, "No active reader"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    nop

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

.method public final withJackrabbitResponseForActivateReader(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 32
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->withJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p1
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 35
    instance-of v1, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;->Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    invoke-virtual {v1, v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;->addInvalidOfflineConnectionTokenExceptionCauseIfNeeded(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    .line 38
    throw p1

    :cond_0
    throw v0
.end method
