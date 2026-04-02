.class public final Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;
.super Lcom/squareup/wire/Message;
.source "QueryCollectDataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;,
        Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Companion;,
        Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;,
        Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001a\u001b\u001c\u001dB?\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ@\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;",
        "collected_data",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "status",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;",
        "error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "error_response",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;)V",
        "getError$annotations",
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
        "",
        "Builder",
        "Companion",
        "QueryCollectDataResponseError",
        "QueryCollectDataStatus",
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
            "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.ReaderCollectedData#ADAPTER"
        jsonName = "collectedData"
        oneofName = "collect_data_result"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final error:Lcom/stripe/proto/model/sdk/Error;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.Error#ADAPTER"
        oneofName = "collect_data_result"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.QueryCollectDataResponse$QueryCollectDataResponseError#ADAPTER"
        jsonName = "errorResponse"
        oneofName = "collect_data_result"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.QueryCollectDataResponse$QueryCollectDataStatus#ADAPTER"
        oneofName = "collect_data_result"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->Companion:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Companion;

    .line 194
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 193
    const-class v1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 197
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 193
    new-instance v3, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;-><init>(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    .line 55
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 64
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    const/4 p5, 0x0

    .line 76
    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of collected_data, status, error, error_response may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 73
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;-><init>(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 125
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 126
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 127
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 128
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 124
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->copy(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getError$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "error is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;-><init>(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    if-eq v1, v3, :cond_4

    return v2

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget v0, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->hashCode:I

    if-nez v0, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/ReaderCollectedData;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 108
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/Error;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 110
    iput v0, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->newBuilder()Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;
    .locals 2

    .line 82
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 84
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    .line 85
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 86
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    .line 87
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collected_data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error_response="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "QueryCollectDataResponse{"

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
