.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;
.super Ljava/lang/Object;
.source "TerminalExceptionTransformer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
        "",
        "()V",
        "transform",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "kmpTerminalException",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;",
        "terminalsession_release"
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
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 8

    const-string v0, "kmpTerminalException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 9
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
