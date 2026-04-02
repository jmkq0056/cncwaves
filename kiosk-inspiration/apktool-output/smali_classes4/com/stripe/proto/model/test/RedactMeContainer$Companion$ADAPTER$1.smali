.class public final Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RedactMeContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/test/RedactMeContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/test/RedactMeContainer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRedactMeContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedactMeContainer.kt\ncom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n463#2,7:322\n1#3:329\n*S KotlinDebug\n*F\n+ 1 RedactMeContainer.kt\ncom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1\n*L\n282#1:322,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000G\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R-\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\r\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "com/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/test/RedactMeContainer;",
        "map_dont_redact_mesAdapter",
        "",
        "",
        "Lcom/stripe/proto/model/test/DontRedactMe;",
        "getMap_dont_redact_mesAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "map_dont_redact_mesAdapter$delegate",
        "Lkotlin/Lazy;",
        "map_redact_mesAdapter",
        "Lcom/stripe/proto/model/test/RedactMe;",
        "getMap_redact_mesAdapter",
        "map_redact_mesAdapter$delegate",
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
.field private final map_dont_redact_mesAdapter$delegate:Lkotlin/Lazy;

.field private final map_redact_mesAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/model/test/RedactMeContainer;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 236
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/test/redaction.proto"

    .line 230
    const-string v3, "type.googleapis.com/com.stripe.proto.model.test.RedactMeContainer"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object p1, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1$map_redact_mesAdapter$2;->INSTANCE:Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1$map_redact_mesAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->map_redact_mesAdapter$delegate:Lkotlin/Lazy;

    .line 242
    sget-object p1, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1$map_dont_redact_mesAdapter$2;->INSTANCE:Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1$map_dont_redact_mesAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->map_dont_redact_mesAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMap_dont_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/test/DontRedactMe;",
            ">;>;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->map_dont_redact_mesAdapter$delegate:Lkotlin/Lazy;

    .line 242
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method private final getMap_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/test/RedactMe;",
            ">;>;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->map_redact_mesAdapter$delegate:Lkotlin/Lazy;

    .line 239
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/test/RedactMeContainer;
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 278
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    .line 322
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v5, v2

    .line 324
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    packed-switch v8, :pswitch_data_0

    .line 290
    invoke-virtual {p1, v8}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 289
    :pswitch_0
    invoke-direct {p0}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->getMap_dont_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 288
    :pswitch_1
    sget-object v8, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :pswitch_2
    sget-object v5, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 286
    :pswitch_3
    invoke-direct {p0}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->getMap_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 285
    :pswitch_4
    sget-object v8, Lcom/stripe/proto/model/test/RedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :pswitch_5
    sget-object v2, Lcom/stripe/proto/model/test/RedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v8

    .line 293
    new-instance v1, Lcom/stripe/proto/model/test/RedactMeContainer;

    .line 294
    check-cast v2, Lcom/stripe/proto/model/test/RedactMe;

    .line 297
    check-cast v5, Lcom/stripe/proto/model/test/DontRedactMe;

    .line 293
    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/model/test/RedactMeContainer;-><init>(Lcom/stripe/proto/model/test/RedactMe;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/test/DontRedactMe;Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/test/RedactMeContainer;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/test/RedactMeContainer;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->redact_me:Lcom/stripe/proto/model/test/RedactMe;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/test/RedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->redact_me:Lcom/stripe/proto/model/test/RedactMe;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 257
    :cond_0
    sget-object v0, Lcom/stripe/proto/model/test/RedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->repeated_redact_mes:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 258
    invoke-direct {p0}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->getMap_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->map_redact_mes:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 259
    iget-object v0, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 260
    :cond_1
    sget-object v0, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->repeated_dont_redact_mes:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 261
    invoke-direct {p0}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->getMap_dont_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->map_dont_redact_mes:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 262
    invoke-virtual {p2}, Lcom/stripe/proto/model/test/RedactMeContainer;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p2, Lcom/stripe/proto/model/test/RedactMeContainer;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/test/RedactMeContainer;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/test/RedactMeContainer;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Lcom/stripe/proto/model/test/RedactMeContainer;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 267
    invoke-direct {p0}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->getMap_dont_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->map_dont_redact_mes:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 268
    sget-object v0, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->repeated_dont_redact_mes:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 269
    iget-object v0, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->getMap_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->map_redact_mes:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 271
    sget-object v0, Lcom/stripe/proto/model/test/RedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->repeated_redact_mes:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 272
    iget-object v0, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->redact_me:Lcom/stripe/proto/model/test/RedactMe;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/test/RedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/test/RedactMeContainer;->redact_me:Lcom/stripe/proto/model/test/RedactMe;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p2, Lcom/stripe/proto/model/test/RedactMeContainer;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/test/RedactMeContainer;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/test/RedactMeContainer;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lcom/stripe/proto/model/test/RedactMeContainer;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 246
    iget-object v1, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->redact_me:Lcom/stripe/proto/model/test/RedactMe;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/test/RedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->redact_me:Lcom/stripe/proto/model/test/RedactMe;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    :cond_0
    sget-object v1, Lcom/stripe/proto/model/test/RedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->repeated_redact_mes:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    invoke-direct {p0}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->getMap_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->map_redact_mes:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    iget-object v1, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_1
    sget-object v1, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->repeated_dont_redact_mes:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    invoke-direct {p0}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->getMap_dont_redact_mesAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x6

    iget-object p1, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->map_dont_redact_mes:Ljava/util/Map;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 230
    check-cast p1, Lcom/stripe/proto/model/test/RedactMeContainer;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/test/RedactMeContainer;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/test/RedactMeContainer;)Lcom/stripe/proto/model/test/RedactMeContainer;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 307
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 308
    iget-object v0, p1, Lcom/stripe/proto/model/test/RedactMeContainer;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/proto/model/test/DontRedactMe;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/test/DontRedactMe;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 309
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 310
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 311
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v2, 0x0

    move-object v1, p1

    .line 304
    invoke-virtual/range {v1 .. v8}, Lcom/stripe/proto/model/test/RedactMeContainer;->copy(Lcom/stripe/proto/model/test/RedactMe;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/test/DontRedactMe;Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/model/test/RedactMeContainer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p1, Lcom/stripe/proto/model/test/RedactMeContainer;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/test/RedactMeContainer$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/test/RedactMeContainer;)Lcom/stripe/proto/model/test/RedactMeContainer;

    move-result-object p1

    return-object p1
.end method
