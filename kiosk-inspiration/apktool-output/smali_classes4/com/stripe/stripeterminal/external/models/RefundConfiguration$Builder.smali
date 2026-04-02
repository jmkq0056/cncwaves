.class public final Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;
.super Ljava/lang/Object;
.source "RefundConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/RefundConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;",
        "",
        "()V",
        "<set-?>",
        "",
        "enableCustomerCancellation",
        "getEnableCustomerCancellation",
        "()Z",
        "build",
        "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;",
        "setEnableCustomerCancellation",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/RefundConfiguration;
    .locals 3

    .line 25
    new-instance v0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    .line 26
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;->enableCustomerCancellation:Z

    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;->enableCustomerCancellation:Z

    return v0
.end method

.method public final setEnableCustomerCancellation(Z)Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;
    .locals 1

    .line 21
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;

    .line 22
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;->enableCustomerCancellation:Z

    return-object p0
.end method
