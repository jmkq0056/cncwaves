.class public final Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;
.super Ljava/lang/Object;
.source "SetupIntentConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004H\u0007R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R&\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;",
        "",
        "()V",
        "<set-?>",
        "",
        "enableCustomerCancellation",
        "getEnableCustomerCancellation",
        "()Z",
        "moto",
        "getMoto$annotations",
        "getMoto",
        "build",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;",
        "setEnableCustomerCancellation",
        "value",
        "setMoto",
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
.field private enableCustomerCancellation:Z

.field private moto:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getMoto$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;
    .locals 4

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;

    .line 44
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;->enableCustomerCancellation:Z

    .line 45
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;->moto:Z

    const/4 v3, 0x0

    .line 43
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;-><init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getMoto()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;->moto:Z

    return v0
.end method

.method public final setEnableCustomerCancellation(Z)Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;
    .locals 1

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;

    .line 29
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;->enableCustomerCancellation:Z

    return-object p0
.end method

.method public final setMoto(Z)Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;
    .locals 1

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;

    .line 39
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;->moto:Z

    return-object p0
.end method
