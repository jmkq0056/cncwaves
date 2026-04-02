.class public final Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;
.super Lcom/squareup/wire/Message;
.source "ConfirmSetupIntentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;,
        Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eBa\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013Jb\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;",
        "request_id",
        "",
        "confirmed_setup_intent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "confirm_error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "offline_behavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
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
            "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final confirm_error:Lcom/stripe/proto/model/sdk/Error;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.Error#ADAPTER"
        jsonName = "confirmError"
        oneofName = "setup_intent_result"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent#ADAPTER"
        jsonName = "confirmedSetupIntent"
        oneofName = "setup_intent_result"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER"
        jsonName = "declineResponse"
        oneofName = "setup_intent_result"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER"
        jsonName = "offlineBehavior"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflineSetupIntentDetails#ADAPTER"
        jsonName = "offlineDetails"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER"
        jsonName = "offlineStats"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final request_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "requestId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->Companion:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Companion;

    .line 270
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 269
    const-class v1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 273
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 269
    new-instance v3, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)V
    .locals 1

    const-string v0, "request_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->request_id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 59
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 71
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 80
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 89
    iput-object p6, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 97
    iput-object p7, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 108
    invoke-static {p2, p3, p4}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of confirmed_setup_intent, decline_response, confirm_error may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 43
    const-string p1, ""

    :cond_0
    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

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

    .line 105
    sget-object p8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 31
    invoke-direct/range {p2 .. p10}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 169
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->request_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 170
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 171
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 172
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 173
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 174
    iget-object p6, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 175
    iget-object p7, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 176
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->unknownFields()Lokio/ByteString;

    move-result-object p8

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 168
    invoke-virtual/range {p2 .. p10}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;
    .locals 10

    const-string v0, "request_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->request_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->request_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 135
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eq v1, v3, :cond_8

    return v2

    .line 136
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    iget v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->hashCode:I

    if-nez v0, :cond_6

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/ErrorWrapper;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/Error;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflineStats;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 149
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    .line 151
    iput v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->hashCode:I

    :cond_6
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->newBuilder()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;
    .locals 2

    .line 114
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->request_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->request_id:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 122
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 158
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->request_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirmed_setup_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decline_response="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirm_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_stats="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_behavior="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_5
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ConfirmSetupIntentResponse{"

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
