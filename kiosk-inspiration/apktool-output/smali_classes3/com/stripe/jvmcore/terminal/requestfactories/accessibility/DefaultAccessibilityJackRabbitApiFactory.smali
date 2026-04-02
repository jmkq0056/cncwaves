.class public final Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "DefaultAccessibilityJackRabbitApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;",
        "()V",
        "getReaderSettings",
        "Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;",
        "setReaderSettings",
        "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "terminal-requestfactories"
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReaderSettings()Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;
    .locals 3

    .line 18
    new-instance v0, Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;
    .locals 4

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters$AccessibilityParameters;

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;

    .line 12
    new-instance v1, Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;

    .line 13
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters$AccessibilityParameters;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters$AccessibilityParameters;->getTextToSpeechViaSpeakers()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 12
    invoke-direct {v1, p1, v2, v3, v2}, Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;-><init>(ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-direct {v0, v1, v2, v3, v2}, Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;-><init>(Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
