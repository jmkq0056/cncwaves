.class public final Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;
.super Ljava/lang/Object;
.source "ConfirmConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0005\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\tR$\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;",
        "",
        "()V",
        "<set-?>",
        "",
        "amountSurcharge",
        "getAmountSurcharge",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "",
        "returnUrl",
        "getReturnUrl",
        "()Ljava/lang/String;",
        "value",
        "(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;",
        "build",
        "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;",
        "setReturnUrl",
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
.field private amountSurcharge:Ljava/lang/Long;

.field private returnUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final amountSurcharge(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;
    .locals 1

    .line 23
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;

    .line 24
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;->amountSurcharge:Ljava/lang/Long;

    return-object p0
.end method

.method public final build()Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;
    .locals 4

    .line 36
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;

    .line 37
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;->amountSurcharge:Ljava/lang/Long;

    .line 38
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;->returnUrl:Ljava/lang/String;

    const/4 v3, 0x0

    .line 36
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;-><init>(Ljava/lang/Long;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getAmountSurcharge()Ljava/lang/Long;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;->amountSurcharge:Ljava/lang/Long;

    return-object v0
.end method

.method public final getReturnUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;->returnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setReturnUrl(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;
    .locals 1

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;->returnUrl:Ljava/lang/String;

    return-object p0
.end method
