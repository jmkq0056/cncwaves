.class public final Lcom/stripe/proto/net/rpc/base/RpcResponse;
.super Lcom/squareup/wire/Message;
.source "RpcResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;,
        Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BA\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000eJB\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0016R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;",
        "request_id",
        "",
        "rpc_error_code",
        "Lcom/stripe/proto/net/rpc/base/RpcEC;",
        "app_error_code",
        "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
        "error",
        "",
        "content",
        "Lokio/ByteString;",
        "unknownFields",
        "(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.net.rpc.base.ApplicationEC#ADAPTER"
        jsonName = "appErrorCode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final content:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final error:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final request_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "requestId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.net.rpc.base.RpcEC#ADAPTER"
        jsonName = "rpcErrorCode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->Companion:Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion;

    .line 204
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 203
    const-class v1, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 207
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 203
    new-instance v3, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/net/rpc/base/RpcResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/net/rpc/base/RpcResponse;-><init>(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)V
    .locals 1

    const-string v0, "rpc_error_code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app_error_code"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-wide p1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    .line 46
    iput-object p3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 55
    iput-object p4, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 64
    iput-object p5, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    .line 54
    sget-object v2, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x4

    if-eqz v3, :cond_2

    .line 63
    sget-object v3, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_3

    .line 71
    const-string v4, ""

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_4

    .line 82
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_5

    .line 83
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object p8, v6

    goto :goto_5

    :cond_5
    move-object p8, p7

    :goto_5
    move-object p1, p0

    move-wide p2, v0

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    .line 30
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/net/rpc/base/RpcResponse;-><init>(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/net/rpc/base/RpcResponse;JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/net/rpc/base/RpcResponse;
    .locals 8

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 133
    iget-wide p1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    .line 134
    iget-object p3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    .line 135
    iget-object p4, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    .line 136
    iget-object p5, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    .line 137
    iget-object p6, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    :cond_4
    move-object v6, p6

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_5
    move-object v0, p0

    move-object v7, p7

    .line 132
    invoke-virtual/range {v0 .. v7}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->copy(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)Lcom/stripe/proto/net/rpc/base/RpcResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)Lcom/stripe/proto/net/rpc/base/RpcResponse;
    .locals 9

    const-string v0, "rpc_error_code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app_error_code"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/net/rpc/base/RpcResponse;-><init>(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 100
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    iget-wide v5, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    iget-object v3, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    if-eq v1, v3, :cond_4

    return v2

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    iget-object v3, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    if-eq v1, v3, :cond_5

    return v2

    .line 103
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    iget-object p1, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 109
    iget v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->hashCode:I

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 112
    iget-wide v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-virtual {v1}, Lcom/stripe/proto/net/rpc/base/RpcEC;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-virtual {v1}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    iput v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->newBuilder()Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;
    .locals 3

    .line 86
    new-instance v0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;-><init>()V

    .line 87
    iget-wide v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    iput-wide v1, v0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->request_id:J

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    iput-object v1, v0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    iput-object v1, v0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->error:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->content:Lokio/ByteString;

    .line 92
    invoke-virtual {p0}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 124
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rpc_error_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app_error_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v0, "RpcResponse{"

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
