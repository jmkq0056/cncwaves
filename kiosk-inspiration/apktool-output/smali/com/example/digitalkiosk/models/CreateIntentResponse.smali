.class public final Lcom/example/digitalkiosk/models/CreateIntentResponse;
.super Ljava/lang/Object;
.source "CreateIntentResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u000f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
        "",
        "intent",
        "Lcom/example/digitalkiosk/models/ServerPaymentIntent;",
        "order",
        "",
        "<init>",
        "(Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;)V",
        "getIntent",
        "()Lcom/example/digitalkiosk/models/ServerPaymentIntent;",
        "getOrder",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "copy",
        "(Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;)Lcom/example/digitalkiosk/models/CreateIntentResponse;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

.field private final order:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    .line 5
    iput-object p2, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->order:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/example/digitalkiosk/models/CreateIntentResponse;Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/example/digitalkiosk/models/CreateIntentResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->order:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/models/CreateIntentResponse;->copy(Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;)Lcom/example/digitalkiosk/models/CreateIntentResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/example/digitalkiosk/models/ServerPaymentIntent;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->order:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;)Lcom/example/digitalkiosk/models/CreateIntentResponse;
    .locals 1

    new-instance v0, Lcom/example/digitalkiosk/models/CreateIntentResponse;

    invoke-direct {v0, p1, p2}, Lcom/example/digitalkiosk/models/CreateIntentResponse;-><init>(Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/digitalkiosk/models/CreateIntentResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/example/digitalkiosk/models/CreateIntentResponse;

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    iget-object v3, p1, Lcom/example/digitalkiosk/models/CreateIntentResponse;->intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->order:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/example/digitalkiosk/models/CreateIntentResponse;->order:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getIntent()Lcom/example/digitalkiosk/models/ServerPaymentIntent;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    return-object v0
.end method

.method public final getOrder()Ljava/lang/Integer;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->order:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ServerPaymentIntent;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->order:Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CreateIntentResponse(intent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->intent:Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/models/CreateIntentResponse;->order:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
