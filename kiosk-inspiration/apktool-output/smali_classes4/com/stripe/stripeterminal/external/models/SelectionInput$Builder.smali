.class public final Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;
.super Ljava/lang/Object;
.source "SelectionInput.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/SelectionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionInput.kt\ncom/stripe/stripeterminal/external/models/SelectionInput$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\u001c\u001a\u00020\u00002\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u0010\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003J\u0014\u0010\u001e\u001a\u00020\u00002\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\rR\"\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR*\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R*\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\r2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00150\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;",
        "",
        "title",
        "",
        "(Ljava/lang/String;)V",
        "<set-?>",
        "description",
        "getDescription",
        "()Ljava/lang/String;",
        "",
        "required",
        "getRequired",
        "()Z",
        "",
        "Lcom/stripe/stripeterminal/external/models/SelectionButton;",
        "selectionButtons",
        "getSelectionButtons",
        "()Ljava/util/List;",
        "skipButtonText",
        "getSkipButtonText",
        "getTitle",
        "Lcom/stripe/stripeterminal/external/models/Toggle;",
        "toggles",
        "getToggles",
        "build",
        "Lcom/stripe/stripeterminal/external/models/SelectionInput;",
        "setDescription",
        "setRequired",
        "setSelectionButtons",
        "setSkipButtonText",
        "setToggles",
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
.field private description:Ljava/lang/String;

.field private required:Z

.field private selectionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/SelectionButton;",
            ">;"
        }
    .end annotation
.end field

.field private skipButtonText:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private toggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Toggle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->title:Ljava/lang/String;

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->selectionButtons:Ljava/util/List;

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->toggles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/SelectionInput;
    .locals 8

    .line 67
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SelectionInput;

    .line 68
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->required:Z

    .line 69
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->selectionButtons:Ljava/util/List;

    .line 70
    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->title:Ljava/lang/String;

    .line 71
    iget-object v4, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->description:Ljava/lang/String;

    .line 72
    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->skipButtonText:Ljava/lang/String;

    .line 73
    iget-object v6, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->toggles:Ljava/util/List;

    const/4 v7, 0x0

    .line 67
    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/external/models/SelectionInput;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequired()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->required:Z

    return v0
.end method

.method public final getSelectionButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/SelectionButton;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->selectionButtons:Ljava/util/List;

    return-object v0
.end method

.method public final getSkipButtonText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->skipButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getToggles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Toggle;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->toggles:Ljava/util/List;

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;
    .locals 1

    .line 53
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setRequired(Z)Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;
    .locals 1

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;

    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->required:Z

    return-object p0
.end method

.method public final setSelectionButtons(Ljava/util/List;)Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/SelectionButton;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;"
        }
    .end annotation

    const-string v0, "selectionButtons"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->selectionButtons:Ljava/util/List;

    return-object p0
.end method

.method public final setSkipButtonText(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;
    .locals 1

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->skipButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public final setToggles(Ljava/util/List;)Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Toggle;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;"
        }
    .end annotation

    const-string v0, "toggles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;

    .line 64
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;->toggles:Ljava/util/List;

    return-object p0
.end method
