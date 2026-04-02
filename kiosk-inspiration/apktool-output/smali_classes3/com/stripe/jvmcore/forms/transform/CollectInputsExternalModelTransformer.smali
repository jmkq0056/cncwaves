.class public final Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;
.super Ljava/lang/Object;
.source "CollectInputsExternalModelTransformer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectInputsExternalModelTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectInputsExternalModelTransformer.kt\ncom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1549#2:79\n1620#2,3:80\n1549#2:83\n1620#2,3:84\n*S KotlinDebug\n*F\n+ 1 CollectInputsExternalModelTransformer.kt\ncom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer\n*L\n32#1:79\n32#1:80,3\n69#1:83\n69#1:84,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J \u0010\u0008\u001a\u000c\u0012\u0008\u0012\u00060\tj\u0002`\n0\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0004H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
        "",
        "()V",
        "transform",
        "",
        "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;",
        "kmpCollectInputsResultSuccess",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultSuccess;",
        "transformToggles",
        "Lcom/stripe/stripeterminal/external/models/ToggleResult;",
        "Lcom/stripe/jvmcore/forms/transform/ExternalToggleResult;",
        "toggles",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final transformToggles(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/ToggleResult;",
            ">;"
        }
    .end annotation

    .line 69
    check-cast p1, Ljava/lang/Iterable;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 85
    check-cast v1, Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;

    .line 70
    sget-object v2, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 73
    sget-object v1, Lcom/stripe/stripeterminal/external/models/ToggleResult;->SKIPPED:Lcom/stripe/stripeterminal/external/models/ToggleResult;

    goto :goto_1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 72
    :cond_1
    sget-object v1, Lcom/stripe/stripeterminal/external/models/ToggleResult;->DISABLED:Lcom/stripe/stripeterminal/external/models/ToggleResult;

    goto :goto_1

    .line 71
    :cond_2
    sget-object v1, Lcom/stripe/stripeterminal/external/models/ToggleResult;->ENABLED:Lcom/stripe/stripeterminal/external/models/ToggleResult;

    .line 85
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final transform(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultSuccess;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultSuccess;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;",
            ">;"
        }
    .end annotation

    const-string v0, "kmpCollectInputsResultSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultSuccess;->getResults()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 81
    check-cast v1, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;

    .line 34
    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailResult;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/stripe/stripeterminal/external/models/EmailResult;

    .line 35
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getSkipped()Z

    move-result v3

    .line 36
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-direct {v2, v3, v4, v1}, Lcom/stripe/stripeterminal/external/models/EmailResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/models/CollectInputsResult;

    goto/16 :goto_1

    .line 39
    :cond_0
    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericResult;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/stripe/stripeterminal/external/models/NumericResult;

    .line 40
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getSkipped()Z

    move-result v3

    .line 41
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getNumericString()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-direct {v2, v3, v4, v1}, Lcom/stripe/stripeterminal/external/models/NumericResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/models/CollectInputsResult;

    goto :goto_1

    .line 44
    :cond_1
    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/stripe/stripeterminal/external/models/PhoneResult;

    .line 45
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getSkipped()Z

    move-result v3

    .line 46
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getPhone()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 44
    invoke-direct {v2, v3, v4, v1}, Lcom/stripe/stripeterminal/external/models/PhoneResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/models/CollectInputsResult;

    goto :goto_1

    .line 49
    :cond_2
    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionResult;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/stripe/stripeterminal/external/models/SelectionResult;

    .line 50
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getSkipped()Z

    move-result v3

    .line 51
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-direct {v2, v3, v4, v1}, Lcom/stripe/stripeterminal/external/models/SelectionResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/models/CollectInputsResult;

    goto :goto_1

    .line 54
    :cond_3
    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureResult;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/stripe/stripeterminal/external/models/SignatureResult;

    .line 55
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getSkipped()Z

    move-result v3

    .line 56
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getSignatureSvg()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 54
    invoke-direct {v2, v3, v4, v1}, Lcom/stripe/stripeterminal/external/models/SignatureResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/models/CollectInputsResult;

    goto :goto_1

    .line 59
    :cond_4
    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/models/TextResult;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/stripe/stripeterminal/external/models/TextResult;

    .line 60
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getSkipped()Z

    move-result v3

    .line 61
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getText()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 59
    invoke-direct {v2, v3, v4, v1}, Lcom/stripe/stripeterminal/external/models/TextResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/models/CollectInputsResult;

    .line 81
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 82
    :cond_6
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
