.class public final Lcom/stripe/stripeterminal/external/models/Cart$Builder;
.super Ljava/lang/Object;
.source "Cart.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/Cart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0019\u001a\u00020\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/Cart$Builder;",
        "",
        "currency",
        "",
        "tax",
        "",
        "total",
        "lineItems",
        "",
        "Lcom/stripe/stripeterminal/external/models/CartLineItem;",
        "(Ljava/lang/String;JJLjava/util/List;)V",
        "getCurrency",
        "()Ljava/lang/String;",
        "setCurrency",
        "(Ljava/lang/String;)V",
        "getLineItems",
        "()Ljava/util/List;",
        "setLineItems",
        "(Ljava/util/List;)V",
        "getTax",
        "()J",
        "setTax",
        "(J)V",
        "getTotal",
        "setTotal",
        "build",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
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
.field private currency:Ljava/lang/String;

.field private lineItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/CartLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private tax:J

.field private total:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 10

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/stripe/stripeterminal/external/models/Cart$Builder;-><init>(Ljava/lang/String;JJLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/CartLineItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lineItems"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->currency:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->tax:J

    .line 49
    iput-wide p4, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->total:J

    .line 50
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->lineItems:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/Cart$Builder;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/Cart;
    .locals 7

    .line 52
    new-instance v0, Lcom/stripe/stripeterminal/external/models/Cart;

    .line 53
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->currency:Ljava/lang/String;

    .line 54
    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->tax:J

    .line 55
    iget-wide v4, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->total:J

    .line 56
    iget-object v6, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->lineItems:Ljava/util/List;

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/Cart;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/CartLineItem;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->lineItems:Ljava/util/List;

    return-object v0
.end method

.method public final getTax()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->tax:J

    return-wide v0
.end method

.method public final getTotal()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->total:J

    return-wide v0
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setLineItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/CartLineItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->lineItems:Ljava/util/List;

    return-void
.end method

.method public final setTax(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->tax:J

    return-void
.end method

.method public final setTotal(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/stripe/stripeterminal/external/models/Cart$Builder;->total:J

    return-void
.end method
