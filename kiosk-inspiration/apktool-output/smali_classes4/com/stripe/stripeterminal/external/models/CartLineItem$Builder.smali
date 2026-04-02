.class public final Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;
.super Ljava/lang/Object;
.source "CartLineItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/CartLineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;",
        "",
        "description",
        "",
        "quantity",
        "",
        "amount",
        "",
        "(Ljava/lang/String;IJ)V",
        "getAmount",
        "()J",
        "setAmount",
        "(J)V",
        "getDescription",
        "()Ljava/lang/String;",
        "setDescription",
        "(Ljava/lang/String;)V",
        "getQuantity",
        "()I",
        "setQuantity",
        "(I)V",
        "build",
        "Lcom/stripe/stripeterminal/external/models/CartLineItem;",
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
.field private amount:J

.field private description:Ljava/lang/String;

.field private quantity:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->description:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->quantity:I

    .line 35
    iput-wide p3, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->amount:J

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/CartLineItem;
    .locals 5

    .line 37
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CartLineItem;

    .line 38
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->description:Ljava/lang/String;

    .line 39
    iget v2, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->quantity:I

    .line 40
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->amount:J

    .line 37
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/external/models/CartLineItem;-><init>(Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public final getAmount()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->amount:J

    return-wide v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuantity()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->quantity:I

    return v0
.end method

.method public final setAmount(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->amount:J

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->description:Ljava/lang/String;

    return-void
.end method

.method public final setQuantity(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/stripe/stripeterminal/external/models/CartLineItem$Builder;->quantity:I

    return-void
.end method
