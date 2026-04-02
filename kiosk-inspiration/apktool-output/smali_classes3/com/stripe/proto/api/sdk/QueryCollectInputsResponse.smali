.class public final Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;
.super Lcom/squareup/wire/Message;
.source "QueryCollectInputsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;,
        Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Companion;,
        Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;,
        Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0016\u0017\u0018\u0019B3\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ4\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;",
        "pending",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;",
        "successfully_completed",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;",
        "failed",
        "Lcom/stripe/proto/model/sdk/Error;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V",
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
        "Pending",
        "SuccessfullyCompleted",
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
            "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final failed:Lcom/stripe/proto/model/sdk/Error;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.Error#ADAPTER"
        oneofName = "type_specific_response_fields"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$Pending#ADAPTER"
        oneofName = "type_specific_response_fields"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.QueryCollectInputsResponse$SuccessfullyCompleted#ADAPTER"
        jsonName = "successfullyCompleted"
        oneofName = "type_specific_response_fields"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->Companion:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Companion;

    .line 159
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 158
    const-class v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 162
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 158
    new-instance v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;-><init>(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    .line 45
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    .line 54
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    .line 65
    invoke-static {p1, p2, p3}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of pending, successfully_completed, failed may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 62
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 36
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;-><init>(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 110
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 111
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 112
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 109
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->copy(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;-><init>(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 90
    iget v0, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->hashCode:I

    if-nez v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/Error;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 96
    iput v0, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->newBuilder()Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;
    .locals 2

    .line 71
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    .line 73
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    .line 74
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->failed:Lcom/stripe/proto/model/sdk/Error;

    .line 75
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pending="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "successfully_completed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "QueryCollectInputsResponse{"

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
