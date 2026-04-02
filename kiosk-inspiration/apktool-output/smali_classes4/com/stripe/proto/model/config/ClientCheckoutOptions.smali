.class public final Lcom/stripe/proto/model/config/ClientCheckoutOptions;
.super Lcom/squareup/wire/Message;
.source "ClientCheckoutOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;,
        Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 -2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002,-B\u00c3\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0002\u0010\u001dJ\u00c9\u0001\u0010#\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00102\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00102\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0096\u0002J\u0008\u0010(\u001a\u00020\u0004H\u0016J\u0008\u0010)\u001a\u00020\u0002H\u0016J\u0008\u0010*\u001a\u00020+H\u0016R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001eR\u0010\u0010\u000e\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001f\u0010 R\u0010\u0010\u0015\u001a\u00020\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001eR\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008!\u0010 R\u0010\u0010\u0013\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\"\u00a8\u0006."
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;",
        "volume",
        "",
        "contact_emv_config",
        "Lcom/stripe/proto/model/config/ContactEmvConfig;",
        "offline_contact_emv_config",
        "signature_threshold",
        "",
        "refund_signature_threshold",
        "device_trace_level",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel;",
        "summary_delay",
        "confirm_amount_threshold",
        "collect_signature_on_swipe",
        "",
        "uptime_reset_parameters",
        "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
        "redact_masked_pan_to_last_4",
        "disable_screen_dimming",
        "default_locale",
        "Lcom/stripe/proto/model/config/Locale;",
        "allow_tipping",
        "vector_config",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
        "increment_num_of_canceled_payments_on_query",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "getContact_emv_config$annotations",
        "()V",
        "getOffline_contact_emv_config$annotations",
        "Ljava/lang/Integer;",
        "copy",
        "(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "equals",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "terminal_release"
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
            "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_tipping:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "allowTipping"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final collect_signature_on_swipe:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "collectSignatureOnSwipe"
        schemaIndex = 0x8
        tag = 0xd
    .end annotation
.end field

.field public final confirm_amount_threshold:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "confirmAmountThreshold"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ContactEmvConfig#ADAPTER"
        jsonName = "contactEmvConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final default_locale:Lcom/stripe/proto/model/config/Locale;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.Locale#ADAPTER"
        jsonName = "defaultLocale"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xc
    .end annotation
.end field

.field public final device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.DeviceTraceLevel#ADAPTER"
        jsonName = "deviceTraceLevel"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final disable_screen_dimming:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "disableScreenDimming"
        schemaIndex = 0xb
        tag = 0xb
    .end annotation
.end field

.field public final increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "incrementNumOfCanceledPaymentsOnQuery"
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ContactEmvConfig#ADAPTER"
        jsonName = "offlineContactEmvConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final redact_masked_pan_to_last_4:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "redactMaskedPanToLast4"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xa
    .end annotation
.end field

.field public final refund_signature_threshold:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "refundSignatureThreshold"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final signature_threshold:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "signatureThreshold"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final summary_delay:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "summaryDelay"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb#ADAPTER"
        jsonName = "uptimeResetParameters"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0x9
    .end annotation
.end field

.field public final vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.VectorRegionalConfiguration#ADAPTER"
        jsonName = "vectorConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final volume:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->Companion:Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion;

    .line 479
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 478
    const-class v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 482
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 478
    new-instance v3, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    const v22, 0x1ffff

    const/16 v23, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v23}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;-><init>(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)V
    .locals 3

    move-object/from16 v0, p17

    move-object/from16 v1, p21

    const-string v2, "default_locale"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "unknownFields"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v2, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    .line 45
    iput-object p2, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 59
    iput-object p3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 72
    iput-wide p4, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    .line 84
    iput-wide p6, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    .line 93
    iput-object p8, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 102
    iput-wide p9, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    .line 111
    iput-wide p11, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    move-object/from16 p1, p13

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    move-object/from16 p1, p14

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    move/from16 p1, p15

    .line 137
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    move-object/from16 p1, p16

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    .line 157
    iput-object v0, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    move-object/from16 p1, p18

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    move-object/from16 p1, p19

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-object/from16 p1, p20

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p22

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

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    move-wide v8, v6

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    move-wide v10, v6

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p6

    :goto_4
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v5, p8

    :goto_5
    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_6

    move-wide v12, v6

    goto :goto_6

    :cond_6
    move-wide/from16 v12, p9

    :goto_6
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v6, p11

    :goto_7
    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v14, p13

    :goto_8
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v15, p14

    :goto_9
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    move/from16 v2, p15

    :goto_a
    move-object/from16 p1, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v1, p16

    :goto_b
    move-object/from16 p2, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    .line 165
    sget-object v1, Lcom/stripe/proto/model/config/Locale;->INVALID_LOCALE:Lcom/stripe/proto/model/config/Locale;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p17

    :goto_c
    move-object/from16 p3, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v1, p18

    :goto_d
    move-object/from16 p4, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v1, p19

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p20

    :goto_f
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    .line 191
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p22, v0

    goto :goto_10

    :cond_10
    move-object/from16 p22, p21

    :goto_10
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, v1

    move/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p9, v5

    move-wide/from16 p12, v6

    move-wide/from16 p5, v8

    move-wide/from16 p7, v10

    move-wide/from16 p10, v12

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p21, v16

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .line 31
    invoke-direct/range {p1 .. p22}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;-><init>(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 286
    iget-object v3, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 287
    iget-object v4, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 288
    iget-wide v5, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    .line 289
    iget-wide v7, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    .line 290
    iget-object v9, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    .line 291
    iget-wide v10, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    goto :goto_6

    :cond_6
    move-wide/from16 v10, p9

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    .line 292
    iget-wide v12, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    goto :goto_7

    :cond_7
    move-wide/from16 v12, p11

    :goto_7
    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_8

    .line 293
    iget-object v14, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v14, p13

    :goto_8
    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_9

    .line 294
    iget-object v15, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    goto :goto_9

    :cond_9
    move-object/from16 v15, p14

    :goto_9
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    .line 295
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    goto :goto_a

    :cond_a
    move/from16 v2, p15

    :goto_a
    move/from16 p2, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    .line 296
    iget-object v2, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p16

    :goto_b
    move-object/from16 p3, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    .line 297
    iget-object v2, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p17

    :goto_c
    move-object/from16 p4, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    .line 298
    iget-object v2, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p18

    :goto_d
    move-object/from16 p5, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 299
    iget-object v2, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p19

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 300
    iget-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p20

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p22, v16

    if-eqz v16, :cond_10

    .line 301
    invoke-virtual {v0}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p22, v16

    goto :goto_10

    :cond_10
    move-object/from16 p22, p21

    :goto_10
    move/from16 p16, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, p5

    move-object/from16 p21, v1

    move-object/from16 p20, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-object/from16 p9, v9

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 284
    invoke-virtual/range {p1 .. p22}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->copy(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getContact_emv_config$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "contact_emv_config is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getOffline_contact_emv_config$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "offline_contact_emv_config is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;
    .locals 23

    const-string v0, "default_locale"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v2, p21

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v22}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;-><init>(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 217
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 222
    :cond_5
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 223
    :cond_6
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 224
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 225
    :cond_8
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    .line 226
    :cond_9
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    .line 227
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 228
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 229
    :cond_c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 230
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 231
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    if-eq v1, v3, :cond_f

    return v2

    .line 232
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 233
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 234
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 239
    iget v0, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->hashCode:I

    if-nez v0, :cond_a

    .line 241
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 242
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

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

    .line 243
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ContactEmvConfig;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 244
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ContactEmvConfig;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 245
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 246
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 247
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/DeviceTraceLevel;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 248
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 249
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 252
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 254
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 257
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_9
    add-int/2addr v0, v2

    .line 258
    iput v0, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->hashCode:I

    :cond_a
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->newBuilder()Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 3

    .line 194
    new-instance v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->volume:Ljava/lang/Integer;

    .line 196
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 198
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->signature_threshold:J

    .line 199
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->refund_signature_threshold:J

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 201
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->summary_delay:J

    .line 202
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->confirm_amount_threshold:J

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->collect_signature_on_swipe:Ljava/lang/Boolean;

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 205
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->redact_masked_pan_to_last_4:Z

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->disable_screen_dimming:Ljava/lang/Boolean;

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->default_locale:Lcom/stripe/proto/model/config/Locale;

    .line 208
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->allow_tipping:Ljava/lang/Boolean;

    .line 209
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    .line 210
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    .line 211
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 265
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "volume="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contact_emv_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_contact_emv_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature_threshold="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refund_signature_threshold="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v2, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_trace_level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "summary_delay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirm_amount_threshold="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v2, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collect_signature_on_swipe="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uptime_reset_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "redact_masked_pan_to_last_4="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v2, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_screen_dimming="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "default_locale="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_tipping="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vector_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_8
    iget-object v2, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "increment_num_of_canceled_payments_on_query="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_9
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ClientCheckoutOptions{"

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
