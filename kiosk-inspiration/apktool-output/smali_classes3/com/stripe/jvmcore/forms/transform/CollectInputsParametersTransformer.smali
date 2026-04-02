.class public final Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;
.super Ljava/lang/Object;
.source "CollectInputsParametersTransformer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectInputsParametersTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectInputsParametersTransformer.kt\ncom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n1549#2:133\n1620#2,3:134\n1549#2:137\n1620#2,3:138\n1549#2:141\n1620#2,3:142\n*S KotlinDebug\n*F\n+ 1 CollectInputsParametersTransformer.kt\ncom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer\n*L\n45#1:133\n45#1:134,3\n100#1:137\n100#1:138,3\n116#1:141\n116#1:142,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0010\u0010\n\u001a\u000c\u0012\u0008\u0012\u00060\u000bj\u0002`\u000c0\u0008H\u0002J \u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00082\u0010\u0010\u000f\u001a\u000c\u0012\u0008\u0012\u00060\u0010j\u0002`\u00110\u0008H\u0002J\u0014\u0010\u0012\u001a\u00020\u00132\n\u0010\u0014\u001a\u00060\u0015j\u0002`\u0016H\u0002J\u0014\u0010\u0017\u001a\u00020\u00182\n\u0010\u0019\u001a\u00060\u001aj\u0002`\u001bH\u0002J \u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00082\u0010\u0010\u001e\u001a\u000c\u0012\u0008\u0012\u00060\u001fj\u0002` 0\u0008H\u0002\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
        "",
        "()V",
        "transform",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
        "collectInputsParameters",
        "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;",
        "transformInputs",
        "",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;",
        "inputs",
        "Lcom/stripe/stripeterminal/external/models/Input;",
        "Lcom/stripe/jvmcore/forms/transform/ExternalInput;",
        "transformSelectionButton",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;",
        "selectionButtons",
        "Lcom/stripe/stripeterminal/external/models/SelectionButton;",
        "Lcom/stripe/jvmcore/forms/transform/ExternalSelectionButton;",
        "transformSelectionButtonStyle",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;",
        "style",
        "Lcom/stripe/stripeterminal/external/models/SelectionButtonStyle;",
        "Lcom/stripe/jvmcore/forms/transform/ExternalSelectionButtonStyle;",
        "transformToggleValue",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;",
        "toggleValue",
        "Lcom/stripe/stripeterminal/external/models/ToggleValue;",
        "Lcom/stripe/jvmcore/forms/transform/ExternalToggleValue;",
        "transformToggles",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;",
        "toggles",
        "Lcom/stripe/stripeterminal/external/models/Toggle;",
        "Lcom/stripe/jvmcore/forms/transform/ExternalToggle;",
        "forms"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final transformInputs(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/Input;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;",
            ">;"
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/lang/Iterable;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 134
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 135
    check-cast v1, Lcom/stripe/stripeterminal/external/models/Input;

    .line 47
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/EmailInput;

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v1}, Lcom/stripe/stripeterminal/external/models/Input;->getRequired()Z

    move-result v4

    .line 49
    check-cast v1, Lcom/stripe/stripeterminal/external/models/EmailInput;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/EmailInput;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/EmailInput;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/EmailInput;->getSubmitButtonText()Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/EmailInput;->getSkipButtonText()Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/EmailInput;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 47
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;

    invoke-direct/range {v3 .. v9}, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;

    goto/16 :goto_1

    .line 55
    :cond_0
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/NumericInput;

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v1}, Lcom/stripe/stripeterminal/external/models/Input;->getRequired()Z

    move-result v4

    .line 57
    check-cast v1, Lcom/stripe/stripeterminal/external/models/NumericInput;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/NumericInput;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/NumericInput;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/NumericInput;->getSubmitButtonText()Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/NumericInput;->getSkipButtonText()Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/NumericInput;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 55
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;

    invoke-direct/range {v3 .. v9}, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;

    goto/16 :goto_1

    .line 63
    :cond_1
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/PhoneInput;

    if-eqz v2, :cond_2

    .line 64
    invoke-interface {v1}, Lcom/stripe/stripeterminal/external/models/Input;->getRequired()Z

    move-result v4

    .line 65
    check-cast v1, Lcom/stripe/stripeterminal/external/models/PhoneInput;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PhoneInput;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PhoneInput;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PhoneInput;->getSubmitButtonText()Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PhoneInput;->getSkipButtonText()Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PhoneInput;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 63
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;

    invoke-direct/range {v3 .. v9}, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;

    goto/16 :goto_1

    .line 71
    :cond_2
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/SelectionInput;

    if-eqz v2, :cond_3

    .line 72
    invoke-interface {v1}, Lcom/stripe/stripeterminal/external/models/Input;->getRequired()Z

    move-result v4

    .line 73
    check-cast v1, Lcom/stripe/stripeterminal/external/models/SelectionInput;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SelectionInput;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SelectionInput;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SelectionInput;->getSkipButtonText()Ljava/lang/String;

    move-result-object v8

    .line 76
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SelectionInput;->getToggles()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 77
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SelectionInput;->getSelectionButtons()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformSelectionButton(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 71
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;

    invoke-direct/range {v3 .. v9}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;

    goto :goto_1

    .line 79
    :cond_3
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/SignatureInput;

    if-eqz v2, :cond_4

    .line 80
    invoke-interface {v1}, Lcom/stripe/stripeterminal/external/models/Input;->getRequired()Z

    move-result v4

    .line 81
    check-cast v1, Lcom/stripe/stripeterminal/external/models/SignatureInput;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SignatureInput;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SignatureInput;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SignatureInput;->getSubmitButtonText()Ljava/lang/String;

    move-result-object v8

    .line 84
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SignatureInput;->getSkipButtonText()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SignatureInput;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 79
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;

    invoke-direct/range {v3 .. v9}, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;

    goto :goto_1

    .line 87
    :cond_4
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/TextInput;

    if-eqz v2, :cond_5

    .line 88
    invoke-interface {v1}, Lcom/stripe/stripeterminal/external/models/Input;->getRequired()Z

    move-result v4

    .line 89
    check-cast v1, Lcom/stripe/stripeterminal/external/models/TextInput;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TextInput;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TextInput;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TextInput;->getSubmitButtonText()Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TextInput;->getSkipButtonText()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TextInput;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 87
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;

    invoke-direct/range {v3 .. v9}, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;

    .line 135
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 136
    :cond_6
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final transformSelectionButton(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/SelectionButton;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;",
            ">;"
        }
    .end annotation

    .line 100
    check-cast p1, Ljava/lang/Iterable;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 138
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 139
    check-cast v1, Lcom/stripe/stripeterminal/external/models/SelectionButton;

    .line 101
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;

    .line 102
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SelectionButton;->getStyle()Lcom/stripe/stripeterminal/external/models/SelectionButtonStyle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformSelectionButtonStyle(Lcom/stripe/stripeterminal/external/models/SelectionButtonStyle;)Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    move-result-object v3

    .line 103
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SelectionButton;->getText()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-direct {v2, v3, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;Ljava/lang/String;)V

    .line 139
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final transformSelectionButtonStyle(Lcom/stripe/stripeterminal/external/models/SelectionButtonStyle;)Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;
    .locals 1

    .line 109
    sget-object v0, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SelectionButtonStyle;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 111
    sget-object p1, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;->SECONDARY:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 110
    :cond_1
    sget-object p1, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;->PRIMARY:Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    return-object p1
.end method

.method private final transformToggleValue(Lcom/stripe/stripeterminal/external/models/ToggleValue;)Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;
    .locals 1

    .line 126
    sget-object v0, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ToggleValue;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 128
    sget-object p1, Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;->DISABLED:Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 127
    :cond_1
    sget-object p1, Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;->ENABLED:Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;

    return-object p1
.end method

.method private final transformToggles(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Toggle;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;",
            ">;"
        }
    .end annotation

    .line 116
    check-cast p1, Ljava/lang/Iterable;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 142
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    check-cast v1, Lcom/stripe/stripeterminal/external/models/Toggle;

    .line 117
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;

    .line 118
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Toggle;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Toggle;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Toggle;->getDefaultValue()Lcom/stripe/stripeterminal/external/models/ToggleValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformToggleValue(Lcom/stripe/stripeterminal/external/models/ToggleValue;)Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;

    move-result-object v1

    .line 117
    invoke-direct {v2, v3, v4, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;)V

    .line 143
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final transform(Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;
    .locals 1

    const-string v0, "collectInputsParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;

    .line 40
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;->getInputs()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;->transformInputs(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;-><init>(Ljava/util/List;)V

    return-object v0
.end method
