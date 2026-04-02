.class public final Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;
.super Ljava/lang/Object;
.source "CustomerAcceptanceParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;",
        "",
        "builder",
        "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;",
        "(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;)V",
        "acceptedAt",
        "",
        "getAcceptedAt",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "onlineAcceptanceData",
        "Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;",
        "getOnlineAcceptanceData",
        "()Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;",
        "type",
        "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;",
        "getType",
        "()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;",
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
.field private final acceptedAt:Ljava/lang/Long;

.field private final onlineAcceptanceData:Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;

.field private final type:Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->getType$public_release()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;->type:Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;

    .line 13
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->getAcceptedAt$public_release()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;->acceptedAt:Ljava/lang/Long;

    .line 14
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->getOnlineAcceptanceData$public_release()Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;->onlineAcceptanceData:Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;

    return-void
.end method


# virtual methods
.method public final getAcceptedAt()Ljava/lang/Long;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;->acceptedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOnlineAcceptanceData()Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;->onlineAcceptanceData:Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;

    return-object v0
.end method

.method public final getType()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;->type:Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;

    return-object v0
.end method
