.class public final Lcom/stripe/proto/model/rest/Charge;
.super Lcom/squareup/wire/Message;
.source "Charge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/Charge$Builder;,
        Lcom/stripe/proto/model/rest/Charge$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/Charge;",
        "Lcom/stripe/proto/model/rest/Charge$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 72\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000267B\u00e9\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\'\u00a2\u0006\u0002\u0010(J\u00ef\u0002\u0010-\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010&\u001a\u00020\'\u00a2\u0006\u0002\u0010.J\u0013\u0010/\u001a\u00020\t2\u0008\u00100\u001a\u0004\u0018\u000101H\u0096\u0002J\u0008\u00102\u001a\u000203H\u0016J\u0008\u00104\u001a\u00020\u0002H\u0016J\u0008\u00105\u001a\u00020\u0004H\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010)R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010)R\u0014\u0010 \u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010)R\u0012\u0010%\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010*R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010)R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010*R\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010*R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010*R\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008+\u0010,R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Charge;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/Charge$Builder;",
        "id",
        "",
        "amount",
        "",
        "amount_refunded",
        "captured",
        "",
        "refunded",
        "created",
        "currency",
        "description",
        "statement_descriptor",
        "receipt_email",
        "failure_code",
        "failure_message",
        "livemode",
        "metadata",
        "",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
        "payment_intent",
        "status",
        "payment_method",
        "payment_method_details",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
        "paid",
        "receipt_url",
        "refunds",
        "Lcom/stripe/proto/model/rest/Refunds;",
        "application_fee_amount",
        "balance_transaction",
        "receipt_number",
        "statement_descriptor_suffix",
        "calculated_statement_descriptor",
        "authorization_code",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "getSource$annotations",
        "()V",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Charge;",
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
            "Lcom/stripe/proto/model/rest/Charge;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/Charge$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final amount_refunded:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountRefunded"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final application_fee_amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "applicationFeeAmount"
        schemaIndex = 0x16
        tag = 0x18
    .end annotation
.end field

.field public final authorization_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "authorizationCode"
        schemaIndex = 0x1b
        tag = 0x1d
    .end annotation
.end field

.field public final balance_transaction:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "balanceTransaction"
        schemaIndex = 0x17
        tag = 0x19
    .end annotation
.end field

.field public final calculated_statement_descriptor:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "calculatedStatementDescriptor"
        schemaIndex = 0x1a
        tag = 0x1c
    .end annotation
.end field

.field public final captured:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final created:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        schemaIndex = 0x5
        tag = 0x7
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x6
        tag = 0x8
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x7
        tag = 0x9
    .end annotation
.end field

.field public final failure_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "failureCode"
        schemaIndex = 0xa
        tag = 0xc
    .end annotation
.end field

.field public final failure_message:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "failureMessage"
        schemaIndex = 0xb
        tag = 0xd
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0xc
        tag = 0xe
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0xd
        tag = 0xf
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

.field public final paid:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x13
        tag = 0x15
    .end annotation
.end field

.field public final payment_intent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentIntent"
        schemaIndex = 0xf
        tag = 0x11
    .end annotation
.end field

.field public final payment_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentMethod"
        schemaIndex = 0x11
        tag = 0x13
    .end annotation
.end field

.field public final payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentMethodDetails#ADAPTER"
        jsonName = "paymentMethodDetails"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x14
    .end annotation
.end field

.field public final receipt_email:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "receiptEmail"
        schemaIndex = 0x9
        tag = 0xb
    .end annotation
.end field

.field public final receipt_number:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "receiptNumber"
        schemaIndex = 0x18
        tag = 0x1a
    .end annotation
.end field

.field public final receipt_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "receiptUrl"
        schemaIndex = 0x14
        tag = 0x16
    .end annotation
.end field

.field public final refunded:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field

.field public final refunds:Lcom/stripe/proto/model/rest/Refunds;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Refunds#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x15
        tag = 0x17
    .end annotation
.end field

.field public final source:Lcom/stripe/proto/model/rest/Source;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Source#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0x10
    .end annotation
.end field

.field public final statement_descriptor:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "statementDescriptor"
        schemaIndex = 0x8
        tag = 0xa
    .end annotation
.end field

.field public final statement_descriptor_suffix:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "statementDescriptorSuffix"
        schemaIndex = 0x19
        tag = 0x1b
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x10
        tag = 0x12
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/Charge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/Charge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/Charge;->Companion:Lcom/stripe/proto/model/rest/Charge$Companion;

    .line 855
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 854
    const-class v1, Lcom/stripe/proto/model/rest/Charge;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 858
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 854
    new-instance v3, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/Charge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 32

    const v30, 0x1fffffff

    const/16 v31, 0x0

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v31}, Lcom/stripe/proto/model/rest/Charge;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/Source;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Refunds;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p14

    move-object/from16 v1, p29

    const-string v2, "metadata"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "unknownFields"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    sget-object v3, Lcom/stripe/proto/model/rest/Charge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v3, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    .line 57
    iput-object p3, p0, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    .line 68
    iput-object p4, p0, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    .line 78
    iput-object p5, p0, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    .line 88
    iput-object p6, p0, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    .line 98
    iput-object p7, p0, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    .line 108
    iput-object p8, p0, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    .line 118
    iput-object p9, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    .line 129
    iput-object p10, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    .line 140
    iput-object p11, p0, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 151
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    move-object/from16 p1, p13

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    move-object/from16 p1, p15

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    move-object/from16 p1, p16

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    move-object/from16 p1, p20

    .line 229
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    move-object/from16 p1, p21

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    move-object/from16 p1, p23

    .line 261
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    move-object/from16 p1, p24

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    move-object/from16 p1, p26

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 305
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 316
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    .line 336
    invoke-static {v2, v0}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p30

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

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

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

    .line 169
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v15

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

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v28, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v0, v0, v29

    if-eqz v0, :cond_1c

    .line 324
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p30, v0

    goto :goto_1c

    :cond_1c
    move-object/from16 p30, p29

    :goto_1c
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

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v28

    .line 33
    invoke-direct/range {p1 .. p30}, Lcom/stripe/proto/model/rest/Charge;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/Charge;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/Charge;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, v0, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 479
    iget-object v3, v0, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 480
    iget-object v4, v0, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 481
    iget-object v5, v0, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 482
    iget-object v6, v0, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 483
    iget-object v7, v0, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 484
    iget-object v8, v0, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 485
    iget-object v9, v0, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 486
    iget-object v10, v0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 487
    iget-object v11, v0, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 488
    iget-object v12, v0, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 489
    iget-object v13, v0, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 490
    iget-object v14, v0, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 491
    iget-object v15, v0, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 492
    iget-object v2, v0, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 493
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p30, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    .line 494
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p30, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    .line 495
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p30, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    .line 496
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p30, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    .line 497
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p30, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    .line 498
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p30, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    .line 499
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p30, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    .line 500
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p30, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    .line 501
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p30, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    .line 502
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p30, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_19

    .line 503
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p30, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_1a

    .line 504
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p30, v16

    move-object/from16 p13, v1

    if-eqz v16, :cond_1b

    .line 505
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p30, v16

    if-eqz v16, :cond_1c

    .line 506
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/Charge;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p30, v16

    goto :goto_1c

    :cond_1c
    move-object/from16 p30, p29

    :goto_1c
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, v1

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

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 477
    invoke-virtual/range {p1 .. p30}, Lcom/stripe/proto/model/rest/Charge;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Charge;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getSource$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "source is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Charge;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/Source;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Refunds;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/rest/Charge;"
        }
    .end annotation

    const-string v0, "metadata"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    new-instance v1, Lcom/stripe/proto/model/rest/Charge;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    invoke-direct/range {v1 .. v30}, Lcom/stripe/proto/model/rest/Charge;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 374
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/Charge;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Charge;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/Charge;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/Charge;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 379
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 380
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 381
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 382
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 383
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 384
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 385
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 386
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 387
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 388
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 389
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 390
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 391
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 392
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 393
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 394
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 395
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 396
    :cond_16
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 397
    :cond_17
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 398
    :cond_18
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 399
    :cond_19
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 400
    :cond_1a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    .line 401
    :cond_1b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 402
    :cond_1c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    .line 403
    :cond_1d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 408
    iget v0, p0, Lcom/stripe/proto/model/rest/Charge;->hashCode:I

    if-nez v0, :cond_1b

    .line 410
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Charge;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 411
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 412
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 413
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 414
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 415
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 416
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 417
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 418
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 419
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 420
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 421
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 422
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 423
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 424
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 425
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Source;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 426
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 427
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 428
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 429
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 430
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 431
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 432
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Refunds;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 433
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 434
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16

    :cond_16
    move v1, v2

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 435
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_17
    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 436
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_18
    move v1, v2

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 437
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_19
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 438
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1a
    add-int/2addr v0, v2

    .line 439
    iput v0, p0, Lcom/stripe/proto/model/rest/Charge;->hashCode:I

    :cond_1b
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Charge;->newBuilder()Lcom/stripe/proto/model/rest/Charge$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/Charge$Builder;
    .locals 2

    .line 339
    new-instance v0, Lcom/stripe/proto/model/rest/Charge$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/Charge$Builder;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->id:Ljava/lang/String;

    .line 341
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->amount:Ljava/lang/Long;

    .line 342
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->amount_refunded:Ljava/lang/Long;

    .line 343
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->captured:Ljava/lang/Boolean;

    .line 344
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->refunded:Ljava/lang/Boolean;

    .line 345
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->created:Ljava/lang/Long;

    .line 346
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->currency:Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->description:Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->statement_descriptor:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_email:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->failure_code:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->failure_message:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->livemode:Ljava/lang/Boolean;

    .line 353
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->metadata:Ljava/util/Map;

    .line 354
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    .line 355
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_intent:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->status:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_method:Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    .line 359
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->paid:Ljava/lang/Boolean;

    .line 360
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_url:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    .line 362
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->application_fee_amount:Ljava/lang/Long;

    .line 363
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->balance_transaction:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->receipt_number:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->calculated_statement_descriptor:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Charge$Builder;->authorization_code:Ljava/lang/String;

    .line 368
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Charge;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/Charge$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 446
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_refunded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "captured="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refunded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statement_descriptor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receipt_email="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failure_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failure_message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receipt_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refunds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "application_fee_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_16
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "balance_transaction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_17
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receipt_number="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_18
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v1, :cond_19

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statement_descriptor_suffix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_19
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calculated_statement_descriptor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_1a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    if-eqz v1, :cond_1b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authorization_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_1b
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Charge{"

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
