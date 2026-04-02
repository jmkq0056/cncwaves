.class public final Lcom/stripe/stripeterminal/external/models/CardPresentParameters;
.super Ljava/lang/Object;
.source "CardPresentParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0018B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000f\u0010\u000cR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CardPresentParameters;",
        "",
        "builder",
        "Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;",
        "(Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;)V",
        "captureMethod",
        "Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;",
        "getCaptureMethod",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;",
        "requestExtendedAuthorization",
        "",
        "getRequestExtendedAuthorization",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "requestIncrementalAuthorizationSupport",
        "getRequestIncrementalAuthorizationSupport",
        "requestPartialAuthorization",
        "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
        "getRequestPartialAuthorization",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
        "routing",
        "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;",
        "getRouting",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;",
        "Builder",
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
.field private final captureMethod:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

.field private final requestExtendedAuthorization:Ljava/lang/Boolean;

.field private final requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

.field private final requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

.field private final routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;


# direct methods
.method private constructor <init>(Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->getRequestExtendedAuthorization()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->requestExtendedAuthorization:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->getRequestIncrementalAuthorizationSupport()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    .line 32
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->getCaptureMethod()Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->captureMethod:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    .line 38
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->getRouting()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;

    .line 45
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;->getRequestPartialAuthorization()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;-><init>(Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public final getCaptureMethod()Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->captureMethod:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    return-object v0
.end method

.method public final getRequestExtendedAuthorization()Ljava/lang/Boolean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->requestExtendedAuthorization:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRequestIncrementalAuthorizationSupport()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRequestPartialAuthorization()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-object v0
.end method

.method public final getRouting()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;

    return-object v0
.end method
