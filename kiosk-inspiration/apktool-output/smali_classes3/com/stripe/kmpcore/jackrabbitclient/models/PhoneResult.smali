.class public final Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;
.super Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;
.source "KmpCollectInputsModels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J/\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;",
        "skipped",
        "",
        "phone",
        "",
        "toggles",
        "",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
        "(ZLjava/lang/String;Ljava/util/List;)V",
        "getPhone$annotations",
        "()V",
        "getPhone",
        "()Ljava/lang/String;",
        "getSkipped",
        "()Z",
        "getToggles",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final phone:Ljava/lang/String;

.field private final skipped:Z

.field private final toggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toggles"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sget-object v9, Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;->PHONE:Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;

    const/16 v10, 0xf4

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v2, p3

    .line 224
    invoke-direct/range {v0 .. v11}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 220
    iput-boolean p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->skipped:Z

    .line 221
    iput-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->phone:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->toggles:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 223
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 219
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;ZLjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->skipped:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->phone:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->toggles:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->copy(ZLjava/lang/String;Ljava/util/List;)Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPhone$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->skipped:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->toggles:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/util/List;)Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
            ">;)",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;"
        }
    .end annotation

    const-string v0, "toggles"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;

    iget-boolean v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->skipped:Z

    iget-boolean v3, p1, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->skipped:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->phone:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->phone:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->toggles:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->toggles:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipped()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->skipped:Z

    return v0
.end method

.method public getToggles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->toggles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->skipped:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->phone:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->toggles:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoneResult(skipped="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->skipped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone=\u2588\u2588, toggles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;->toggles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
