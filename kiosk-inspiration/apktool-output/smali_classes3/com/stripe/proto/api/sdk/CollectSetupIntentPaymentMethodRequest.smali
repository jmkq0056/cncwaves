.class public final Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;
.super Lcom/squareup/wire/Message;
.source "CollectSetupIntentPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;,
        Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB]\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J^\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u0004H\u0016R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;",
        "setup_intent_id",
        "",
        "manual_entry",
        "",
        "enable_customer_cancellation",
        "offline_behavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "setup_intent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "allow_redisplay",
        "Lcom/stripe/proto/model/rest/AllowRedisplay;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.AllowRedisplay#ADAPTER"
        jsonName = "allowRedisplay"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final enable_customer_cancellation:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableCustomerCancellation"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final manual_entry:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "manualEntry"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER"
        jsonName = "offlineBehavior"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflineSetupIntentDetails#ADAPTER"
        jsonName = "offlineDetails"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent#ADAPTER"
        jsonName = "setupIntent"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final setup_intent_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "setupIntentId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->Companion:Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Companion;

    .line 246
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 245
    const-class v1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 249
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 245
    new-instance v3, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;-><init>(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V
    .locals 1

    const-string v0, "setup_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent_id:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->manual_entry:Z

    .line 55
    iput-boolean p3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->enable_customer_cancellation:Z

    .line 64
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 72
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 83
    iput-object p6, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 91
    iput-object p7, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 42
    const-string p1, ""

    :cond_0
    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    const/4 v0, 0x0

    if-eqz p10, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 99
    sget-object p8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    .line 33
    invoke-direct/range {p2 .. p10}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;-><init>(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 157
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 158
    iget-boolean p2, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->manual_entry:Z

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 159
    iget-boolean p3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->enable_customer_cancellation:Z

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 160
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 161
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 162
    iget-object p6, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 163
    iget-object p7, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object p8

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    .line 156
    invoke-virtual/range {p2 .. p10}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->copy(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;
    .locals 10

    const-string v0, "setup_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;-><init>(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 116
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 119
    :cond_3
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->manual_entry:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->manual_entry:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 120
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->enable_customer_cancellation:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->enable_customer_cancellation:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eq v1, v3, :cond_6

    return v2

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 123
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 124
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 129
    iget v0, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->hashCode:I

    if-nez v0, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 133
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->manual_entry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 134
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->enable_customer_cancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 136
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 137
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/AllowRedisplay;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 139
    iput v0, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->newBuilder()Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;
    .locals 2

    .line 102
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->setup_intent_id:Ljava/lang/String;

    .line 104
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->manual_entry:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->manual_entry:Z

    .line 105
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->enable_customer_cancellation:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->enable_customer_cancellation:Z

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 108
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 146
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_intent_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "manual_entry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->manual_entry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->enable_customer_cancellation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_behavior="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_redisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CollectSetupIntentPaymentMethodRequest{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
