.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostActionResultRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostActionResultRequest.kt\ncom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,2637:1\n463#2,7:2638\n*S KotlinDebug\n*F\n+ 1 PostActionResultRequest.kt\ncom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1\n*L\n2048#1:2638,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 2016
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/api/armada/armada_service.proto"

    .line 2010
    const-string v3, "type.googleapis.com/com.stripe.proto.api.armada.PostActionResultRequest.Input.Toggle"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
    .locals 13

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2046
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 2047
    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 2638
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-string v4, ""

    move-object v5, v4

    move-object v6, v5

    move-object v4, v1

    :goto_0
    move-object v1, v0

    .line 2640
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_2

    const/4 v0, 0x3

    if-eq v7, v0, :cond_1

    const/4 v0, 0x4

    if-eq v7, v0, :cond_0

    .line 2062
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 2058
    :cond_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2060
    sget-object v8, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v7, v8, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 2053
    :cond_1
    :try_start_1
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2055
    sget-object v8, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v7, v8, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 2051
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 2050
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 2644
    :cond_4
    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v12

    .line 2065
    new-instance v7, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    .line 2066
    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 2067
    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    .line 2068
    move-object v10, v1

    check-cast v10, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 2069
    move-object v11, v4

    check-cast v11, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 2065
    invoke-direct/range {v7 .. v12}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 2010
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2028
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2029
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2030
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2031
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2032
    :cond_3
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 2010
    check-cast p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 2037
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2038
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2039
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2040
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 2010
    check-cast p2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 2020
    iget-object v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2021
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2022
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    sget-object v2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2023
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    sget-object v2, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object p1, p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 2010
    check-cast p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2075
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 2074
    invoke-static/range {v1 .. v8}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;->copy$default(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2010
    check-cast p1, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    move-result-object p1

    return-object p1
.end method
