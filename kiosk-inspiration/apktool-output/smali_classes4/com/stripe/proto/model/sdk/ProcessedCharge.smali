.class public final Lcom/stripe/proto/model/sdk/ProcessedCharge;
.super Lcom/squareup/wire/Message;
.source "ProcessedCharge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;,
        Lcom/stripe/proto/model/sdk/ProcessedCharge$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/sdk/ProcessedCharge;",
        "Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eBy\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014Jz\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00118\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/ProcessedCharge;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;",
        "charge_id",
        "",
        "charged_amount",
        "Lcom/stripe/proto/model/sdk/ChargeAmount;",
        "c_time",
        "",
        "description",
        "receipt_email",
        "statement_descriptor",
        "live_mode",
        "",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
        "metadata",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/sdk/ProcessedCharge;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/sdk/ProcessedCharge$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final c_time:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "cTime"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final charge_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "chargeId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.ChargeAmount#ADAPTER"
        jsonName = "chargedAmount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final live_mode:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "liveMode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x8
        tag = 0xb
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

.field public final receipt_email:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "receiptEmail"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final source:Lcom/stripe/proto/model/rest/Source;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Source#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0xa
    .end annotation
.end field

.field public final statement_descriptor:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "statementDescriptor"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/sdk/ProcessedCharge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->Companion:Lcom/stripe/proto/model/sdk/ProcessedCharge$Companion;

    .line 328
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 327
    const-class v1, Lcom/stripe/proto/model/sdk/ProcessedCharge;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 331
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 327
    new-instance v3, Lcom/stripe/proto/model/sdk/ProcessedCharge$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/sdk/ProcessedCharge$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/sdk/ProcessedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x3ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/model/sdk/ProcessedCharge;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/sdk/ChargeAmount;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/stripe/proto/model/rest/Source;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "charge_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receipt_email"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statement_descriptor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charge_id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    .line 59
    iput-wide p3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->c_time:J

    .line 71
    iput-object p5, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->description:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->receipt_email:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->statement_descriptor:Ljava/lang/String;

    .line 103
    iput-boolean p8, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->live_mode:Z

    .line 115
    iput-object p9, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    .line 136
    invoke-static {v0, p10}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p13, p12, 0x1

    .line 31
    const-string v0, ""

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    const/4 v1, 0x0

    if-eqz p13, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    const-wide/16 p3, 0x0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    const/4 p8, 0x0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move-object p9, v1

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 123
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p10

    :cond_8
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_9

    .line 124
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_9
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-wide p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/model/sdk/ProcessedCharge;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/sdk/ProcessedCharge;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/sdk/ProcessedCharge;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 202
    iget-object p1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charge_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 203
    iget-object p2, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 204
    iget-wide p3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->c_time:J

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 205
    iget-object p5, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->description:Ljava/lang/String;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 206
    iget-object p6, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->receipt_email:Ljava/lang/String;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 207
    iget-object p7, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->statement_descriptor:Ljava/lang/String;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 208
    iget-boolean p8, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->live_mode:Z

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 209
    iget-object p9, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 210
    iget-object p10, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->metadata:Ljava/util/Map;

    :cond_8
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_9

    .line 211
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ProcessedCharge;->unknownFields()Lokio/ByteString;

    move-result-object p11

    :cond_9
    move-object p12, p10

    move-object p13, p11

    move p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 201
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/model/sdk/ProcessedCharge;->copy(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/model/sdk/ProcessedCharge;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/model/sdk/ProcessedCharge;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/sdk/ChargeAmount;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/stripe/proto/model/rest/Source;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/sdk/ProcessedCharge;"
        }
    .end annotation

    const-string v0, "charge_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receipt_email"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statement_descriptor"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/stripe/proto/model/sdk/ProcessedCharge;

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/model/sdk/ProcessedCharge;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 155
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ProcessedCharge;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;

    invoke-virtual {p1}, Lcom/stripe/proto/model/sdk/ProcessedCharge;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charge_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charge_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 159
    :cond_4
    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->c_time:J

    iget-wide v5, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->c_time:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 160
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 161
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->receipt_email:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->receipt_email:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 162
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->statement_descriptor:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->statement_descriptor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 163
    :cond_8
    iget-boolean v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->live_mode:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->live_mode:Z

    if-eq v1, v3, :cond_9

    return v2

    .line 164
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 165
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->metadata:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->metadata:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 170
    iget v0, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->hashCode:I

    if-nez v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ProcessedCharge;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charge_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/ChargeAmount;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 175
    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->c_time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 176
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->receipt_email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 179
    iget-boolean v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->live_mode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Source;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 181
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    iput v0, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ProcessedCharge;->newBuilder()Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;
    .locals 3

    .line 139
    new-instance v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charge_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->charge_id:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    .line 142
    iget-wide v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->c_time:J

    iput-wide v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->c_time:J

    .line 143
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->description:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->receipt_email:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->receipt_email:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->statement_descriptor:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->statement_descriptor:Ljava/lang/String;

    .line 146
    iget-boolean v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->live_mode:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->live_mode:Z

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->metadata:Ljava/util/Map;

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ProcessedCharge;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 189
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charge_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charged_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->charged_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "c_time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->c_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->description:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receipt_email="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->receipt_email:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statement_descriptor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->statement_descriptor:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "live_mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->live_mode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->metadata:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ProcessedCharge{"

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
