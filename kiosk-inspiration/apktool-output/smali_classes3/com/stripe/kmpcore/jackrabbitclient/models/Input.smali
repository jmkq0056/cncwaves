.class public abstract Lcom/stripe/kmpcore/jackrabbitclient/models/Input;
.super Ljava/lang/Object;
.source "KmpCollectInputsModels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001B]\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\t\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\u0082\u0001\u0006\u001d\u001e\u001f !\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;",
        "",
        "required",
        "",
        "title",
        "",
        "description",
        "skipButtonText",
        "toggles",
        "",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;",
        "submitButtonText",
        "selectionButtons",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;",
        "formType",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "getFormType",
        "()Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;",
        "getRequired",
        "()Z",
        "getSelectionButtons",
        "()Ljava/util/List;",
        "getSkipButtonText",
        "getSubmitButtonText",
        "getTitle",
        "getToggles",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;",
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
.field private final description:Ljava/lang/String;

.field private final formType:Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;

.field private final required:Z

.field private final selectionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final skipButtonText:Ljava/lang/String;

.field private final submitButtonText:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final toggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;",
            ">;",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->required:Z

    .line 27
    iput-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->title:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->description:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->skipButtonText:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->toggles:Ljava/util/List;

    .line 31
    iput-object p6, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->submitButtonText:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->selectionButtons:Ljava/util/List;

    .line 33
    iput-object p8, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->formType:Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    .line 25
    invoke-direct/range {v1 .. v10}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormType()Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->formType:Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;

    return-object v0
.end method

.method public getRequired()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->required:Z

    return v0
.end method

.method public getSelectionButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->selectionButtons:Ljava/util/List;

    return-object v0
.end method

.method public getSkipButtonText()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->skipButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitButtonText()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->submitButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToggles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->toggles:Ljava/util/List;

    return-object v0
.end method
