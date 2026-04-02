.class public final Lcom/stripe/proto/model/sdk/LineItem$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LineItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/LineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/LineItem;",
        "Lcom/stripe/proto/model/sdk/LineItem$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u0014\u0010\u000b\u001a\u00020\u00002\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/LineItem$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/LineItem;",
        "()V",
        "amount",
        "",
        "description",
        "",
        "discounts",
        "",
        "Lcom/stripe/proto/model/sdk/Discount;",
        "modifiers",
        "Lcom/stripe/proto/model/sdk/Modifier;",
        "quantity",
        "",
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
.field public amount:J

.field public description:Ljava/lang/String;

.field public discounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Discount;",
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

.field public quantity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->description:Ljava/lang/String;

    .line 160
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->discounts:Ljava/util/List;

    .line 163
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->modifiers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final amount(J)Lcom/stripe/proto/model/sdk/LineItem$Builder;
    .locals 0

    .line 182
    iput-wide p1, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->amount:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/LineItem$Builder;->build()Lcom/stripe/proto/model/sdk/LineItem;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/LineItem;
    .locals 8

    .line 204
    new-instance v0, Lcom/stripe/proto/model/sdk/LineItem;

    .line 205
    iget v1, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->quantity:I

    .line 206
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->description:Ljava/lang/String;

    .line 207
    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->amount:J

    .line 208
    iget-object v5, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->discounts:Ljava/util/List;

    .line 209
    iget-object v6, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->modifiers:Ljava/util/List;

    .line 210
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/LineItem$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 204
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/sdk/LineItem;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/LineItem$Builder;
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final discounts(Ljava/util/List;)Lcom/stripe/proto/model/sdk/LineItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Discount;",
            ">;)",
            "Lcom/stripe/proto/model/sdk/LineItem$Builder;"
        }
    .end annotation

    const-string v0, "discounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 191
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->discounts:Ljava/util/List;

    return-object p0
.end method

.method public final modifiers(Ljava/util/List;)Lcom/stripe/proto/model/sdk/LineItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/sdk/Modifier;",
            ">;)",
            "Lcom/stripe/proto/model/sdk/LineItem$Builder;"
        }
    .end annotation

    const-string v0, "modifiers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->modifiers:Ljava/util/List;

    return-object p0
.end method

.method public final quantity(I)Lcom/stripe/proto/model/sdk/LineItem$Builder;
    .locals 0

    .line 166
    iput p1, p0, Lcom/stripe/proto/model/sdk/LineItem$Builder;->quantity:I

    return-object p0
.end method
