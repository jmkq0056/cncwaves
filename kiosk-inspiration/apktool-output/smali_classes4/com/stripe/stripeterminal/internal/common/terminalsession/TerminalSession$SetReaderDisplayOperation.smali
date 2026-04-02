.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetReaderDisplayOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation<",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\r\u0010\u000c\u001a\u00020\u000bH\u0010\u00a2\u0006\u0002\u0008\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Cart;Lcom/stripe/stripeterminal/external/callable/Callback;)V",
        "getCart",
        "()Lcom/stripe/stripeterminal/external/models/Cart;",
        "execute",
        "",
        "onSuccess",
        "onSuccess$terminalsession_release",
        "sdkRequest",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
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


# instance fields
.field private final cart:Lcom/stripe/stripeterminal/external/models/Cart;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Cart;Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Cart;",
            "Lcom/stripe/stripeterminal/external/callable/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "cart"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2995
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2998
    check-cast p3, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 2996
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->cart:Lcom/stripe/stripeterminal/external/models/Cart;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9

    .line 3004
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->cart:Lcom/stripe/stripeterminal/external/models/Cart;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Cart;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 3005
    sget-object v1, Lcom/stripe/currency/CurrencyCode;->Companion:Lcom/stripe/currency/CurrencyCode$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/currency/CurrencyCode$Companion;->getByCodeIgnoreCase(Ljava/lang/String;)Lcom/stripe/currency/CurrencyCode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3010
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->cart:Lcom/stripe/stripeterminal/external/models/Cart;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V

    .line 3012
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->onSuccess$terminalsession_release()V

    return-void

    .line 3006
    :cond_0
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported currency "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public final getCart()Lcom/stripe/stripeterminal/external/models/Cart;
    .locals 1

    .line 2996
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->cart:Lcom/stripe/stripeterminal/external/models/Cart;

    return-object v0
.end method

.method public onSuccess$terminalsession_release()V
    .locals 1

    .line 3016
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 3017
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 2

    .line 3000
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;->cart:Lcom/stripe/stripeterminal/external/models/Cart;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method
