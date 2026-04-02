.class public final Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;
.super Lcom/squareup/wire/Message;
.source "ConfirmPaymentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;,
        Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 *2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002)*B\u0091\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bJ\u0092\u0001\u0010 \u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0096\u0002J\u0008\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\u0002H\u0016J\u0008\u0010(\u001a\u00020\u0006H\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001e\u0010\u001dR\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001f\u0010\u001d\u00a8\u0006+"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "request_id",
        "",
        "confirmed_payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "confirm_error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "processed_charge",
        "Lcom/stripe/proto/model/sdk/ProcessedCharge;",
        "declined_charge",
        "Lcom/stripe/proto/model/sdk/DeclinedCharge;",
        "options",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "offline_behavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)V",
        "getDeclined_charge$annotations",
        "()V",
        "getProcessed_charge$annotations",
        "getSystem_context$annotations",
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
            "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final confirm_error:Lcom/stripe/proto/model/sdk/Error;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.Error#ADAPTER"
        jsonName = "confirmError"
        oneofName = "payment_result"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER"
        jsonName = "confirmedPaymentIntent"
        oneofName = "payment_result"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER"
        jsonName = "declineResponse"
        oneofName = "payment_result"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.DeclinedCharge#ADAPTER"
        jsonName = "declinedCharge"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER"
        jsonName = "offlineBehavior"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER"
        jsonName = "offlineDetails"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER"
        jsonName = "offlineStats"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.ConfirmPaymentOptions#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.ProcessedCharge#ADAPTER"
        jsonName = "processedCharge"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final request_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "requestId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final system_context:Lcom/stripe/proto/model/sdk/SystemContext;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER"
        jsonName = "systemContext"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->Companion:Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion;

    .line 389
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 388
    const-class v1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 392
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 388
    new-instance v3, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)V
    .locals 1

    const-string v0, "request_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 52
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 76
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 88
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 100
    iput-object p6, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    .line 113
    iput-object p7, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    .line 123
    iput-object p8, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    .line 131
    iput-object p9, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 139
    iput-object p10, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 148
    iput-object p11, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 159
    invoke-static {p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of confirmed_payment_intent, decline_response, confirm_error may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x1

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 60
    const-string p2, ""

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    move-object p11, v0

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 156
    sget-object p12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_b
    move-object p13, p12

    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 35
    invoke-direct/range {p1 .. p13}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 236
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 237
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    .line 238
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    .line 239
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    .line 240
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    .line 241
    iget-object p6, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    .line 242
    iget-object p7, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    .line 243
    iget-object p8, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    .line 244
    iget-object p9, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    .line 245
    iget-object p10, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    .line 246
    iget-object p11, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 247
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->unknownFields()Lokio/ByteString;

    move-result-object p12

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 235
    invoke-virtual/range {p2 .. p14}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->copy(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDeclined_charge$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "declined_charge is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getProcessed_charge$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "processed_charge is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getSystem_context$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;
    .locals 14

    const-string v0, "request_id"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 183
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 188
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 189
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 191
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 192
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 193
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 194
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 195
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 200
    iget v0, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->hashCode:I

    if-nez v0, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/SystemContext;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/ErrorWrapper;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/Error;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 208
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/ProcessedCharge;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 209
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/DeclinedCharge;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 210
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 212
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflineStats;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 213
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->hashCode()I

    move-result v2

    :cond_9
    add-int/2addr v0, v2

    .line 214
    iput v0, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->hashCode:I

    :cond_a
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->newBuilder()Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 2

    .line 165
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->request_id:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 176
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 177
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 221
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirmed_payment_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decline_response="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirm_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processed_charge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "declined_charge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_6
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_stats="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_8
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_behavior="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_9
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ConfirmPaymentResponse{"

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
