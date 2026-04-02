.class public final Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CompleteCertificateOrderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompleteCertificateOrderResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompleteCertificateOrderResponse.kt\ncom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,301:1\n463#2,7:302\n1#3:309\n*S KotlinDebug\n*F\n+ 1 CompleteCertificateOrderResponse.kt\ncom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1\n*L\n237#1:302,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;",
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
            "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 205
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/api/armada/armada_service.proto"

    .line 199
    const-string v3, "type.googleapis.com/com.stripe.proto.api.armada.CompleteCertificateOrderResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;
    .locals 12

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 234
    sget-object v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->PENDING:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    .line 302
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v3

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    move-wide v6, v5

    move-object v5, v1

    :goto_0
    move-object v1, v0

    .line 304
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_4

    const/4 v0, 0x1

    if-eq v8, v0, :cond_3

    const/4 v0, 0x2

    if-eq v8, v0, :cond_2

    const/4 v0, 0x3

    if-eq v8, v0, :cond_1

    const/4 v0, 0x4

    if-eq v8, v0, :cond_0

    .line 247
    invoke-virtual {p1, v8}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 246
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    goto :goto_1

    .line 245
    :cond_1
    sget-object v0, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 241
    :cond_2
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    sget-object v9, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v8, v9, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 239
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_4
    invoke-virtual {p1, v3, v4}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    move-object v3, v1

    .line 250
    new-instance v1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    .line 252
    check-cast v3, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    .line 253
    move-object v4, v5

    check-cast v4, Lcom/stripe/proto/model/common/InstantPb;

    move-wide v5, v6

    move-object v7, p1

    .line 250
    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 218
    iget-object v0, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    sget-object v1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->PENDING:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 219
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 220
    :cond_1
    iget-wide v0, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 221
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 199
    check-cast p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 226
    iget-wide v0, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 227
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 228
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    sget-object v1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->PENDING:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 229
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 199
    check-cast p2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 209
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->certificate_chain:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    iget-object v1, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    sget-object v2, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->PENDING:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_1
    iget-wide v1, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_after:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 199
    check-cast p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;
    .locals 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/proto/model/common/InstantPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/InstantPb;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 261
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v8, 0xb

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p1

    .line 259
    invoke-static/range {v1 .. v9}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;->copy$default(Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p1, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    move-result-object p1

    return-object p1
.end method
