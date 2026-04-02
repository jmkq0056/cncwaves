.class public final Lcom/example/digitalkiosk/models/CartItem;
.super Ljava/lang/Object;
.source "CartItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u001f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b\u0012\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\u0008\u0012\u0004\u0012\u00020\r`\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0005H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\u0019\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bH\u00c6\u0003J\u0019\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\u0008\u0012\u0004\u0012\u00020\r`\u000bH\u00c6\u0003J\t\u0010)\u001a\u00020\u000fH\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010!J\u008c\u0001\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0018\u0008\u0002\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b2\u0018\u0008\u0002\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\u0008\u0012\u0004\u0012\u00020\r`\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001\u00a2\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u00020\u0003H\u00d6\u0001J\t\u00102\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R!\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR!\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\u0008\u0012\u0004\u0012\u00020\r`\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u0010\"\u001a\u0004\u0008 \u0010!\u00a8\u00063"
    }
    d2 = {
        "Lcom/example/digitalkiosk/models/CartItem;",
        "",
        "id",
        "",
        "name",
        "",
        "quantity",
        "item_id",
        "attributes",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/CartItemAttribute;",
        "Lkotlin/collections/ArrayList;",
        "remove_ingredients",
        "Lcom/example/digitalkiosk/models/CartItemExtra;",
        "amount",
        "",
        "size",
        "size_price",
        "<init>",
        "(ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;)V",
        "getId",
        "()I",
        "getName",
        "()Ljava/lang/String;",
        "getQuantity",
        "getItem_id",
        "getAttributes",
        "()Ljava/util/ArrayList;",
        "getRemove_ingredients",
        "getAmount",
        "()F",
        "getSize",
        "getSize_price",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;)Lcom/example/digitalkiosk/models/CartItem;",
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
.field private final amount:F

.field private final attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final item_id:I

.field private final name:Ljava/lang/String;

.field private final quantity:I

.field private final remove_ingredients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemExtra;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Ljava/lang/String;

.field private final size_price:Ljava/lang/Float;


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemAttribute;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemExtra;",
            ">;F",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remove_ingredients"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/example/digitalkiosk/models/CartItem;->id:I

    iput-object p2, p0, Lcom/example/digitalkiosk/models/CartItem;->name:Ljava/lang/String;

    iput p3, p0, Lcom/example/digitalkiosk/models/CartItem;->quantity:I

    iput p4, p0, Lcom/example/digitalkiosk/models/CartItem;->item_id:I

    iput-object p5, p0, Lcom/example/digitalkiosk/models/CartItem;->attributes:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/example/digitalkiosk/models/CartItem;->remove_ingredients:Ljava/util/ArrayList;

    iput p7, p0, Lcom/example/digitalkiosk/models/CartItem;->amount:F

    iput-object p8, p0, Lcom/example/digitalkiosk/models/CartItem;->size:Ljava/lang/String;

    iput-object p9, p0, Lcom/example/digitalkiosk/models/CartItem;->size_price:Ljava/lang/Float;

    return-void
.end method

.method public static synthetic copy$default(Lcom/example/digitalkiosk/models/CartItem;ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/example/digitalkiosk/models/CartItem;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget p1, p0, Lcom/example/digitalkiosk/models/CartItem;->id:I

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/example/digitalkiosk/models/CartItem;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget p3, p0, Lcom/example/digitalkiosk/models/CartItem;->quantity:I

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget p4, p0, Lcom/example/digitalkiosk/models/CartItem;->item_id:I

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/example/digitalkiosk/models/CartItem;->attributes:Ljava/util/ArrayList;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/example/digitalkiosk/models/CartItem;->remove_ingredients:Ljava/util/ArrayList;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget p7, p0, Lcom/example/digitalkiosk/models/CartItem;->amount:F

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/example/digitalkiosk/models/CartItem;->size:Ljava/lang/String;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/example/digitalkiosk/models/CartItem;->size_price:Ljava/lang/Float;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move p9, p7

    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/example/digitalkiosk/models/CartItem;->copy(ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;)Lcom/example/digitalkiosk/models/CartItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->quantity:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->item_id:I

    return v0
.end method

.method public final component5()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemAttribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->attributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component6()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemExtra;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->remove_ingredients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component7()F
    .locals 1

    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->amount:F

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->size:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->size_price:Ljava/lang/Float;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;)Lcom/example/digitalkiosk/models/CartItem;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemAttribute;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemExtra;",
            ">;F",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/example/digitalkiosk/models/CartItem;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remove_ingredients"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/example/digitalkiosk/models/CartItem;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/example/digitalkiosk/models/CartItem;-><init>(ILjava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/Float;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/digitalkiosk/models/CartItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/example/digitalkiosk/models/CartItem;

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->id:I

    iget v3, p1, Lcom/example/digitalkiosk/models/CartItem;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/CartItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->quantity:I

    iget v3, p1, Lcom/example/digitalkiosk/models/CartItem;->quantity:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->item_id:I

    iget v3, p1, Lcom/example/digitalkiosk/models/CartItem;->item_id:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->attributes:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/CartItem;->attributes:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->remove_ingredients:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/CartItem;->remove_ingredients:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->amount:F

    iget v3, p1, Lcom/example/digitalkiosk/models/CartItem;->amount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->size:Ljava/lang/String;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/CartItem;->size:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->size_price:Ljava/lang/Float;

    iget-object p1, p1, Lcom/example/digitalkiosk/models/CartItem;->size_price:Ljava/lang/Float;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAmount()F
    .locals 1

    .line 3
    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->amount:F

    return v0
.end method

.method public final getAttributes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemAttribute;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->attributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->id:I

    return v0
.end method

.method public final getItem_id()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->item_id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuantity()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->quantity:I

    return v0
.end method

.method public final getRemove_ingredients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItemExtra;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->remove_ingredients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSize()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->size:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize_price()Ljava/lang/Float;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/example/digitalkiosk/models/CartItem;->size_price:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/example/digitalkiosk/models/CartItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->quantity:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->item_id:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->remove_ingredients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->amount:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->size:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->size_price:Ljava/lang/Float;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartItem(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->item_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remove_ingredients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->remove_ingredients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/example/digitalkiosk/models/CartItem;->amount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size_price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CartItem;->size_price:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
