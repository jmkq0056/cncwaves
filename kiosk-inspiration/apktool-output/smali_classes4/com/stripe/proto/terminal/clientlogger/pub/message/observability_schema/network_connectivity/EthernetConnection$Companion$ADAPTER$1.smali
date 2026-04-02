.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "EthernetConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEthernetConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EthernetConnection.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n463#2,7:183\n1#3:190\n*S KotlinDebug\n*F\n+ 1 EthernetConnection.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1\n*L\n155#1:183,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 131
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/message/observability_schema/network_connectivity/network_connectivity_model.proto"

    .line 125
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.message.observability_schema.network_connectivity.EthernetConnection"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;
    .locals 6

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 185
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 159
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 158
    :cond_0
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 157
    :cond_1
    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 162
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;

    .line 163
    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;

    .line 164
    check-cast v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;

    .line 162
    invoke-direct {v0, v2, v3, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;Lokio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 143
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 148
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 135
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 125
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 171
    :goto_0
    iget-object v2, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;

    if-eqz v2, :cond_1

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;

    .line 172
    :cond_1
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 169
    invoke-virtual {p1, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;

    move-result-object p1

    return-object p1
.end method
