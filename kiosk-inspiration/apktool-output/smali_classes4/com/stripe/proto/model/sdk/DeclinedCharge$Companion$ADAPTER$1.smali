.class public final Lcom/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "DeclinedCharge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/DeclinedCharge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/sdk/DeclinedCharge;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeclinedCharge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeclinedCharge.kt\ncom/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n463#2,7:219\n1#3:226\n*S KotlinDebug\n*F\n+ 1 DeclinedCharge.kt\ncom/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1\n*L\n189#1:219,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/sdk/DeclinedCharge;",
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
            "Lcom/stripe/proto/model/sdk/DeclinedCharge;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 161
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/sdk/rabbit_tender.proto"

    .line 155
    const-string v3, "type.googleapis.com/com.stripe.proto.model.sdk.DeclinedCharge"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/sdk/DeclinedCharge;
    .locals 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v4, v3

    .line 221
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    .line 194
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 192
    :cond_0
    sget-object v3, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 193
    :cond_1
    sget-object v4, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 191
    :cond_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 197
    new-instance v0, Lcom/stripe/proto/model/sdk/DeclinedCharge;

    .line 198
    check-cast v2, Ljava/lang/String;

    .line 199
    check-cast v3, Lcom/stripe/proto/model/rest/Source;

    .line 200
    check-cast v4, Lcom/stripe/proto/model/sdk/Error;

    .line 197
    invoke-direct {v0, v2, v3, v4, p1}, Lcom/stripe/proto/model/sdk/DeclinedCharge;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/sdk/DeclinedCharge;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/sdk/DeclinedCharge;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->charge_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->charge_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 173
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 174
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 175
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/model/sdk/DeclinedCharge;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/sdk/DeclinedCharge;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/sdk/DeclinedCharge;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Lcom/stripe/proto/model/sdk/DeclinedCharge;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 180
    iget-object v0, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 181
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 182
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->charge_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;->charge_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p2, Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/sdk/DeclinedCharge;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/sdk/DeclinedCharge;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Lcom/stripe/proto/model/sdk/DeclinedCharge;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 165
    iget-object v1, p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->charge_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->charge_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object p1, p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 155
    check-cast p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/sdk/DeclinedCharge;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/sdk/DeclinedCharge;)Lcom/stripe/proto/model/sdk/DeclinedCharge;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->source:Lcom/stripe/proto/model/rest/Source;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/Source;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 207
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/sdk/Error;

    :cond_1
    move-object v5, v1

    .line 208
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    .line 205
    invoke-static/range {v2 .. v8}, Lcom/stripe/proto/model/sdk/DeclinedCharge;->copy$default(Lcom/stripe/proto/model/sdk/DeclinedCharge;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/sdk/DeclinedCharge;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/sdk/DeclinedCharge$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/sdk/DeclinedCharge;)Lcom/stripe/proto/model/sdk/DeclinedCharge;

    move-result-object p1

    return-object p1
.end method
