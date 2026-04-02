.class public final Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;
.super Ljava/lang/Object;
.source "KmpCollectInputsRequestTransformer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKmpCollectInputsRequestTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KmpCollectInputsRequestTransformer.kt\ncom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1549#2:89\n1620#2,2:90\n1549#2:92\n1620#2,3:93\n1549#2:96\n1620#2,3:97\n1622#2:100\n*S KotlinDebug\n*F\n+ 1 KmpCollectInputsRequestTransformer.kt\ncom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer\n*L\n38#1:89\n38#1:90,2\n49#1:92\n49#1:93,3\n73#1:96\n73#1:97,3\n38#1:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;",
        "",
        "()V",
        "transform",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest;",
        "params",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
        "jackrabbitclient_release"
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/proto/api/sdk/CollectInputsRequest;
    .locals 19

    const-string v0, "params"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;->getInputs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 91
    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;

    .line 40
    new-instance v6, Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;

    .line 41
    invoke-static {v3}, Lcom/stripe/kmpcore/jackrabbitclient/extensions/CollectInputsExtensionsKt;->getTitle(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-static {v3}, Lcom/stripe/kmpcore/jackrabbitclient/extensions/CollectInputsExtensionsKt;->getDescription(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-static {v3}, Lcom/stripe/kmpcore/jackrabbitclient/extensions/CollectInputsExtensionsKt;->getSubmitButton(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/lang/String;

    move-result-object v9

    .line 44
    invoke-static {v3}, Lcom/stripe/kmpcore/jackrabbitclient/extensions/CollectInputsExtensionsKt;->getSkipButton(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 40
    invoke-direct/range {v6 .. v13}, Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    invoke-virtual {v3}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getRequired()Z

    move-result v8

    .line 48
    instance-of v7, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    .line 49
    invoke-virtual {v3}, Lcom/stripe/kmpcore/jackrabbitclient/models/Input;->getSelectionButtons()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .line 92
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    .line 93
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 94
    check-cast v12, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;

    .line 50
    new-instance v13, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice;

    .line 51
    invoke-virtual {v12}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->getStyle()Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;

    move-result-object v14

    sget-object v15, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v14}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;->ordinal()I

    move-result v14

    aget v14, v15, v14

    if-eq v14, v9, :cond_1

    if-ne v14, v4, :cond_0

    .line 53
    sget-object v14, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;->SECONDARY:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;

    goto :goto_2

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 52
    :cond_1
    sget-object v14, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;->PRIMARY:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;

    .line 55
    :goto_2
    invoke-virtual {v12}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;->getText()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    .line 50
    invoke-direct/range {v13 .. v18}, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice;-><init>(Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_2
    check-cast v11, Ljava/util/List;

    .line 48
    new-instance v10, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;

    invoke-direct {v10, v11, v5, v4, v5}, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;-><init>(Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v10

    goto :goto_7

    .line 59
    :cond_3
    instance-of v10, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;

    if-eqz v10, :cond_4

    move v10, v9

    goto :goto_3

    .line 60
    :cond_4
    instance-of v10, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;

    :goto_3
    if-eqz v10, :cond_5

    move v10, v9

    goto :goto_4

    .line 61
    :cond_5
    instance-of v10, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;

    :goto_4
    if-eqz v10, :cond_6

    move v10, v9

    goto :goto_5

    .line 62
    :cond_6
    instance-of v10, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;

    :goto_5
    if-eqz v10, :cond_7

    move v10, v9

    goto :goto_6

    .line 63
    :cond_7
    instance-of v10, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;

    :goto_6
    if-eqz v10, :cond_11

    :goto_7
    if-eqz v7, :cond_8

    .line 66
    sget-object v7, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;->SELECTION:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    :goto_8
    move-object v10, v7

    goto :goto_9

    .line 67
    :cond_8
    instance-of v7, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;

    if-eqz v7, :cond_9

    sget-object v7, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;->SIGNATURE:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    goto :goto_8

    .line 68
    :cond_9
    instance-of v7, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;

    if-eqz v7, :cond_a

    sget-object v7, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;->EMAIL:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    goto :goto_8

    .line 69
    :cond_a
    instance-of v7, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;

    if-eqz v7, :cond_b

    sget-object v7, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;->TEXT:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    goto :goto_8

    .line 70
    :cond_b
    instance-of v7, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;

    if-eqz v7, :cond_c

    sget-object v7, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;->NUMERIC:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    goto :goto_8

    .line 71
    :cond_c
    instance-of v7, v3, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;

    if-eqz v7, :cond_10

    sget-object v7, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;->PHONE:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    goto :goto_8

    .line 73
    :goto_9
    invoke-static {v3}, Lcom/stripe/kmpcore/jackrabbitclient/extensions/CollectInputsExtensionsKt;->getToggles(Lcom/stripe/kmpcore/jackrabbitclient/models/Input;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 96
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 97
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 98
    check-cast v11, Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;

    .line 74
    new-instance v12, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;

    .line 75
    invoke-static {v11}, Lcom/stripe/kmpcore/jackrabbitclient/extensions/CollectInputsExtensionsKt;->getTitle(Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;)Ljava/lang/String;

    move-result-object v13

    .line 76
    invoke-static {v11}, Lcom/stripe/kmpcore/jackrabbitclient/extensions/CollectInputsExtensionsKt;->getDescription(Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;)Ljava/lang/String;

    move-result-object v14

    .line 77
    invoke-virtual {v11}, Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;->getDefaultValue()Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;

    move-result-object v11

    sget-object v15, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v11}, Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;->ordinal()I

    move-result v11

    aget v11, v15, v11

    if-eq v11, v9, :cond_e

    if-ne v11, v4, :cond_d

    .line 79
    sget-object v11, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;->DISABLED:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;

    goto :goto_b

    :cond_d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 78
    :cond_e
    sget-object v11, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;->ENABLED:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;

    :goto_b
    move-object v15, v11

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v16, 0x0

    .line 74
    invoke-direct/range {v12 .. v18}, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 99
    :cond_f
    move-object v11, v7

    check-cast v11, Ljava/util/List;

    move-object v7, v6

    .line 39
    new-instance v6, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;

    const/4 v12, 0x0

    const/16 v13, 0x20

    const/4 v14, 0x0

    move-object v9, v5

    invoke-direct/range {v6 .. v14}, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;-><init>(Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;ZLcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 71
    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 63
    :cond_11
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 100
    :cond_12
    check-cast v1, Ljava/util/List;

    .line 37
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectInputsRequest;

    invoke-direct {v0, v1, v5, v4, v5}, Lcom/stripe/proto/api/sdk/CollectInputsRequest;-><init>(Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
