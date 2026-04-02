.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;
.super Ljava/lang/Object;
.source "OfflineData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineData.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,182:1\n1477#2:183\n1502#2,3:184\n1505#2,3:194\n1194#2,2:197\n1222#2,4:199\n1549#2:203\n1620#2,2:204\n1054#2:206\n1549#2:207\n1620#2,3:208\n1622#2:211\n1477#2:212\n1502#2,3:213\n1505#2,3:223\n1045#2:229\n1549#2:230\n1620#2,3:231\n372#3,7:187\n372#3,7:216\n125#4:226\n152#4,2:227\n154#4:234\n*S KotlinDebug\n*F\n+ 1 OfflineData.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion\n*L\n72#1:183\n72#1:184,3\n72#1:194,3\n73#1:197,2\n73#1:199,4\n76#1:203\n76#1:204,2\n88#1:206\n91#1:207\n91#1:208,3\n76#1:211\n123#1:212\n123#1:213,3\n123#1:223,3\n125#1:229\n141#1:230\n141#1:231,3\n72#1:187,7\n123#1:216,7\n124#1:226\n124#1:227,2\n124#1:234\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00042\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004J\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u000c\u0010\u0014\u001a\u00020\u0015*\u00020\u0016H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;",
        "",
        "()V",
        "dataFromConnectionsAndReaders",
        "",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataReader;",
        "connectionList",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "readerList",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "locationList",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "dataFromPaymentIntentRequest",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;",
        "data",
        "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
        "protoTypeToSdkType",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "isForwarded",
        "",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "terminalsession_release"
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
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;-><init>()V

    return-void
.end method

.method private final isForwarded(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Z
    .locals 3

    .line 173
    iget-object v0, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 175
    iget-object v0, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private final protoTypeToSdkType(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;
    .locals 3

    .line 157
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 161
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    return-object p1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    return-object p1
.end method


# virtual methods
.method public final dataFromConnectionsAndReaders(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataReader;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "connectionList"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "readerList"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "locationList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    check-cast v0, Ljava/lang/Iterable;

    .line 183
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 185
    move-object v5, v4

    check-cast v5, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 72
    iget-wide v5, v5, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 187
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 186
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 190
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    check-cast v6, Ljava/util/List;

    .line 194
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    const/16 v2, 0xa

    .line 197
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 198
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .line 199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 200
    move-object v6, v4

    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 73
    iget-wide v6, v6, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 200
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 75
    :cond_2
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 204
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 205
    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 79
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_3

    .line 82
    :cond_3
    iget-wide v6, v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_9

    .line 78
    :goto_3
    check-cast v6, Ljava/lang/Iterable;

    .line 206
    new-instance v7, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion$dataFromConnectionsAndReaders$lambda$5$$inlined$sortedByDescending$1;

    invoke-direct {v7}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion$dataFromConnectionsAndReaders$lambda$5$$inlined$sortedByDescending$1;-><init>()V

    check-cast v7, Ljava/util/Comparator;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    .line 91
    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .line 207
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 208
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 209
    check-cast v9, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 92
    iget-wide v10, v9, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 93
    new-instance v11, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineConnection;

    .line 94
    iget-object v12, v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    .line 95
    iget-object v13, v9, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->firmware_version:Ljava/lang/String;

    .line 96
    iget-object v14, v9, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    .line 97
    iget-object v15, v9, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->config_version:Ljava/lang/String;

    .line 98
    new-instance v2, Ljava/util/Date;

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    iget-wide v6, v9, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    const/4 v6, 0x0

    if-eqz v10, :cond_4

    .line 99
    iget-object v7, v10, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v7, :cond_4

    iget-object v7, v7, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    move-object/from16 v17, v7

    goto :goto_5

    :cond_4
    move-object/from16 v17, v6

    :goto_5
    if-eqz v10, :cond_5

    .line 100
    iget-object v7, v10, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/stripe/proto/model/merchant/ApiLocationPb;->display_name:Ljava/lang/String;

    move-object/from16 v18, v7

    goto :goto_6

    :cond_5
    move-object/from16 v18, v6

    :goto_6
    if-eqz v10, :cond_6

    .line 101
    iget-object v7, v10, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v7, :cond_6

    iget-object v6, v7, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    :cond_6
    move-object/from16 v19, v6

    .line 102
    iget-object v6, v9, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    .line 103
    iget-object v7, v9, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 93
    invoke-direct/range {v11 .. v21}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    const/16 v2, 0xa

    goto :goto_4

    :cond_7
    move-object/from16 p2, v6

    .line 210
    check-cast v8, Ljava/util/List;

    .line 106
    new-instance v9, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineReader;

    .line 107
    iget-object v10, v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    .line 108
    iget-object v11, v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    .line 109
    iget-object v12, v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    .line 110
    new-instance v13, Ljava/util/Date;

    iget-wide v6, v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    invoke-direct {v13, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 111
    new-instance v14, Ljava/util/Date;

    iget-wide v6, v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;->created_at:J

    invoke-direct {v14, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 112
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-wide v6, v2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    if-eqz v2, :cond_8

    iget-boolean v2, v2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->offline_enabled:Z

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    move v15, v2

    .line 106
    invoke-direct/range {v9 .. v15}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineReader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Z)V

    .line 90
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataReader;

    invoke-direct {v2, v8, v9}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataReader;-><init>(Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineReader;)V

    .line 205
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa

    goto/16 :goto_2

    .line 83
    :cond_9
    new-instance v0, Ljava/lang/Throwable;

    .line 84
    const-string v1, "failed to combine offline readers and connections, no matching reader id for connection"

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_a
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final dataFromPaymentIntentRequest(Lcom/stripe/offlinemode/models/OfflineRequestsToSync;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Lcom/stripe/offlinemode/models/OfflineRequestsToSync;->component1()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/stripe/offlinemode/models/OfflineRequestsToSync;->component2()Ljava/util/Set;

    move-result-object v1

    .line 122
    check-cast v0, Ljava/lang/Iterable;

    .line 212
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 214
    move-object v4, v3

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 123
    invoke-static {v4}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->entityId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 215
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 219
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 223
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 227
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 125
    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    .line 229
    new-instance v6, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion$dataFromPaymentIntentRequest$lambda$10$$inlined$sortedBy$1;

    invoke-direct {v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion$dataFromPaymentIntentRequest$lambda$10$$inlined$sortedBy$1;-><init>()V

    check-cast v6, Ljava/util/Comparator;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    .line 130
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 131
    iget-object v9, v9, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v9}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    move-result-object v9

    .line 132
    sget-object v10, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    if-ne v9, v10, :cond_2

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 130
    :goto_2
    check-cast v8, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    if-nez v8, :cond_4

    .line 134
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 137
    :cond_4
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    invoke-static {v6}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->entityId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Ljava/lang/String;

    move-result-object v10

    .line 138
    iget-object v6, v8, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :cond_5
    const-wide/16 v6, 0x0

    :goto_3
    move-wide v11, v6

    .line 139
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 140
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v3, v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_6
    const-string v3, ""

    :cond_7
    move-object v13, v3

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 231
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 232
    check-cast v5, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 142
    new-instance v15, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;

    .line 143
    iget-object v6, v5, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    .line 144
    iget-object v7, v5, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    .line 145
    sget-object v8, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;

    iget-object v9, v5, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-direct {v8, v9}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;->protoTypeToSdkType(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    move-result-object v18

    .line 146
    new-instance v8, Ljava/util/Date;

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v5, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 147
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;

    invoke-direct {v1, v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;->isForwarded(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Z

    move-result v20

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    .line 142
    invoke-direct/range {v15 .. v20}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;Ljava/util/Date;Z)V

    .line 232
    invoke-interface {v3, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    goto :goto_4

    :cond_8
    move-object/from16 p1, v1

    move-object/from16 v21, v2

    .line 233
    move-object v15, v3

    check-cast v15, Ljava/util/List;

    .line 136
    new-instance v9, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;

    invoke-direct/range {v9 .. v15}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;-><init>(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)V

    .line 228
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 234
    :cond_9
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
