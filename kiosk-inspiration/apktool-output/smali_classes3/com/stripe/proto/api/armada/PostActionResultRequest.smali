.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest;
.super Lcom/squareup/wire/Message;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Companion;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;,
        Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001d\u001e\u001f Bq\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013Jr\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u0008H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/PostActionResultRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "status",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;",
        "failure_code",
        "",
        "failure_message",
        "generated_card",
        "refund_id",
        "terminal_action_id",
        "inputs",
        "",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
        "payment_method",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V",
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
        "Status",
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
            "Lcom/stripe/proto/api/armada/PostActionResultRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/PostActionResultRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final device_info:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        jsonName = "deviceInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final failure_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "failureCode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final failure_message:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "failureMessage"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final generated_card:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "generatedCard"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final inputs:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
            ">;"
        }
    .end annotation
.end field

.field public final payment_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentMethod"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final refund_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "refundId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Status#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final terminal_action_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "terminalActionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->Companion:Lcom/stripe/proto/api/armada/PostActionResultRequest$Companion;

    .line 294
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 293
    const-class v1, Lcom/stripe/proto/api/armada/PostActionResultRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 297
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 293
    new-instance v3, Lcom/stripe/proto/api/armada/PostActionResultRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/PostActionResultRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/api/armada/PostActionResultRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
            ">;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure_code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure_message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generated_card"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refund_id"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputs"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payment_method"

    invoke-static {p9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 46
    iput-object p2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    .line 54
    iput-object p3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_code:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_message:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->generated_card:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->refund_id:Ljava/lang/String;

    .line 93
    iput-object p7, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->terminal_action_id:Ljava/lang/String;

    .line 103
    iput-object p9, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->payment_method:Ljava/lang/String;

    .line 121
    invoke-static {v0, p8}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->inputs:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 53
    sget-object p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;->STATUS_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    .line 36
    const-string v0, ""

    if-eqz p12, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    .line 102
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p8

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 112
    sget-object p10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_9
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

    .line 36
    invoke-direct/range {p2 .. p12}, Lcom/stripe/proto/api/armada/PostActionResultRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/PostActionResultRequest;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/PostActionResultRequest;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    .line 187
    iget-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 188
    iget-object p2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    .line 189
    iget-object p3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_code:Ljava/lang/String;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    .line 190
    iget-object p4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_message:Ljava/lang/String;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    .line 191
    iget-object p5, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->generated_card:Ljava/lang/String;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    .line 192
    iget-object p6, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->refund_id:Ljava/lang/String;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    .line 193
    iget-object p7, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->terminal_action_id:Ljava/lang/String;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    .line 194
    iget-object p8, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->inputs:Ljava/util/List;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    .line 195
    iget-object p9, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->payment_method:Ljava/lang/String;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 196
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest;->unknownFields()Lokio/ByteString;

    move-result-object p10

    :cond_9
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

    .line 186
    invoke-virtual/range {p2 .. p12}, Lcom/stripe/proto/api/armada/PostActionResultRequest;->copy(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/armada/PostActionResultRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/armada/PostActionResultRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
            ">;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest;"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure_code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure_message"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generated_card"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refund_id"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputs"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_method"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/stripe/proto/api/armada/PostActionResultRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v11}, Lcom/stripe/proto/api/armada/PostActionResultRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    if-eq v1, v3, :cond_4

    return v2

    .line 144
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->generated_card:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->generated_card:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 147
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->refund_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->refund_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 148
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->terminal_action_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 149
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->inputs:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->inputs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 150
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->payment_method:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest;->payment_method:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 155
    iget v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->hashCode:I

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 158
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->generated_card:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 163
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->refund_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->inputs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->payment_method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    iput v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest;->newBuilder()Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 2

    .line 124
    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->failure_code:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_message:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->failure_message:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->generated_card:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->generated_card:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->refund_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->refund_id:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->terminal_action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->inputs:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->inputs:Ljava/util/List;

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->payment_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->payment_method:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failure_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_code:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failure_message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->failure_message:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generated_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->generated_card:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refund_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->refund_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->inputs:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inputs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->inputs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest;->payment_method:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PostActionResultRequest{"

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
