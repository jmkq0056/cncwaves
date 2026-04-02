.class public final Lcom/example/digitalkiosk/stripe/providers/TokenProvider;
.super Ljava/lang/Object;
.source "TokenProvider.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/example/digitalkiosk/stripe/providers/TokenProvider;",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
        "<init>",
        "()V",
        "fetchConnectionToken",
        "",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchConnectionToken(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :try_start_0
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/network/ApiClient;->stripe_connection_token$app_release()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/ConnectionTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;->onFailure(Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;)V

    return-void
.end method
