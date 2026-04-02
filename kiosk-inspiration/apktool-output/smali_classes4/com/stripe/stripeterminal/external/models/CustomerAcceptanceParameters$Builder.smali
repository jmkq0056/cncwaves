.class public final Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;
.super Ljava/lang/Object;
.source "CustomerAcceptanceParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0015\u001a\u00020\u0016J\u0015\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0004\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;",
        "",
        "type",
        "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;",
        "(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;)V",
        "acceptedAt",
        "",
        "getAcceptedAt$public_release",
        "()Ljava/lang/Long;",
        "setAcceptedAt$public_release",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "onlineAcceptanceData",
        "Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;",
        "getOnlineAcceptanceData$public_release",
        "()Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;",
        "setOnlineAcceptanceData$public_release",
        "(Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;)V",
        "getType$public_release",
        "()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;",
        "setType$public_release",
        "build",
        "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;",
        "setAcceptedAt",
        "(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;",
        "setOnlineAcceptanceData",
        "data",
        "setType",
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
.field private acceptedAt:Ljava/lang/Long;

.field private onlineAcceptanceData:Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;

.field private type:Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->type:Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;
    .locals 1

    .line 58
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;-><init>(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;)V

    return-object v0
.end method

.method public final getAcceptedAt$public_release()Ljava/lang/Long;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->acceptedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOnlineAcceptanceData$public_release()Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->onlineAcceptanceData:Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;

    return-object v0
.end method

.method public final getType$public_release()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->type:Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;

    return-object v0
.end method

.method public final setAcceptedAt(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->acceptedAt:Ljava/lang/Long;

    return-object p0
.end method

.method public final setAcceptedAt$public_release(Ljava/lang/Long;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->acceptedAt:Ljava/lang/Long;

    return-void
.end method

.method public final setOnlineAcceptanceData(Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;)Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->onlineAcceptanceData:Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;

    return-object p0
.end method

.method public final setOnlineAcceptanceData$public_release(Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->onlineAcceptanceData:Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;

    return-void
.end method

.method public final setType(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;)Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->type:Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;

    return-object p0
.end method

.method public final setType$public_release(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;->type:Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;

    return-void
.end method
