.class public final Lcom/stripe/proto/model/rest/CardPresent;
.super Lcom/squareup/wire/Message;
.source "CardPresent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/CardPresent$Builder;,
        Lcom/stripe/proto/model/rest/CardPresent$Companion;,
        Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/CardPresent;",
        "Lcom/stripe/proto/model/rest/CardPresent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u0000 32\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003234B\u00b3\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010$\u001a\u00020%\u00a2\u0006\u0002\u0010&J\u00b9\u0002\u0010*\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010$\u001a\u00020%\u00a2\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020\u00172\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0096\u0002J\u0008\u0010/\u001a\u00020\u0008H\u0016J\u0008\u00100\u001a\u00020\u0002H\u0016J\u0008\u00101\u001a\u00020\u0004H\u0016R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\'R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010(R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010(R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010)R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/CardPresent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/CardPresent$Builder;",
        "brand",
        "",
        "country",
        "emv_auth_data",
        "exp_month",
        "",
        "exp_year",
        "fingerprint",
        "funding",
        "generated_card",
        "last4",
        "read_method",
        "receipt",
        "Lcom/stripe/proto/model/rest/Receipt;",
        "preferred_locales",
        "",
        "cardholder_name",
        "networks",
        "Lcom/stripe/proto/model/rest/CardNetworks;",
        "incremental_authorization_supported",
        "",
        "iin",
        "issuer",
        "description",
        "network",
        "wallet",
        "Lcom/stripe/proto/model/rest/Wallet;",
        "amount_authorized",
        "",
        "dynamic_currency_conversion",
        "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
        "location",
        "reader_",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPresent;",
        "equals",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "DynamicCurrencyConversionDetails",
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
            "Lcom/stripe/proto/model/rest/CardPresent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/CardPresent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount_authorized:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "amountAuthorized"
        schemaIndex = 0x14
        tag = 0x16
    .end annotation
.end field

.field public final brand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final cardholder_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "cardholderName"
        redacted = true
        schemaIndex = 0xc
        tag = 0xe
    .end annotation
.end field

.field public final country:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x11
        tag = 0x13
    .end annotation
.end field

.field public final dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.CardPresent$DynamicCurrencyConversionDetails#ADAPTER"
        jsonName = "dynamicCurrencyConversion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x15
        tag = 0x17
    .end annotation
.end field

.field public final emv_auth_data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "emvAuthData"
        redacted = true
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final exp_month:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE"
        jsonName = "expMonth"
        redacted = true
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final exp_year:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE"
        jsonName = "expYear"
        redacted = true
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field

.field public final fingerprint:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        redacted = true
        schemaIndex = 0x5
        tag = 0x7
    .end annotation
.end field

.field public final funding:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x6
        tag = 0x8
    .end annotation
.end field

.field public final generated_card:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "generatedCard"
        schemaIndex = 0x7
        tag = 0xc
    .end annotation
.end field

.field public final iin:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0xf
        tag = 0x11
    .end annotation
.end field

.field public final incremental_authorization_supported:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "incrementalAuthorizationSupported"
        schemaIndex = 0xe
        tag = 0x10
    .end annotation
.end field

.field public final issuer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x10
        tag = 0x12
    .end annotation
.end field

.field public final last4:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final location:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x16
        tag = 0x18
    .end annotation
.end field

.field public final network:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x12
        tag = 0x14
    .end annotation
.end field

.field public final networks:Lcom/stripe/proto/model/rest/CardNetworks;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.CardNetworks#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xf
    .end annotation
.end field

.field public final preferred_locales:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "preferredLocales"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final read_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "readMethod"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final reader_:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        declaredName = "reader"
        schemaIndex = 0x17
        tag = 0x19
    .end annotation
.end field

.field public final receipt:Lcom/stripe/proto/model/rest/Receipt;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Receipt#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final wallet:Lcom/stripe/proto/model/rest/Wallet;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Wallet#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x13
        tag = 0x15
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/CardPresent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/CardPresent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/CardPresent;->Companion:Lcom/stripe/proto/model/rest/CardPresent$Companion;

    .line 726
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 725
    const-class v1, Lcom/stripe/proto/model/rest/CardPresent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 729
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 725
    new-instance v3, Lcom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/CardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 28

    const v26, 0x1ffffff

    const/16 v27, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v27}, Lcom/stripe/proto/model/rest/CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Receipt;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/CardNetworks;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Wallet;",
            "Ljava/lang/Long;",
            "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p12

    move-object/from16 v1, p25

    const-string v2, "preferred_locales"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "unknownFields"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v3, Lcom/stripe/proto/model/rest/CardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v3, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    .line 82
    iput-object p5, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    .line 94
    iput-object p6, p0, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    .line 115
    iput-object p8, p0, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    .line 126
    iput-object p9, p0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    .line 136
    iput-object p10, p0, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    .line 147
    iput-object p11, p0, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    move-object/from16 p1, p13

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    move-object/from16 p1, p15

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 203
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    move-object/from16 p1, p21

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    move-object/from16 p1, p22

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    move-object/from16 p1, p23

    .line 258
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 265
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    .line 287
    invoke-static {v2, v0}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    move/from16 v0, p26

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
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

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

    and-int v0, v0, v25

    if-eqz v0, :cond_18

    .line 273
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p26, v0

    goto :goto_18

    :cond_18
    move-object/from16 p26, p25

    :goto_18
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

    .line 34
    invoke-direct/range {p1 .. p26}, Lcom/stripe/proto/model/rest/CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/CardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/CardPresent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, v0, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, v0, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 415
    iget-object v4, v0, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 416
    iget-object v5, v0, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 417
    iget-object v6, v0, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 418
    iget-object v7, v0, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 419
    iget-object v8, v0, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 420
    iget-object v9, v0, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 421
    iget-object v10, v0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 422
    iget-object v11, v0, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 423
    iget-object v12, v0, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 424
    iget-object v13, v0, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 425
    iget-object v14, v0, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 426
    iget-object v15, v0, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 427
    iget-object v2, v0, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 428
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p26, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    .line 429
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p26, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    .line 430
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p26, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    .line 431
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p26, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    .line 432
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p26, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    .line 433
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p26, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    .line 434
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p26, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    .line 435
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p26, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    .line 436
    iget-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p26, v16

    if-eqz v16, :cond_18

    .line 437
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p26, v16

    goto :goto_18

    :cond_18
    move-object/from16 p26, p25

    :goto_18
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, v1

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

    .line 412
    invoke-virtual/range {p1 .. p26}, Lcom/stripe/proto/model/rest/CardPresent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPresent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPresent;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Receipt;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/CardNetworks;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Wallet;",
            "Ljava/lang/Long;",
            "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/rest/CardPresent;"
        }
    .end annotation

    const-string v0, "preferred_locales"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    new-instance v1, Lcom/stripe/proto/model/rest/CardPresent;

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

    move-object/from16 v14, p13

    move-object/from16 v15, p14

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

    invoke-direct/range {v1 .. v26}, Lcom/stripe/proto/model/rest/CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 321
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/CardPresent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 326
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 328
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 329
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 330
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 331
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 332
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 333
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 334
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 335
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 336
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 337
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 338
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 339
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 340
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 341
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 342
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 343
    :cond_16
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 344
    :cond_17
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 345
    :cond_18
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 346
    :cond_19
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 351
    iget v0, p0, Lcom/stripe/proto/model/rest/CardPresent;->hashCode:I

    if-nez v0, :cond_17

    .line 353
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 354
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

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

    .line 355
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 356
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 357
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 358
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 359
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 360
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 361
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 362
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 363
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 364
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Receipt;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 365
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 366
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 367
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/CardNetworks;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 368
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 369
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 370
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 371
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 372
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 373
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Wallet;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 374
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 375
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 376
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 377
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_16
    add-int/2addr v0, v2

    .line 378
    iput v0, p0, Lcom/stripe/proto/model/rest/CardPresent;->hashCode:I

    :cond_17
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent;->newBuilder()Lcom/stripe/proto/model/rest/CardPresent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/CardPresent$Builder;
    .locals 2

    .line 290
    new-instance v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/CardPresent$Builder;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->brand:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->country:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->emv_auth_data:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->exp_month:Ljava/lang/Integer;

    .line 295
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->exp_year:Ljava/lang/Integer;

    .line 296
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->fingerprint:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->funding:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->generated_card:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->last4:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->read_method:Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    .line 302
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->preferred_locales:Ljava/util/List;

    .line 303
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->cardholder_name:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    .line 305
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->incremental_authorization_supported:Ljava/lang/Boolean;

    .line 306
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->iin:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->issuer:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->description:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->network:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    .line 311
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->amount_authorized:Ljava/lang/Long;

    .line 312
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    .line 313
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->location:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/CardPresent$Builder;->reader_:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/CardPresent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 385
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "brand="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "country="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "emv_auth_data=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "exp_month=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "exp_year=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "fingerprint=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "funding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generated_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last4="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receipt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preferred_locales="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "cardholder_name=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "networks="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "incremental_authorization_supported="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "issuer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wallet="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_authorized="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dynamic_currency_conversion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_16
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_17
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CardPresent{"

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
