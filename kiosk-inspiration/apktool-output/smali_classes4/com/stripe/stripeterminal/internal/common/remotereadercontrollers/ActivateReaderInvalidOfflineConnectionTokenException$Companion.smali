.class public final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;
.super Ljava/lang/Object;
.source "ActivateReaderInvalidOfflineConnectionTokenException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;",
        "",
        "()V",
        "ERROR_MESSAGE_PREFIX",
        "",
        "addInvalidOfflineConnectionTokenExceptionCauseIfNeeded",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "crpcError",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addInvalidOfflineConnectionTokenExceptionCauseIfNeeded(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError<",
            "*>;)",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crpcError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Invalid API Key provided: psst_off"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 24
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    .line 25
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 26
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;

    invoke-virtual {p2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;-><init>(Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    return-object p1
.end method
