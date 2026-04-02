.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "MetricData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetricData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricData.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,249:1\n463#2,7:250\n1#3:257\n*S KotlinDebug\n*F\n+ 1 MetricData.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1\n*L\n214#1:250,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 179
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/message/observability_schema/observability_schema_model.proto"

    .line 173
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.message.observability_schema.MetricData"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1$tagsAdapter$2;->INSTANCE:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1$tagsAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->tagsAdapter$delegate:Lkotlin/Lazy;

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

    .line 181
    iget-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->tagsAdapter$delegate:Lkotlin/Lazy;

    .line 182
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;
    .locals 11

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    .line 213
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->METRIC_RESULT_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    .line 250
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    :goto_0
    move-object v3, v0

    .line 252
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    const/4 v0, 0x2

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-eq v7, v0, :cond_2

    const/4 v0, 0x4

    if-eq v7, v0, :cond_1

    const/4 v0, 0x5

    if-eq v7, v0, :cond_0

    .line 224
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 220
    :cond_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    sget-object v8, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v7, v8, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 217
    :cond_2
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 216
    :cond_3
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 256
    :cond_4
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 227
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    .line 228
    move-object v2, v5

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    .line 229
    check-cast v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    .line 231
    move-object v5, v3

    check-cast v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    move-object v3, v6

    move-object v6, p1

    .line 227
    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->tags:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 195
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->METRIC_RESULT_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 196
    :cond_0
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->event_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 198
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 203
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->event_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 205
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->METRIC_RESULT_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->tags:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 186
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->event_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->tags:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->METRIC_RESULT_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 173
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;
    .locals 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->event_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 238
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    :cond_1
    move-object v4, v1

    .line 239
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 236
    invoke-static/range {v2 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    move-result-object p1

    return-object p1
.end method
