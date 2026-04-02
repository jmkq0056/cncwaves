.class public final Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;
.super Lcom/squareup/wire/Message;
.source "RequestedPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestedCardPresent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;,
        Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Companion;,
        Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;,
        Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004 !\"#B\u00c3\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016J\u00c4\u0001\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u0008\u0010\u001f\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;",
        "type",
        "",
        "read_method",
        "swipe_reason",
        "track_2",
        "emv_processing_method",
        "emv_data",
        "pin_block",
        "pin_block_ksn",
        "reader_",
        "track_2_key_type",
        "track_2_key_id",
        "track_2_ksn",
        "latitude",
        "longitude",
        "encrypted_pin_block",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;)V",
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
        "SchemeType",
        "StandardEncryptionType",
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
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final emv_data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "emvData"
        redacted = true
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final emv_processing_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "emvProcessingMethod"
        schemaIndex = 0x4
        tag = 0xb
    .end annotation
.end field

.field public final encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType#ADAPTER"
        jsonName = "encryptedPinBlock"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final latitude:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final longitude:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final pin_block:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "pinBlock"
        redacted = true
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final pin_block_ksn:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "pinBlockKsn"
        redacted = true
        schemaIndex = 0x7
        tag = 0x4
    .end annotation
.end field

.field public final read_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "readMethod"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final reader_:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        declaredName = "reader"
        schemaIndex = 0x8
        tag = 0x8
    .end annotation
.end field

.field public final swipe_reason:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "swipeReason"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final track_2:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "track2"
        redacted = true
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final track_2_key_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "track2KeyId"
        redacted = true
        schemaIndex = 0xa
        tag = 0xa
    .end annotation
.end field

.field public final track_2_key_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "track2KeyType"
        redacted = true
        schemaIndex = 0x9
        tag = 0x9
    .end annotation
.end field

.field public final track_2_ksn:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "track2Ksn"
        redacted = true
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->Companion:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Companion;

    .line 800
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 799
    const-class v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 803
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 799
    new-instance v3, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v18}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;)V
    .locals 2

    move-object/from16 v0, p16

    const-string v1, "unknownFields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, v0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 337
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    .line 347
    iput-object p2, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    .line 359
    iput-object p3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    .line 370
    iput-object p4, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    .line 383
    iput-object p5, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    .line 394
    iput-object p6, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    .line 406
    iput-object p7, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    .line 418
    iput-object p8, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    .line 430
    iput-object p9, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    .line 441
    iput-object p10, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    .line 453
    iput-object p11, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    .line 465
    iput-object p12, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    .line 477
    iput-object p13, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 487
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 494
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 503
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

    .line 333
    invoke-direct/range {p1 .. p17}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 594
    iget-object v3, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 595
    iget-object v4, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 596
    iget-object v5, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 597
    iget-object v6, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 598
    iget-object v7, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 599
    iget-object v8, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 600
    iget-object v9, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 601
    iget-object v10, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 602
    iget-object v11, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 603
    iget-object v12, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 604
    iget-object v13, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 605
    iget-object v14, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 606
    iget-object v15, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 607
    iget-object v2, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    .line 608
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->unknownFields()Lokio/ByteString;

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

    .line 592
    invoke-virtual/range {p1 .. p17}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;
    .locals 18

    const-string v0, "unknownFields"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    new-instance v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

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

    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 528
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 529
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 531
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 532
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 533
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 534
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 535
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 536
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 537
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 538
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 539
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 540
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 541
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 542
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 543
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 544
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 549
    iget v0, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->hashCode:I

    if-nez v0, :cond_f

    .line 551
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 552
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

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

    .line 553
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 554
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 555
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 556
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 557
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 558
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 559
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 560
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 561
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 562
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 563
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 564
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 565
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 566
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    .line 567
    iput v0, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->hashCode:I

    :cond_f
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->newBuilder()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 2

    .line 506
    new-instance v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;-><init>()V

    .line 507
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->type:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->read_method:Ljava/lang/String;

    .line 509
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->swipe_reason:Ljava/lang/String;

    .line 510
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2:Ljava/lang/String;

    .line 511
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->emv_processing_method:Ljava/lang/String;

    .line 512
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->emv_data:Ljava/lang/String;

    .line 513
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->pin_block:Ljava/lang/String;

    .line 514
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->pin_block_ksn:Ljava/lang/String;

    .line 515
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->reader_:Ljava/lang/String;

    .line 516
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_key_type:Ljava/lang/String;

    .line 517
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_key_id:Ljava/lang/String;

    .line 518
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_ksn:Ljava/lang/String;

    .line 519
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->latitude:Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->longitude:Ljava/lang/String;

    .line 521
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    .line 522
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 574
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "swipe_reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->swipe_reason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "track_2=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "emv_processing_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_processing_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "emv_data=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "pin_block=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->pin_block_ksn:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "pin_block_ksn=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->reader_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_type:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "track_2_key_type=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_key_id:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "track_2_key_id=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->track_2_ksn:Ljava/lang/String;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "track_2_ksn=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "latitude="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->latitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "longitude="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->longitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypted_pin_block="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_e
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "RequestedCardPresent{"

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
