.class public final Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "UpdateConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateConfig.kt\ncom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,600:1\n463#2,7:601\n*S KotlinDebug\n*F\n+ 1 UpdateConfig.kt\ncom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1\n*L\n505#1:601,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 489
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/debugconfig/debug_config_model.proto"

    .line 483
    const-string v3, "type.googleapis.com/com.stripe.proto.model.debugconfig.UpdateConfig.Channel.Release"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 603
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 505
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 506
    new-instance v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;

    invoke-direct {v0, p1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;-><init>(Lokio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 483
    check-cast p2, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 483
    check-cast p2, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;)I
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    return p1
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 483
    check-cast p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 511
    invoke-virtual {p1, v0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;->copy(Lokio/ByteString;)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 483
    check-cast p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;

    move-result-object p1

    return-object p1
.end method
