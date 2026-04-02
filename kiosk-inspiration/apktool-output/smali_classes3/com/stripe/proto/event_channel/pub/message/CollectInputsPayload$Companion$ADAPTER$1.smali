.class public final Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CollectInputsPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectInputsPayload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectInputsPayload.kt\ncom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,183:1\n463#2,7:184\n*S KotlinDebug\n*F\n+ 1 CollectInputsPayload.kt\ncom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1\n*L\n157#1:184,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;",
        "metadataAdapter",
        "",
        "",
        "getMetadataAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "metadataAdapter$delegate",
        "Lkotlin/Lazy;",
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


# instance fields
.field private final metadataAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 130
    const-string v6, "uppsala/src/main/proto/com/stripe/event_channel/pub/message/commands.proto"

    .line 124
    const-string v3, "type.googleapis.com/com.stripe.event_channel.pub.message.CollectInputsPayload"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object p1, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1$metadataAdapter$2;->INSTANCE:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1$metadataAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    .line 133
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;
    .locals 6

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 156
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 184
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 161
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 159
    :cond_1
    sget-object v4, Lcom/stripe/proto/event_channel/pub/message/Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 164
    new-instance v2, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-direct {v2, v0, v1, p1}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;-><init>(Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)V

    return-object v2
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->inputs:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 144
    invoke-direct {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 145
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 150
    invoke-direct {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->inputs:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 137
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->inputs:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    invoke-direct {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 124
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p1, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->inputs:Ljava/util/List;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v3

    .line 173
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .line 171
    invoke-static/range {v2 .. v7}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->copy$default(Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Ljava/util/List;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    move-result-object p1

    return-object p1
.end method
