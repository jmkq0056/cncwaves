.class public final Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
.super Lcom/squareup/wire/Message;
.source "CreatePaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;,
        Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 (2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\'(B\u00dd\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\n\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bJ\u00e3\u0001\u0010\u001d\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0096\u0002J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0002H\u0016J\u0008\u0010&\u001a\u00020\u0006H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;",
        "amount",
        "",
        "capture_method",
        "",
        "currency",
        "description",
        "metadata",
        "",
        "payment_method_types",
        "",
        "receipt_email",
        "statement_descriptor",
        "customer",
        "transfer_group",
        "application_fee_amount",
        "on_behalf_of",
        "transfer_data",
        "Lcom/stripe/proto/api/rest/TransferData;",
        "payment_method_options",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
        "statement_descriptor_suffix",
        "setup_future_usage",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
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
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final application_fee_amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "applicationFeeAmount"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final capture_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "captureMethod"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final customer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final on_behalf_of:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "onBehalfOf"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.PaymentMethodOptions#ADAPTER"
        jsonName = "paymentMethodOptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final payment_method_types:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentMethodTypes"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final receipt_email:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "receiptEmail"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final setup_future_usage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "setupFutureUsage"
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final statement_descriptor:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "statementDescriptor"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final statement_descriptor_suffix:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "statementDescriptorSuffix"
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final transfer_data:Lcom/stripe/proto/api/rest/TransferData;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.TransferData#ADAPTER"
        jsonName = "transferData"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final transfer_group:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "transferGroup"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->Companion:Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion;

    .line 526
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 525
    const-class v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 529
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 525
    new-instance v3, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 20

    const v18, 0x1ffff

    const/16 v19, 0x0

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

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v19}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/TransferData;",
            "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p17

    const-string v1, "metadata"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "payment_method_types"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "unknownFields"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v3, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v3, v0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    .line 114
    iput-object p10, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    .line 125
    iput-object p11, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    move-object/from16 p1, p12

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    move-object/from16 p1, p13

    .line 147
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    move-object/from16 p1, p14

    .line 156
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    move-object/from16 p1, p15

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    .line 199
    invoke-static {v1, p5}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    .line 213
    invoke-static {v2, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 77
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    .line 187
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p18, v0

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    :goto_10
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    .line 35
    invoke-direct/range {p1 .. p18}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 308
    iget-object v3, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 309
    iget-object v4, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 310
    iget-object v5, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 311
    iget-object v6, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 312
    iget-object v7, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 313
    iget-object v8, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 314
    iget-object v9, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 315
    iget-object v10, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 316
    iget-object v11, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 317
    iget-object v12, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 318
    iget-object v13, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 319
    iget-object v14, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 320
    iget-object v15, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 321
    iget-object v2, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 322
    iget-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p18, v16

    if-eqz v16, :cond_10

    .line 323
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p18, v16

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    :goto_10
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p17, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    .line 306
    invoke-virtual/range {p1 .. p18}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/TransferData;",
            "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;"
        }
    .end annotation

    const-string v0, "metadata"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_method_types"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    new-instance v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 239
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 244
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 245
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 246
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 247
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 248
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 249
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 250
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 251
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 252
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 253
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 254
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 255
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 256
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 261
    iget v0, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->hashCode:I

    if-nez v0, :cond_e

    .line 263
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 264
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 265
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 266
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 267
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 268
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 269
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 270
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 271
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 272
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 273
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 274
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 275
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 276
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/TransferData;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 277
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 278
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 279
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_d
    add-int/2addr v0, v2

    .line 280
    iput v0, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->hashCode:I

    :cond_e
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->newBuilder()Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 2

    .line 216
    new-instance v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->amount:Ljava/lang/Long;

    .line 218
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->capture_method:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->currency:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->description:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->metadata:Ljava/util/Map;

    .line 222
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    .line 223
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->receipt_email:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->statement_descriptor:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->customer:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->transfer_group:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->application_fee_amount:Ljava/lang/Long;

    .line 228
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->on_behalf_of:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    .line 230
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    .line 231
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->setup_future_usage:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 287
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "capture_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receipt_email="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statement_descriptor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transfer_group="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "application_fee_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "on_behalf_of="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transfer_data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statement_descriptor_suffix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_f
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CreatePaymentIntentRequest{"

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
