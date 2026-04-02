.class public final Lcom/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "Choice.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/event_channel/pub/message/Choice;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChoice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Choice.kt\ncom/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,204:1\n463#2,7:205\n*S KotlinDebug\n*F\n+ 1 Choice.kt\ncom/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1\n*L\n147#1:205,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/event_channel/pub/message/Choice;",
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
            "Lcom/stripe/proto/event_channel/pub/message/Choice;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 123
    const-string v6, "uppsala/src/main/proto/com/stripe/event_channel/pub/message/commands.proto"

    .line 117
    const-string v3, "type.googleapis.com/com.stripe.event_channel.pub.message.Choice"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/Choice;
    .locals 9

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->STYLE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    .line 205
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    .line 207
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 155
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 154
    :cond_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 150
    :cond_1
    :try_start_0
    sget-object v5, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 152
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v5, v5, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v6, v5}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 158
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Choice;

    .line 159
    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    .line 160
    check-cast v3, Ljava/lang/String;

    .line 158
    invoke-direct {v1, v0, v3, p1}, Lcom/stripe/proto/event_channel/pub/message/Choice;-><init>(Lcom/stripe/proto/event_channel/pub/message/Choice$Style;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/Choice;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Choice;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Choice;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->STYLE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Choice;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 134
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Choice;->value_:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Choice;->value_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 135
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/Choice;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/Choice;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Choice;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Choice;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/Choice;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 140
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Choice;->value_:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Choice;->value_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 141
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Choice;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->STYLE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/event_channel/pub/message/Choice;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/Choice;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Choice;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/event_channel/pub/message/Choice;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/Choice;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 127
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Choice;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->STYLE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Choice;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Choice;->value_:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/Choice;->value_:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 117
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Choice;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/event_channel/pub/message/Choice;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/event_channel/pub/message/Choice;)Lcom/stripe/proto/event_channel/pub/message/Choice;
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 165
    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/event_channel/pub/message/Choice;->copy$default(Lcom/stripe/proto/event_channel/pub/message/Choice;Lcom/stripe/proto/event_channel/pub/message/Choice$Style;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/Choice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Choice;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Choice$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/event_channel/pub/message/Choice;)Lcom/stripe/proto/event_channel/pub/message/Choice;

    move-result-object p1

    return-object p1
.end method
