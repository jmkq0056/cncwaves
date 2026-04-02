.class public final Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "HealthVoterStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/monitor/HealthVoterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHealthVoterStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HealthVoterStatus.kt\ncom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,264:1\n463#2,7:265\n*S KotlinDebug\n*F\n+ 1 HealthVoterStatus.kt\ncom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1\n*L\n230#1:265,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
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
        "common_release"
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
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 198
    const-string v6, "uppsala/src/main/proto/com/stripe/proto/model/monitor/health_model.proto"

    .line 192
    const-string v3, "type.googleapis.com/com.stripe.proto.model.monitor.HealthVoterStatus"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/monitor/HealthVoterStatus;
    .locals 11

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 228
    sget-object v0, Lcom/stripe/proto/model/monitor/HealthStatus;->HEALTH_STATUS_INVALID:Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 265
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v4, ""

    move-object v5, v4

    move-object v6, v5

    :goto_0
    move-object v4, v0

    .line 267
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

    .line 240
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 239
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 235
    :cond_1
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/monitor/HealthStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    sget-object v8, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v7, v8, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 233
    :cond_2
    sget-object v0, Lcom/stripe/proto/model/monitor/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 271
    :cond_4
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 243
    new-instance v1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    .line 244
    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    .line 246
    check-cast v4, Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 247
    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    move-object v6, p1

    .line 243
    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/monitor/HealthVoterStatus;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 211
    :cond_0
    sget-object v0, Lcom/stripe/proto/model/monitor/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 212
    iget-object v0, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    sget-object v2, Lcom/stripe/proto/model/monitor/HealthStatus;->HEALTH_STATUS_INVALID:Lcom/stripe/proto/model/monitor/HealthStatus;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/stripe/proto/model/monitor/HealthStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 213
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 214
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 192
    check-cast p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/monitor/HealthVoterStatus;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/monitor/HealthVoterStatus;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 219
    iget-object v0, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 220
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    sget-object v2, Lcom/stripe/proto/model/monitor/HealthStatus;->HEALTH_STATUS_INVALID:Lcom/stripe/proto/model/monitor/HealthStatus;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/stripe/proto/model/monitor/HealthStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 221
    :cond_1
    sget-object v0, Lcom/stripe/proto/model/monitor/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 222
    iget-object v0, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 192
    check-cast p2, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/monitor/HealthVoterStatus;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/monitor/HealthVoterStatus;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 202
    iget-object v1, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_0
    sget-object v1, Lcom/stripe/proto/model/monitor/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    iget-object v1, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    sget-object v3, Lcom/stripe/proto/model/monitor/HealthStatus;->HEALTH_STATUS_INVALID:Lcom/stripe/proto/model/monitor/HealthStatus;

    if-eq v1, v3, :cond_1

    sget-object v1, Lcom/stripe/proto/model/monitor/HealthStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object p1, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 192
    check-cast p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/monitor/HealthVoterStatus;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/monitor/HealthVoterStatus;)Lcom/stripe/proto/model/monitor/HealthVoterStatus;
    .locals 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    sget-object v1, Lcom/stripe/proto/model/monitor/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v4

    .line 254
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 252
    invoke-static/range {v2 .. v9}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->copy$default(Lcom/stripe/proto/model/monitor/HealthVoterStatus;Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 192
    check-cast p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/monitor/HealthVoterStatus;)Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    move-result-object p1

    return-object p1
.end method
