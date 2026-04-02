.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "HealthMetricResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHealthMetricResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HealthMetricResult.kt\ncom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,243:1\n463#2,7:244\n1#3:251\n*S KotlinDebug\n*F\n+ 1 HealthMetricResult.kt\ncom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1\n*L\n185#1:244,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;",
        "tagsAdapter",
        "",
        "",
        "getTagsAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "tagsAdapter$delegate",
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
.field private final tagsAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 154
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/api/client_logger_service.proto"

    .line 148
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.api.HealthMetricResult"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1$tagsAdapter$2;->INSTANCE:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1$tagsAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->tagsAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;
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

    .line 156
    iget-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->tagsAdapter$delegate:Lkotlin/Lazy;

    .line 157
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 184
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->OK:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    .line 244
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 246
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 194
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 190
    :cond_0
    :try_start_0
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 192
    sget-object v7, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v6, v6, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v7, v6}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 187
    :cond_2
    sget-object v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 197
    new-instance v2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    .line 198
    check-cast v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    .line 200
    check-cast v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    .line 197
    invoke-direct {v2, v4, v0, v1, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;Lokio/ByteString;)V

    return-object v2
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->tags:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 170
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->OK:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 171
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 176
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->OK:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->tags:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 178
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 161
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->tags:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->OK:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 148
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;)Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 207
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 205
    invoke-static/range {v1 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;)Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    move-result-object p1

    return-object p1
.end method
