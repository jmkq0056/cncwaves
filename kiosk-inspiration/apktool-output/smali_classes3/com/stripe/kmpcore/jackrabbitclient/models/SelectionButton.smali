.class public final Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;
.super Ljava/lang/Object;
.source "KmpCollectInputsModels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;",
        "",
        "style",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;",
        "text",
        "",
        "(Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;Ljava/lang/String;)V",
        "getStyle",
        "()Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;",
        "getText",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
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
.field private final style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    .line 102
    iput-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->text:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->text:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->copy(Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;Ljava/lang/String;)Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;
    .locals 1

    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;Ljava/lang/String;)Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;
    .locals 1

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;

    invoke-direct {v0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    iget-object v3, p1, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->text:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getStyle()Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    invoke-virtual {v0}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SelectionButton(style="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->style:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
