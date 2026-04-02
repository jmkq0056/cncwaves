.class public final Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CotsUxConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCotsUxConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CotsUxConfig.kt\ncom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,878:1\n463#2,7:879\n1#3:886\n*S KotlinDebug\n*F\n+ 1 CotsUxConfig.kt\ncom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1\n*L\n524#1:879,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;",
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
        "proto_release"
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
            "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 500
    const-string v6, "com/stripe/cots/aidlservice/cots_aidl_model.proto"

    .line 494
    const-string v3, "type.googleapis.com/com.stripe.cots.aidlservice.CotsUxConfig.TapZoneOverride"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;
    .locals 9

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->DEFAULT:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    .line 879
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 881
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 532
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 531
    :cond_0
    sget-object v3, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 527
    :cond_1
    :try_start_0
    sget-object v5, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 529
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v5, v5, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v6, v5}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 535
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    .line 536
    check-cast v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    .line 537
    check-cast v3, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    .line 535
    invoke-direct {v1, v0, v3, p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;-><init>(Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->indicator:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->DEFAULT:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->indicator:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 511
    :cond_0
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->positionOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->positionOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 512
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 494
    check-cast p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 517
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->positionOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->positionOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 518
    :cond_0
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->indicator:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->DEFAULT:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->indicator:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 494
    check-cast p2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 504
    iget-object v1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->indicator:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    sget-object v2, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->DEFAULT:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->indicator:Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 505
    :cond_0
    iget-object v1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->positionOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->positionOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 494
    check-cast p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    invoke-virtual {p0, p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;)Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iget-object v0, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->positionOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 544
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    .line 542
    invoke-static/range {v1 .. v6}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->copy$default(Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 494
    check-cast p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    invoke-virtual {p0, p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1;->redact(Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;)Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    move-result-object p1

    return-object p1
.end method
