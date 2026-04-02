.class public final Lcom/example/digitalkiosk/models/OrderItem;
.super Ljava/lang/Object;
.source "OrderItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u001a\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\u001d\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\nH\u00c6\u0003JL\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u001c\u0008\u0002\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\nH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J\t\u0010 \u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R%\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/example/digitalkiosk/models/OrderItem;",
        "",
        "subtotal",
        "",
        "quantity",
        "",
        "name",
        "",
        "sub_items",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "<init>",
        "(FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V",
        "getSubtotal",
        "()F",
        "getQuantity",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getName",
        "()Ljava/lang/String;",
        "getSub_items",
        "()Ljava/util/ArrayList;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/example/digitalkiosk/models/OrderItem;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final quantity:Ljava/lang/Integer;

.field private final sub_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private final subtotal:F


# direct methods
.method public constructor <init>(FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/OrderItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/example/digitalkiosk/models/OrderItem;->subtotal:F

    .line 5
    iput-object p2, p0, Lcom/example/digitalkiosk/models/OrderItem;->quantity:Ljava/lang/Integer;

    .line 6
    iput-object p3, p0, Lcom/example/digitalkiosk/models/OrderItem;->name:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/example/digitalkiosk/models/OrderItem;->sub_items:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic copy$default(Lcom/example/digitalkiosk/models/OrderItem;FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/example/digitalkiosk/models/OrderItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/example/digitalkiosk/models/OrderItem;->subtotal:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/example/digitalkiosk/models/OrderItem;->quantity:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/example/digitalkiosk/models/OrderItem;->name:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/example/digitalkiosk/models/OrderItem;->sub_items:Ljava/util/ArrayList;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/example/digitalkiosk/models/OrderItem;->copy(FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/example/digitalkiosk/models/OrderItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->subtotal:F

    return v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/OrderItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->sub_items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final copy(FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/example/digitalkiosk/models/OrderItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/OrderItem;",
            ">;)",
            "Lcom/example/digitalkiosk/models/OrderItem;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/example/digitalkiosk/models/OrderItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/example/digitalkiosk/models/OrderItem;-><init>(FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/digitalkiosk/models/OrderItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/example/digitalkiosk/models/OrderItem;

    iget v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->subtotal:F

    iget v3, p1, Lcom/example/digitalkiosk/models/OrderItem;->subtotal:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->quantity:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/OrderItem;->quantity:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/OrderItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->sub_items:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/example/digitalkiosk/models/OrderItem;->sub_items:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuantity()Ljava/lang/Integer;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSub_items()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/OrderItem;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->sub_items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSubtotal()F
    .locals 1

    .line 4
    iget v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->subtotal:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/example/digitalkiosk/models/OrderItem;->subtotal:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->quantity:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->sub_items:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrderItem(subtotal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->subtotal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->quantity:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sub_items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/OrderItem;->sub_items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
