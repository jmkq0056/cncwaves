.class public final Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;
.super Ljava/lang/Object;
.source "DefaultSetupIntentRestApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSetupIntentRestApiFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSetupIntentRestApiFactory.kt\ncom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n1549#2:34\n1620#2,3:35\n*S KotlinDebug\n*F\n+ 1 DefaultSetupIntentRestApiFactory.kt\ncom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory\n*L\n27#1:34\n27#1:35,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
        "()V",
        "cancelSetupIntent",
        "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;",
        "id",
        "",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "createSetupIntent",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "terminal-requestfactories"
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;

    .line 13
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;->getReason()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;->ordinal()I

    move-result p2

    aget p2, v2, p2

    :goto_0
    if-eq p2, v0, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 16
    sget-object p2, Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;->abandoned:Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 15
    :cond_2
    sget-object p2, Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;->requested_by_customer:Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;

    goto :goto_1

    .line 14
    :cond_3
    sget-object p2, Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;->duplicate:Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    move-object v3, p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
    .locals 17

    const-string v0, "params"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->getCustomer()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->getMetadata()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 27
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 27
    invoke-virtual {v6}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 28
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->getUsage()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->getOnBehalfOf()Ljava/lang/String;

    move-result-object v10

    .line 23
    new-instance v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1e91

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
