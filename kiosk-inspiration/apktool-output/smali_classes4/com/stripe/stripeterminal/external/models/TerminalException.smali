.class public final Lcom/stripe/stripeterminal/external/models/TerminalException;
.super Ljava/lang/Exception;
.source "TerminalException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B/\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "errorCode",
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        "errorMessage",
        "",
        "cause",
        "",
        "apiError",
        "Lcom/stripe/stripeterminal/external/api/ApiError;",
        "(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;)V",
        "getApiError",
        "()Lcom/stripe/stripeterminal/external/api/ApiError;",
        "getCause",
        "()Ljava/lang/Throwable;",
        "getErrorCode",
        "()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "getPaymentIntent",
        "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "getSetupIntent",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntent;",
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


# instance fields
.field private final apiError:Lcom/stripe/stripeterminal/external/api/ApiError;

.field private final cause:Ljava/lang/Throwable;

.field private final errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field private final errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;)V
    .locals 8

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 21
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->errorMessage:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->cause:Ljava/lang/Throwable;

    .line 30
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->apiError:Lcom/stripe/stripeterminal/external/api/ApiError;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;)V

    return-void
.end method


# virtual methods
.method public final getApiError()Lcom/stripe/stripeterminal/external/api/ApiError;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->apiError:Lcom/stripe/stripeterminal/external/api/ApiError;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->apiError:Lcom/stripe/stripeterminal/external/api/ApiError;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/api/ApiError;->getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSetupIntent()Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;->apiError:Lcom/stripe/stripeterminal/external/api/ApiError;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/api/ApiError;->getSetupIntent()Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
