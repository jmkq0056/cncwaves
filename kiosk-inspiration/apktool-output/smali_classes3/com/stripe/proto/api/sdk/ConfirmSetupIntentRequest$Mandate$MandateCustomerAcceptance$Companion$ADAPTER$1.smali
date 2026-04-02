.class public final Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ConfirmSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfirmSetupIntentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfirmSetupIntentRequest.kt\ncom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,729:1\n463#2,7:730\n1#3:737\n*S KotlinDebug\n*F\n+ 1 ConfirmSetupIntentRequest.kt\ncom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1\n*L\n537#1:730,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;",
        "offlineAdapter",
        "",
        "",
        "getOfflineAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "offlineAdapter$delegate",
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


# instance fields
.field private final offlineAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 502
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/sdk/jack_rabbit_service.proto"

    .line 496
    const-string v3, "type.googleapis.com/com.stripe.proto.api.sdk.ConfirmSetupIntentRequest.Mandate.MandateCustomerAcceptance"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    sget-object p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1$offlineAdapter$2;->INSTANCE:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1$offlineAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->offlineAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getOfflineAdapter()Lcom/squareup/wire/ProtoAdapter;
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

    .line 504
    iget-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->offlineAdapter$delegate:Lkotlin/Lazy;

    .line 505
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;
    .locals 9

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .line 730
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const-string v2, ""

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    .line 732
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    .line 543
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 542
    :cond_0
    sget-object v6, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 541
    :cond_1
    invoke-direct {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->getOfflineAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v5, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 540
    :cond_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 539
    :cond_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 736
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v7

    .line 546
    new-instance v1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    .line 547
    check-cast v2, Ljava/lang/String;

    .line 550
    check-cast v6, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    .line 546
    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;-><init>(Ljava/lang/String;JLjava/util/Map;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 496
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 518
    :cond_0
    iget-wide v0, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->accepted_at:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->accepted_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 519
    :cond_1
    invoke-direct {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->getOfflineAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->offline:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 520
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 521
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 496
    check-cast p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 526
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->getOfflineAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->offline:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 528
    iget-wide v0, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->accepted_at:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->accepted_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 529
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 496
    check-cast p2, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 509
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->type:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_0
    iget-wide v1, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->accepted_at:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->accepted_at:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    :cond_1
    invoke-direct {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->getOfflineAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->offline:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 496
    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;
    .locals 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 557
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 555
    invoke-static/range {v1 .. v9}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;->copy$default(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;Ljava/lang/String;JLjava/util/Map;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 496
    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    move-result-object p1

    return-object p1
.end method
