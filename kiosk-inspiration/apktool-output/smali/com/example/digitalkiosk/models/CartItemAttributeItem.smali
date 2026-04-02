.class public final Lcom/example/digitalkiosk/models/CartItemAttributeItem;
.super Ljava/lang/Object;
.source "CartItemAttributeItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/example/digitalkiosk/models/CartItemAttributeItem;",
        "",
        "name",
        "",
        "price",
        "",
        "quantity",
        "",
        "<init>",
        "(Ljava/lang/String;FI)V",
        "getName",
        "()Ljava/lang/String;",
        "getPrice",
        "()F",
        "getQuantity",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
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

.field private final price:F

.field private final quantity:I


# direct methods
.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->name:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->price:F

    .line 6
    iput p3, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->quantity:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/example/digitalkiosk/models/CartItemAttributeItem;Ljava/lang/String;FIILjava/lang/Object;)Lcom/example/digitalkiosk/models/CartItemAttributeItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->price:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->quantity:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->copy(Ljava/lang/String;FI)Lcom/example/digitalkiosk/models/CartItemAttributeItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->price:F

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->quantity:I

    return v0
.end method

.method public final copy(Ljava/lang/String;FI)Lcom/example/digitalkiosk/models/CartItemAttributeItem;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/example/digitalkiosk/models/CartItemAttributeItem;-><init>(Ljava/lang/String;FI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/digitalkiosk/models/CartItemAttributeItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/example/digitalkiosk/models/CartItemAttributeItem;

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->price:F

    iget v3, p1, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->price:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->quantity:I

    iget p1, p1, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->quantity:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->price:F

    return v0
.end method

.method public final getQuantity()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->quantity:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->price:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->quantity:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartItemAttributeItem(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->price:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
