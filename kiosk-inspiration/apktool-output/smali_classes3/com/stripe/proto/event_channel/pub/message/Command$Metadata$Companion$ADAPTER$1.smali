.class public final Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "Command.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Command.kt\ncom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,762:1\n463#2,7:763\n*S KotlinDebug\n*F\n+ 1 Command.kt\ncom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1\n*L\n702#1:763,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;",
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
            "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 678
    const-string v6, "uppsala/src/main/proto/com/stripe/event_channel/pub/message/commands.proto"

    .line 672
    const-string v3, "type.googleapis.com/com.stripe.event_channel.pub.message.Command.Metadata"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;
    .locals 9

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->REQUESTER_INVALID:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    .line 763
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    .line 765
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 710
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 709
    :cond_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 705
    :cond_1
    :try_start_0
    sget-object v5, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 707
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v5, v5, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v6, v5}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 769
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 713
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    .line 714
    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    .line 715
    check-cast v3, Ljava/lang/String;

    .line 713
    invoke-direct {v1, v0, v3, p1}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;-><init>(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 672
    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->REQUESTER_INVALID:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 689
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->routing_info:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->routing_info:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 690
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 672
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 695
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->routing_info:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->routing_info:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 696
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->REQUESTER_INVALID:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 672
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 682
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->REQUESTER_INVALID:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 683
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->routing_info:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->routing_info:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 672
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 720
    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->copy$default(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 672
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    move-result-object p1

    return-object p1
.end method
