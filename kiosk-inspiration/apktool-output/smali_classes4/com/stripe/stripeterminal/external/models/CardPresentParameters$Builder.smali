.class public final Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;
.super Ljava/lang/Object;
.source "CardPresentParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/CardPresentParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001aR(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR*\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\n@@X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\n@@X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR(\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0014@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R(\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u001a@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;",
        "",
        "()V",
        "<set-?>",
        "Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;",
        "captureMethod",
        "getCaptureMethod",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;",
        "setCaptureMethod$public_release",
        "(Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;)V",
        "",
        "requestExtendedAuthorization",
        "getRequestExtendedAuthorization",
        "()Ljava/lang/Boolean;",
        "setRequestExtendedAuthorization$public_release",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "requestIncrementalAuthorizationSupport",
        "getRequestIncrementalAuthorizationSupport",
        "setRequestIncrementalAuthorizationSupport$public_release",
        "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
        "requestPartialAuthorization",
        "getRequestPartialAuthorization",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
        "setRequestPartialAuthorization$public_release",
        "(Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)V",
        "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;",
        "routing",
        "getRouting",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;",
        "setRouting$public_release",
        "(Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;)V",
        "build",
        "Lcom/stripe/stripeterminal/external/models/CardPresentParameters;",
        "setCaptureMethod",
        "setRequestExtendedAuthorization",
        "setRequestIncrementalAuthorizationSupport",
        "setRequestPartialAuthorization",
        "setRouting",
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
.field private captureMethod:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

.field private requestExtendedAuthorization:Ljava/lang/Boolean;

.field private requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

.field private requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

.field private routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;
    .locals 2

    .line 105
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;-><init>(Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getCaptureMethod()Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->captureMethod:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    return-object v0
.end method

.method public final getRequestExtendedAuthorization()Ljava/lang/Boolean;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestExtendedAuthorization:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRequestIncrementalAuthorizationSupport()Ljava/lang/Boolean;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRequestPartialAuthorization()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-object v0
.end method

.method public final getRouting()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;

    return-object v0
.end method

.method public final setCaptureMethod(Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;)Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;
    .locals 1

    const-string v0, "captureMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;

    .line 81
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->captureMethod:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    return-object p0
.end method

.method public final synthetic setCaptureMethod$public_release(Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->captureMethod:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    return-void
.end method

.method public final setRequestExtendedAuthorization(Z)Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;
    .locals 1

    .line 66
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;

    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestExtendedAuthorization:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic setRequestExtendedAuthorization$public_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestExtendedAuthorization:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRequestIncrementalAuthorizationSupport(Z)Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;
    .locals 1

    .line 73
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic setRequestIncrementalAuthorizationSupport$public_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRequestPartialAuthorization(Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;
    .locals 1

    const-string v0, "requestPartialAuthorization"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;

    .line 95
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-object p0
.end method

.method public final synthetic setRequestPartialAuthorization$public_release(Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-void
.end method

.method public final setRouting(Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;)Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;
    .locals 1

    const-string v0, "routing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;

    .line 88
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;

    return-object p0
.end method

.method public final synthetic setRouting$public_release(Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;

    return-void
.end method
