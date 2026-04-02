.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;
.super Lcom/squareup/wire/Message;
.source "DiscreteScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !B\u00c3\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u00c4\u0001\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0002H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "soft_deleted_record",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "decryption_error",
        "pi_without_records",
        "unknown_record_type",
        "database_error",
        "online_transient_network_error",
        "record_data_mismatch",
        "emv_data_missing_expiration_tags",
        "serial_number_record_mismatch",
        "offline_decline",
        "emv_second_gen_network_error",
        "missing_offline_arc_for_aid",
        "reader_paired",
        "discard_livemode_payment_in_testmode",
        "failed_to_redeem_for_offline_token",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "common_release"
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "databaseError"
        oneofName = "event"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "decryptionError"
        oneofName = "event"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "discardLivemodePaymentInTestmode"
        oneofName = "event"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "emvDataMissingExpirationTags"
        oneofName = "event"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "emvSecondGenNetworkError"
        oneofName = "event"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "failedToRedeemForOfflineToken"
        oneofName = "event"
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "missingOfflineArcForAid"
        oneofName = "event"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "offlineDecline"
        oneofName = "event"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "onlineTransientNetworkError"
        oneofName = "event"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "piWithoutRecords"
        oneofName = "event"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "readerPaired"
        oneofName = "event"
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "recordDataMismatch"
        oneofName = "event"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "serialNumberRecordMismatch"
        oneofName = "event"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "softDeletedRecord"
        oneofName = "event"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER"
        jsonName = "unknownRecordType"
        oneofName = "event"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Companion;

    .line 769
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 768
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 772
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 768
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    const v17, 0xffff

    const/16 v18, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p16

    const-string v6, "unknownFields"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {v0, v6, v5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 40
    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 55
    iput-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 67
    iput-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 79
    iput-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v5, p5

    .line 94
    iput-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v6, p6

    .line 111
    iput-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v7, p7

    .line 124
    iput-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v8, p8

    .line 136
    iput-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v9, p9

    .line 148
    iput-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v10, p10

    .line 162
    iput-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v11, p11

    .line 175
    iput-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v12, p12

    .line 188
    iput-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v13, p13

    .line 202
    iput-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v14, p14

    .line 214
    iput-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v15, p15

    .line 226
    iput-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 238
    filled-new-array/range {p5 .. p15}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "At most one of soft_deleted_record, decryption_error, pi_without_records, unknown_record_type, database_error, online_transient_network_error, record_data_mismatch, emv_data_missing_expiration_tags, serial_number_record_mismatch, offline_decline, emv_second_gen_network_error, missing_offline_arc_for_aid, reader_paired, discard_livemode_payment_in_testmode, failed_to_redeem_for_offline_token may be non-null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p17

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

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    .line 235
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p17, v0

    goto :goto_f

    :cond_f
    move-object/from16 p17, p16

    :goto_f
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

    .line 33
    invoke-direct/range {p1 .. p17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 333
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 334
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 335
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 336
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 337
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 338
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 339
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 340
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 341
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 342
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 343
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 344
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 345
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    .line 346
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    move-object/from16 p17, v1

    goto :goto_f

    :cond_f
    move-object/from16 p17, p16

    :goto_f
    move-object/from16 p2, p1

    move-object/from16 p1, v0

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

    .line 330
    invoke-virtual/range {p1 .. p17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;
    .locals 18

    const-string v0, "unknownFields"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

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

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 266
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 273
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 274
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 275
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 276
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 277
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 278
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 279
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 280
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 281
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 282
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 287
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->hashCode:I

    if-nez v0, :cond_f

    .line 289
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 290
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 291
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 292
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 293
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 294
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 295
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 296
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 297
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 298
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 299
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 300
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 301
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 302
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 303
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 304
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    .line 305
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->hashCode:I

    :cond_f
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 2

    .line 244
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 246
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 247
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 248
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 249
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 254
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 257
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 259
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 260
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 312
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "soft_deleted_record="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decryption_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pi_without_records="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown_record_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "database_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "online_transient_network_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "record_data_mismatch="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "emv_data_missing_expiration_tags="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial_number_record_mismatch="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_decline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "emv_second_gen_network_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "missing_offline_arc_for_aid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_paired="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "discard_livemode_payment_in_testmode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed_to_redeem_for_offline_token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_e
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DiscreteScope{"

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
