.class public final Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener_androidKt;
.super Ljava/lang/Object;
.source "ProxyReaderListener.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005\u00a8\u0006\t"
    }
    d2 = {
        "assertRequiredListener",
        "",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "hasMobileReaderListener",
        "",
        "hasHandoffReaderListener",
        "hasTapToPayReaderListener",
        "hasInternetReaderListener",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final assertRequiredListener(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;ZZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string p2, "config"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of p2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 24
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 23
    const-string v2, "A MobileReaderListener is required when using BluetoothConnectionConfiguration."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 30
    :cond_1
    instance-of p2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 32
    :cond_2
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 33
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 32
    const-string v2, "A MobileReaderListener is required when using UsbConnectionConfiguration."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 39
    :cond_3
    instance-of p1, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    move p1, p2

    goto :goto_1

    .line 40
    :cond_4
    instance-of p1, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 41
    :cond_5
    instance-of p2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    :goto_2
    if-eqz p2, :cond_6

    return-void

    .line 42
    :cond_6
    instance-of p0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    return-void
.end method
