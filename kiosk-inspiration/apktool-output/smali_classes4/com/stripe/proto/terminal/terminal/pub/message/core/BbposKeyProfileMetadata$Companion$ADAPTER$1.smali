.class public final Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "BbposKeyProfileMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposKeyProfileMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposKeyProfileMetadata.kt\ncom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,360:1\n463#2,7:361\n*S KotlinDebug\n*F\n+ 1 BbposKeyProfileMetadata.kt\ncom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1\n*L\n283#1:361,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
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
            "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 243
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/core/terminal_common.proto"

    .line 237
    const-string v3, "type.googleapis.com/com.stripe.terminal.terminal.pub.message.core.BbposKeyProfileMetadata"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->KEY_PROFILE__P_2_PE_TYPE_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    .line 361
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-string v4, ""

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    move v13, v5

    move v14, v13

    move-object v4, v0

    move-object v5, v7

    .line 363
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_6

    const/4 v0, 0x1

    if-eq v8, v0, :cond_5

    const/4 v0, 0x2

    if-eq v8, v0, :cond_4

    const/4 v0, 0x3

    if-eq v8, v0, :cond_3

    const/4 v0, 0x5

    if-eq v8, v0, :cond_2

    const/4 v0, 0x6

    if-eq v8, v0, :cond_1

    const/4 v0, 0x7

    if-eq v8, v0, :cond_0

    .line 295
    invoke-virtual {v1, v8}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 289
    :cond_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    sget-object v9, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v8, v9, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v14, v0

    goto :goto_0

    .line 293
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v13, v0

    goto :goto_0

    .line 287
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 286
    :cond_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 285
    :cond_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 367
    :cond_6
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v15

    .line 298
    new-instance v8, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 299
    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 300
    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 301
    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    .line 302
    move-object v12, v4

    check-cast v12, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    .line 298
    invoke-direct/range {v8 .. v15}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)V

    return-object v8
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 237
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 258
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 259
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 260
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->KEY_PROFILE__P_2_PE_TYPE_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 261
    :cond_3
    iget-boolean v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 262
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 263
    :cond_5
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 268
    iget-boolean v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 269
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 270
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->KEY_PROFILE__P_2_PE_TYPE_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 271
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 272
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 273
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 247
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->KEY_PROFILE__P_2_PE_TYPE_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    :cond_3
    iget-boolean v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_4
    iget-boolean v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_5
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 237
    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 309
    invoke-static/range {v1 .. v10}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 237
    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    move-result-object p1

    return-object p1
.end method
