.class public final Lcom/stripe/proto/model/sdk/Cart$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Cart.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/Cart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/Cart;",
        "Lcom/stripe/proto/model/sdk/Cart$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007J\u0014\u0010\u000b\u001a\u00020\u00002\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0014\u0010\u000f\u001a\u00020\u00002\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0007J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000eR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/Cart$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/Cart;",
        "()V",
        "currency",
        "",
        "discounts",
        "",
        "Lcom/stripe/proto/model/sdk/Discount;",
        "line_items",
        "Lcom/stripe/proto/model/sdk/LineItem;",
        "modifiers",
        "Lcom/stripe/proto/model/sdk/Modifier;",
        "tax",
        "",
        "tenders",
        "Lcom/stripe/proto/model/sdk/Tender;",
        "total",
        "build",
        "terminal_release"
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
.field public currency:Ljava/lang/String;

.field public discounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Discount;",
            ">;"
        }
    .end annotation
.end field

.field public line_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/LineItem;",
            ">;"
        }
    .end annotation
.end field

.field public modifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public tax:J

.field public tenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Tender;",
            ">;"
        }
    .end annotation
.end field

.field public total:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 192
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->line_items:Ljava/util/List;

    .line 195
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->modifiers:Ljava/util/List;

    .line 198
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->discounts:Ljava/util/List;

    .line 201
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->tenders:Ljava/util/List;

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/Cart$Builder;->build()Lcom/stripe/proto/model/sdk/Cart;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/Cart;
    .locals 11

    .line 272
    new-instance v0, Lcom/stripe/proto/model/sdk/Cart;

    .line 273
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->line_items:Ljava/util/List;

    .line 274
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->modifiers:Ljava/util/List;

    .line 275
    iget-object v3, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->discounts:Ljava/util/List;

    .line 276
    iget-object v4, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->tenders:Ljava/util/List;

    .line 277
    iget-wide v5, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->tax:J

    .line 278
    iget-wide v7, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->total:J

    .line 279
    iget-object v9, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->currency:Ljava/lang/String;

    .line 280
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/Cart$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 272
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/sdk/Cart;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/Cart$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final discounts(Ljava/util/List;)Lcom/stripe/proto/model/sdk/Cart$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Discount;",
            ">;)",
            "Lcom/stripe/proto/model/sdk/Cart$Builder;"
        }
    .end annotation

    const-string v0, "discounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 235
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->discounts:Ljava/util/List;

    return-object p0
.end method

.method public final line_items(Ljava/util/List;)Lcom/stripe/proto/model/sdk/Cart$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/LineItem;",
            ">;)",
            "Lcom/stripe/proto/model/sdk/Cart$Builder;"
        }
    .end annotation

    const-string v0, "line_items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->line_items:Ljava/util/List;

    return-object p0
.end method

.method public final modifiers(Ljava/util/List;)Lcom/stripe/proto/model/sdk/Cart$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Modifier;",
            ">;)",
            "Lcom/stripe/proto/model/sdk/Cart$Builder;"
        }
    .end annotation

    const-string v0, "modifiers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 226
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->modifiers:Ljava/util/List;

    return-object p0
.end method

.method public final tax(J)Lcom/stripe/proto/model/sdk/Cart$Builder;
    .locals 0

    .line 252
    iput-wide p1, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->tax:J

    return-object p0
.end method

.method public final tenders(Ljava/util/List;)Lcom/stripe/proto/model/sdk/Cart$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Tender;",
            ">;)",
            "Lcom/stripe/proto/model/sdk/Cart$Builder;"
        }
    .end annotation

    const-string v0, "tenders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 244
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->tenders:Ljava/util/List;

    return-object p0
.end method

.method public final total(J)Lcom/stripe/proto/model/sdk/Cart$Builder;
    .locals 0

    .line 260
    iput-wide p1, p0, Lcom/stripe/proto/model/sdk/Cart$Builder;->total:J

    return-object p0
.end method
