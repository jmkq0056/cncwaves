.class public final Lcom/stripe/stripeterminal/internal/common/api/ConnectionConfigurationKtxKt;
.super Ljava/lang/Object;
.source "ConnectionConfigurationKtx.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "shouldActivateWithExpandedLocation",
        "",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "common_publish"
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
.method public static final shouldActivateWithExpandedLocation(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->getShouldActivateWithExpandedLocation()Z

    move-result p0

    return p0

    .line 13
    :cond_0
    instance-of v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 15
    :cond_2
    instance-of v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    .line 16
    :cond_3
    instance-of v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    :goto_2
    if-eqz v0, :cond_4

    move p0, v1

    goto :goto_3

    .line 17
    :cond_4
    instance-of p0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    :goto_3
    if-eqz p0, :cond_5

    return v1

    .line 18
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
