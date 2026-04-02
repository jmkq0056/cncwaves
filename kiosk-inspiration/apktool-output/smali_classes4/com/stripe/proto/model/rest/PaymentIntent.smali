.class public final Lcom/stripe/proto/model/rest/PaymentIntent;
.super Lcom/squareup/wire/Message;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;,
        Lcom/stripe/proto/model/rest/PaymentIntent$Builder;,
        Lcom/stripe/proto/model/rest/PaymentIntent$Companion;,
        Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 B2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004@ABCB\u00a7\u0003\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040,\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010.\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u00100\u001a\u000201\u00a2\u0006\u0002\u00102J\u00ad\u0003\u00107\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001d2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040,2\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010.2\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u00100\u001a\u000201\u00a2\u0006\u0002\u00108J\u0013\u00109\u001a\u00020\u00102\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0096\u0002J\u0008\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u00020\u0002H\u0016J\u0008\u0010?\u001a\u00020\u0004H\u0016R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0012\u0010\"\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0014\u0010/\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0014\u0010*\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0014\u0010$\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0010\u0010\u001c\u001a\u00020\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u00020\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u00104R\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u0004\u0018\u00010.8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u0004\u0018\u00010\'8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040,8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00085\u00106R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$Builder;",
        "id",
        "",
        "created",
        "",
        "status",
        "amount",
        "currency",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
        "statement_descriptor",
        "description",
        "receipt_email",
        "livemode",
        "",
        "last_payment_error",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "metadata",
        "",
        "charges",
        "Lcom/stripe/proto/model/rest/Charges;",
        "payment_method",
        "amount_capturable",
        "amount_received",
        "application_fee_amount",
        "canceled_at",
        "capture_method",
        "Lcom/stripe/proto/model/rest/Method;",
        "client_secret",
        "confirmation_method",
        "customer",
        "transfer_group",
        "amount_details",
        "Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;",
        "amount_tip",
        "statement_descriptor_suffix",
        "payment_method_options",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
        "on_behalf_of",
        "setup_future_usage",
        "amount_surcharge",
        "payment_method_types",
        "",
        "next_action",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
        "amount_requested",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "getSource$annotations",
        "()V",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntent;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "AmountDetails",
        "Builder",
        "Companion",
        "NextAction",
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
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/PaymentIntent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final amount_capturable:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountCapturable"
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent$AmountDetails#ADAPTER"
        jsonName = "amountDetails"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x17
        tag = 0x18
    .end annotation
.end field

.field public final amount_received:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountReceived"
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final amount_requested:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountRequested"
        schemaIndex = 0x20
        tag = 0x21
    .end annotation
.end field

.field public final amount_surcharge:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountSurcharge"
        schemaIndex = 0x1d
        tag = 0x1e
    .end annotation
.end field

.field public final amount_tip:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountTip"
        schemaIndex = 0x18
        tag = 0x19
    .end annotation
.end field

.field public final application_fee_amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "applicationFeeAmount"
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final canceled_at:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "canceledAt"
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final capture_method:Lcom/stripe/proto/model/rest/Method;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Method#ADAPTER"
        jsonName = "captureMethod"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x13
    .end annotation
.end field

.field public final charges:Lcom/stripe/proto/model/rest/Charges;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Charges#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final client_secret:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "clientSecret"
        redacted = true
        schemaIndex = 0x13
        tag = 0x14
    .end annotation
.end field

.field public final confirmation_method:Lcom/stripe/proto/model/rest/Method;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Method#ADAPTER"
        jsonName = "confirmationMethod"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x14
        tag = 0x15
    .end annotation
.end field

.field public final created:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final customer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x15
        tag = 0x16
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.ErrorResponse#ADAPTER"
        jsonName = "lastPaymentError"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0xb
        tag = 0xc
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

.field public final next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent$NextAction#ADAPTER"
        jsonName = "nextAction"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1f
        tag = 0x20
    .end annotation
.end field

.field public final on_behalf_of:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "onBehalfOf"
        schemaIndex = 0x1b
        tag = 0x1c
    .end annotation
.end field

.field public final payment_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentMethod"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentMethodOptions#ADAPTER"
        jsonName = "paymentMethodOptions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1a
        tag = 0x1b
    .end annotation
.end field

.field public final payment_method_types:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentMethodTypes"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1e
        tag = 0x1f
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
        redacted = true
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final setup_future_usage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "setupFutureUsage"
        schemaIndex = 0x1c
        tag = 0x1d
    .end annotation
.end field

.field public final source:Lcom/stripe/proto/model/rest/Source;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Source#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final statement_descriptor:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "statementDescriptor"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final statement_descriptor_suffix:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "statementDescriptorSuffix"
        schemaIndex = 0x19
        tag = 0x1a
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final transfer_group:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "transferGroup"
        schemaIndex = 0x16
        tag = 0x17
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/PaymentIntent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/PaymentIntent;->Companion:Lcom/stripe/proto/model/rest/PaymentIntent$Companion;

    .line 983
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 982
    const-class v1, Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 986
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 982
    new-instance v3, Lcom/stripe/proto/model/rest/PaymentIntent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/PaymentIntent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 38

    const/16 v36, 0x3

    const/16 v37, 0x0

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

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v37}, Lcom/stripe/proto/model/rest/PaymentIntent;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Source;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/proto/model/rest/ErrorResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/Charges;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/stripe/proto/model/rest/Method;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Method;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
            "Ljava/lang/Long;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p12

    move-object/from16 v1, p19

    move-object/from16 v2, p21

    move-object/from16 v3, p31

    move-object/from16 v4, p34

    const-string v5, "metadata"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "capture_method"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "confirmation_method"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "payment_method_types"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "unknownFields"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    sget-object v7, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v7, v4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 41
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->created:Ljava/lang/Long;

    .line 61
    iput-object p3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    .line 81
    iput-object p5, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->source:Lcom/stripe/proto/model/rest/Source;

    .line 103
    iput-object p7, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor:Ljava/lang/String;

    move-object/from16 p1, p8

    .line 114
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->description:Ljava/lang/String;

    move-object/from16 p1, p9

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->receipt_email:Ljava/lang/String;

    move-object/from16 p1, p10

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->livemode:Ljava/lang/Boolean;

    move-object/from16 p1, p11

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    move-object/from16 p1, p13

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    move-object/from16 p1, p14

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_capturable:Ljava/lang/Long;

    move-object/from16 p1, p16

    .line 192
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_received:Ljava/lang/Long;

    move-object/from16 p1, p17

    .line 203
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->application_fee_amount:Ljava/lang/Long;

    move-object/from16 p1, p18

    .line 214
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->canceled_at:Ljava/lang/Long;

    .line 225
    iput-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->capture_method:Lcom/stripe/proto/model/rest/Method;

    move-object/from16 p1, p20

    .line 237
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->client_secret:Ljava/lang/String;

    .line 249
    iput-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    move-object/from16 p1, p22

    .line 261
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->customer:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->transfer_group:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    move-object/from16 p1, p25

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_tip:Ljava/lang/Long;

    move-object/from16 p1, p26

    .line 302
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor_suffix:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 310
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    move-object/from16 p1, p28

    .line 319
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->on_behalf_of:Ljava/lang/String;

    move-object/from16 p1, p29

    .line 327
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->setup_future_usage:Ljava/lang/String;

    move-object/from16 p1, p30

    .line 338
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_surcharge:Ljava/lang/Long;

    move-object/from16 p1, p32

    .line 350
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    move-object/from16 p1, p33

    .line 362
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    .line 382
    invoke-static {v5, v0}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->metadata:Ljava/util/Map;

    .line 393
    invoke-static {v6, v3}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    move/from16 v0, p35

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

    .line 155
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v13

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

    .line 233
    sget-object v19, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

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

    .line 257
    sget-object v21, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

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

    and-int v29, v0, v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v29, p29

    :goto_1c
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1d

    const/16 v30, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v30, p30

    :goto_1d
    const/high16 v31, 0x40000000    # 2.0f

    and-int v31, v0, v31

    if-eqz v31, :cond_1e

    .line 346
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v31

    goto :goto_1e

    :cond_1e
    move-object/from16 v31, p31

    :goto_1e
    const/high16 v32, -0x80000000

    and-int v0, v0, v32

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p32

    :goto_1f
    and-int/lit8 v32, p36, 0x1

    if-eqz v32, :cond_20

    const/16 v32, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v32, p33

    :goto_20
    and-int/lit8 v33, p36, 0x2

    if-eqz v33, :cond_21

    .line 370
    sget-object v33, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p35, v33

    goto :goto_21

    :cond_21
    move-object/from16 p35, p34

    :goto_21
    move-object/from16 p1, p0

    move-object/from16 p33, v0

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

    move-object/from16 p30, v29

    move-object/from16 p31, v30

    move-object/from16 p32, v31

    move-object/from16 p34, v32

    .line 37
    invoke-direct/range {p1 .. p35}, Lcom/stripe/proto/model/rest/PaymentIntent;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;IILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentIntent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p35

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 556
    iget-object v3, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->created:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 557
    iget-object v4, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 558
    iget-object v5, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 559
    iget-object v6, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 560
    iget-object v7, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->source:Lcom/stripe/proto/model/rest/Source;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 561
    iget-object v8, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 562
    iget-object v9, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->description:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 563
    iget-object v10, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->receipt_email:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 564
    iget-object v11, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->livemode:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 565
    iget-object v12, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 566
    iget-object v13, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->metadata:Ljava/util/Map;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 567
    iget-object v14, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 568
    iget-object v15, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 569
    iget-object v2, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_capturable:Ljava/lang/Long;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 570
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_received:Ljava/lang/Long;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p35, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    .line 571
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->application_fee_amount:Ljava/lang/Long;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p35, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    .line 572
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->canceled_at:Ljava/lang/Long;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p35, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    .line 573
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->capture_method:Lcom/stripe/proto/model/rest/Method;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p35, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    .line 574
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->client_secret:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p35, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    .line 575
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p35, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    .line 576
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->customer:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p35, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    .line 577
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->transfer_group:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p35, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    .line 578
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p35, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    .line 579
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_tip:Ljava/lang/Long;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p35, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_19

    .line 580
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor_suffix:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p35, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_1a

    .line 581
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p35, v16

    move-object/from16 p13, v1

    if-eqz v16, :cond_1b

    .line 582
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->on_behalf_of:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p35, v16

    move-object/from16 p14, v1

    if-eqz v16, :cond_1c

    .line 583
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->setup_future_usage:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, p35, v16

    move-object/from16 p15, v1

    if-eqz v16, :cond_1d

    .line 584
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_surcharge:Ljava/lang/Long;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, p35, v16

    move-object/from16 p16, v1

    if-eqz v16, :cond_1e

    .line 585
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_types:Ljava/util/List;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v16, p35, v16

    move-object/from16 p17, v1

    if-eqz v16, :cond_1f

    .line 586
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v16, p36, 0x1

    move-object/from16 p18, v1

    if-eqz v16, :cond_20

    .line 587
    iget-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v16, p36, 0x2

    if-eqz v16, :cond_21

    .line 588
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/PaymentIntent;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p35, v16

    goto :goto_21

    :cond_21
    move-object/from16 p35, p34

    :goto_21
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

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p34, v1

    move-object/from16 p16, v2

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

    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p3, v3

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 554
    invoke-virtual/range {p1 .. p35}, Lcom/stripe/proto/model/rest/PaymentIntent;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntent;

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
.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntent;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Source;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/proto/model/rest/ErrorResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/Charges;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/stripe/proto/model/rest/Method;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Method;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
            "Ljava/lang/Long;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/rest/PaymentIntent;"
        }
    .end annotation

    const-string v0, "metadata"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capture_method"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmation_method"

    move-object/from16 v2, p21

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_method_types"

    move-object/from16 v3, p31

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v4, p34

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    new-instance v1, Lcom/stripe/proto/model/rest/PaymentIntent;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v22, v2

    move-object/from16 v32, v3

    move-object/from16 v35, v4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v35}, Lcom/stripe/proto/model/rest/PaymentIntent;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 436
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/PaymentIntent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 439
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->created:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->created:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 440
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 441
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 442
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 443
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->source:Lcom/stripe/proto/model/rest/Source;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 444
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 445
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 446
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->receipt_email:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->receipt_email:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 447
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->livemode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->livemode:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 448
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 449
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 450
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 451
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 452
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_capturable:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_capturable:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 453
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_received:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_received:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 454
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->application_fee_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->application_fee_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 455
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->canceled_at:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->canceled_at:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 456
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->capture_method:Lcom/stripe/proto/model/rest/Method;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->capture_method:Lcom/stripe/proto/model/rest/Method;

    if-eq v1, v3, :cond_15

    return v2

    .line 457
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->client_secret:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->client_secret:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 458
    :cond_16
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    if-eq v1, v3, :cond_17

    return v2

    .line 459
    :cond_17
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 460
    :cond_18
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->transfer_group:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->transfer_group:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 461
    :cond_19
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 462
    :cond_1a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_tip:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_tip:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    .line 463
    :cond_1b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor_suffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 464
    :cond_1c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    .line 465
    :cond_1d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->on_behalf_of:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->on_behalf_of:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    .line 466
    :cond_1e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->setup_future_usage:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->setup_future_usage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    .line 467
    :cond_1f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_surcharge:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_surcharge:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    .line 468
    :cond_20
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_types:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_types:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    .line 469
    :cond_21
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    .line 470
    :cond_22
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    return v2

    :cond_23
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 475
    iget v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->hashCode:I

    if-nez v0, :cond_1d

    .line 477
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 478
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

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

    .line 479
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->created:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 480
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 481
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 482
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 483
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Source;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 484
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 485
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->description:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 486
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 487
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 488
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/ErrorResponse;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 489
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 490
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Charges;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 491
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 492
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_capturable:Ljava/lang/Long;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 493
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_received:Ljava/lang/Long;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 494
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 495
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->canceled_at:Ljava/lang/Long;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 496
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->capture_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Method;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 497
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->client_secret:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 498
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Method;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 499
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->customer:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 500
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->transfer_group:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 501
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 502
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_tip:Ljava/lang/Long;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 503
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16

    :cond_16
    move v1, v2

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 504
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_17
    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 505
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_18
    move v1, v2

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 506
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->setup_future_usage:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_19
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 507
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_surcharge:Ljava/lang/Long;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1a

    :cond_1a
    move v1, v2

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 508
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 509
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->hashCode()I

    move-result v1

    goto :goto_1b

    :cond_1b
    move v1, v2

    :goto_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 510
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1c
    add-int/2addr v0, v2

    .line 511
    iput v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->hashCode:I

    :cond_1d
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent;->newBuilder()Lcom/stripe/proto/model/rest/PaymentIntent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/PaymentIntent$Builder;
    .locals 2

    .line 396
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->id:Ljava/lang/String;

    .line 398
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->created:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->created:Ljava/lang/Long;

    .line 399
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->status:Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount:Ljava/lang/Long;

    .line 401
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->currency:Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->source:Lcom/stripe/proto/model/rest/Source;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    .line 403
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->statement_descriptor:Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->description:Ljava/lang/String;

    .line 405
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->receipt_email:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->receipt_email:Ljava/lang/String;

    .line 406
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->livemode:Ljava/lang/Boolean;

    .line 407
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    .line 408
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->metadata:Ljava/util/Map;

    .line 409
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->charges:Lcom/stripe/proto/model/rest/Charges;

    .line 410
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method:Ljava/lang/String;

    .line 411
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_capturable:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_capturable:Ljava/lang/Long;

    .line 412
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_received:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_received:Ljava/lang/Long;

    .line 413
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->application_fee_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->application_fee_amount:Ljava/lang/Long;

    .line 414
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->canceled_at:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->canceled_at:Ljava/lang/Long;

    .line 415
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->capture_method:Lcom/stripe/proto/model/rest/Method;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->capture_method:Lcom/stripe/proto/model/rest/Method;

    .line 416
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->client_secret:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->client_secret:Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    .line 418
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->customer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->customer:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->transfer_group:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->transfer_group:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    .line 421
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_tip:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_tip:Ljava/lang/Long;

    .line 422
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor_suffix:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 424
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->on_behalf_of:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->on_behalf_of:Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->setup_future_usage:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->setup_future_usage:Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_surcharge:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_surcharge:Ljava/lang/Long;

    .line 427
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_types:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->payment_method_types:Ljava/util/List;

    .line 428
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    .line 429
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->amount_requested:Ljava/lang/Long;

    .line 430
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/PaymentIntent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 518
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->created:Ljava/lang/Long;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->created:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statement_descriptor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->description:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "receipt_email=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last_payment_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charges="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_capturable:Ljava/lang/Long;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_capturable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_capturable:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_received:Ljava/lang/Long;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_received="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_received:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "application_fee_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->canceled_at:Ljava/lang/Long;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canceled_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->canceled_at:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_11
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "capture_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->capture_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->client_secret:Ljava/lang/String;

    if-eqz v2, :cond_12

    const-string v2, "client_secret=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirmation_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->customer:Ljava/lang/String;

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->customer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_13
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->transfer_group:Ljava/lang/String;

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transfer_group="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->transfer_group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_14
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_details:Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_15
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_tip:Ljava/lang/Long;

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_tip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_tip:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_16
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v2, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statement_descriptor_suffix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_17
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_18
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->on_behalf_of:Ljava/lang/String;

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "on_behalf_of="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_19
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->setup_future_usage:Ljava/lang/String;

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->setup_future_usage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_1a
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_surcharge:Ljava/lang/Long;

    if-eqz v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_surcharge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_surcharge:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_1b
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_types:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->payment_method_types:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_1c
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    if-eqz v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "next_action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_1d
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_requested="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent;->amount_requested:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_1e
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PaymentIntent{"

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
