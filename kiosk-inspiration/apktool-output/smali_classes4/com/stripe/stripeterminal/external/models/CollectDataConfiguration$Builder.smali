.class public final Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;
.super Ljava/lang/Object;
.source "CollectDataConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0008R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\"\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;",
        "",
        "()V",
        "<set-?>",
        "",
        "enableCustomerCancellation",
        "getEnableCustomerCancellation",
        "()Z",
        "Lcom/stripe/stripeterminal/external/models/CollectDataType;",
        "type",
        "getType",
        "()Lcom/stripe/stripeterminal/external/models/CollectDataType;",
        "build",
        "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;",
        "setEnableCustomerCancellation",
        "setType",
        "value",
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

.field private type:Lcom/stripe/stripeterminal/external/models/CollectDataType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;
    .locals 4

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;

    .line 42
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;->type:Lcom/stripe/stripeterminal/external/models/CollectDataType;

    if-eqz v1, :cond_0

    .line 43
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;->enableCustomerCancellation:Z

    const/4 v3, 0x0

    .line 41
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/CollectDataType;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getType()Lcom/stripe/stripeterminal/external/models/CollectDataType;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;->type:Lcom/stripe/stripeterminal/external/models/CollectDataType;

    return-object v0
.end method

.method public final setEnableCustomerCancellation(Z)Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;
    .locals 1

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;

    .line 38
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;->enableCustomerCancellation:Z

    return-object p0
.end method

.method public final setType(Lcom/stripe/stripeterminal/external/models/CollectDataType;)Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;

    .line 31
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;->type:Lcom/stripe/stripeterminal/external/models/CollectDataType;

    return-object p0
.end method
