.class public final Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;
.super Lcom/squareup/wire/Message;
.source "CompleteCertificateOrderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;,
        Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion;,
        Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB?\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ@\u0010\u0011\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;",
        "certificate_chain",
        "",
        "",
        "status",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;",
        "retry_at",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "retry_after",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)V",
        "getRetry_at$annotations",
        "()V",
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
            "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final certificate_chain:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "certificateChain"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final retry_after:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "retryAfter"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final retry_at:Lcom/stripe/proto/model/common/InstantPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER"
        jsonName = "retryAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.CompleteCertificateOrderResponse$Status#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->Companion:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion;

    .line 200
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 199
    const-class v1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 203
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 199
    new-instance v3, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;",
            "Lcom/stripe/proto/model/common/InstantPb;",
            "J",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "certificate_chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "status"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 40
    iput-object p2, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    .line 51
    iput-object p3, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    .line 64
    iput-wide p4, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    .line 87
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 47
    sget-object p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->PENDING:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    .line 73
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p8, p6

    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 35
    invoke-direct/range {p2 .. p8}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 133
    iget-object p1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 134
    iget-object p2, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 135
    iget-object p3, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 136
    iget-wide p4, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    .line 137
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_4
    move-object p8, p6

    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 132
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->copy(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRetry_at$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "retry_at is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;",
            "Lcom/stripe/proto/model/common/InstantPb;",
            "J",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;"
        }
    .end annotation

    const-string v0, "certificate_chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    if-eq v1, v3, :cond_4

    return v2

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 106
    :cond_5
    iget-wide v3, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    iget-wide v5, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    iget v0, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->hashCode:I

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/InstantPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-wide v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    iput v0, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->newBuilder()Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;
    .locals 3

    .line 90
    new-instance v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->certificate_chain:Ljava/util/List;

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    .line 94
    iget-wide v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    iput-wide v1, v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->retry_after:J

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "certificate_chain="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v2, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retry_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retry_after="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CompleteCertificateOrderResponse{"

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
