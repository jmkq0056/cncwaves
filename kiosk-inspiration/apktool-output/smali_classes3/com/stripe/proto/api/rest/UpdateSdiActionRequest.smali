.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;
.super Lcom/squareup/wire/Message;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Companion;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;,
        Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001d\u001e\u001f B\u008b\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u008c\u0001\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;",
        "id",
        "",
        "status",
        "failure_code",
        "failure_message",
        "generated_card",
        "refund_id",
        "payment_method_id",
        "inputs",
        "",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
        "routing_info",
        "surcharge",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;)V",
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
        "Input",
        "Surcharge",
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
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final failure_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "failureCode"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final failure_message:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "failureMessage"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final generated_card:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "generatedCard"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final inputs:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
            ">;"
        }
    .end annotation
.end field

.field public final payment_method_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentMethodId"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final refund_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "refundId"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final routing_info:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "routingInfo"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Surcharge#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->Companion:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Companion;

    .line 309
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 308
    const-class v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 312
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 308
    new-instance v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "inputs"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 42
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    .line 97
    iput-object p9, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    .line 105
    iput-object p10, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    .line 122
    invoke-static {v0, p8}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p8

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 113
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_a
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

    .line 38
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 192
    iget-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 193
    iget-object p2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 194
    iget-object p3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 195
    iget-object p4, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 196
    iget-object p5, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 197
    iget-object p6, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 198
    iget-object p7, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 199
    iget-object p8, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 200
    iget-object p9, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    .line 201
    iget-object p10, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->unknownFields()Lokio/ByteString;

    move-result-object p11

    :cond_a
    move-object p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 191
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;"
        }
    .end annotation

    const-string v0, "inputs"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 149
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 150
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 151
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 152
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 153
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 158
    iget v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->hashCode:I

    if-nez v0, :cond_9

    .line 160
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

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

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 163
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 171
    iput v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->newBuilder()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 2

    .line 125
    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->id:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->status:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->failure_code:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->failure_message:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->generated_card:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->refund_id:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->payment_method_id:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->inputs:Ljava/util/List;

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->routing_info:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    .line 136
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failure_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failure_message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generated_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refund_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inputs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "routing_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surcharge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_9
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "UpdateSdiActionRequest{"

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
