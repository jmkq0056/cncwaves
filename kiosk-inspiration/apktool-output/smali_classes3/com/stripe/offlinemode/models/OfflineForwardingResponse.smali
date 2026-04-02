.class public abstract Lcom/stripe/offlinemode/models/OfflineForwardingResponse;
.super Ljava/lang/Object;
.source "OfflineForwardingResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;,
        Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;,
        Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;,
        Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;,
        Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0007\u0008\t\n\u000bB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0003\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
        "",
        "request",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V",
        "getRequest",
        "()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "Cancel",
        "Failure",
        "PaymentIntentSuccess",
        "SetupIntentSuccess",
        "Success",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
        "offlinemode_release"
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
.field private final request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;


# direct methods
.method private constructor <init>(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;-><init>(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    return-object v0
.end method
