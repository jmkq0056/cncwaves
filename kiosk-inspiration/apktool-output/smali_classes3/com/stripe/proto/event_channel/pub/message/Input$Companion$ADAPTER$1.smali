.class public final Lcom/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "Input.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/event_channel/pub/message/Input;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Input.kt\ncom/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,307:1\n463#2,7:308\n1#3:315\n*S KotlinDebug\n*F\n+ 1 Input.kt\ncom/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1\n*L\n231#1:308,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/event_channel/pub/message/Input;",
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
            "Lcom/stripe/proto/event_channel/pub/message/Input;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 195
    const-string v6, "uppsala/src/main/proto/com/stripe/event_channel/pub/message/commands.proto"

    .line 189
    const-string v3, "type.googleapis.com/com.stripe.event_channel.pub.message.Input"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/Input;
    .locals 13

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 308
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    move-object v3, v0

    move-object v4, v5

    .line 310
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    const/4 v0, 0x1

    if-eq v8, v0, :cond_4

    const/4 v0, 0x2

    if-eq v8, v0, :cond_3

    const/4 v0, 0x3

    if-eq v8, v0, :cond_2

    const/4 v0, 0x4

    if-eq v8, v0, :cond_1

    const/4 v0, 0x5

    if-eq v8, v0, :cond_0

    .line 242
    invoke-virtual {p1, v8}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 241
    :cond_0
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 239
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v6, v0

    goto :goto_0

    .line 238
    :cond_3
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 234
    :cond_4
    :try_start_0
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    sget-object v9, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v8, v9, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_5
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v8

    .line 245
    new-instance v2, Lcom/stripe/proto/event_channel/pub/message/Input;

    .line 246
    check-cast v3, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 247
    check-cast v4, Lcom/stripe/proto/event_channel/pub/message/CustomText;

    .line 249
    check-cast v5, Lcom/stripe/proto/event_channel/pub/message/Selection;

    move v12, v6

    move-object v6, v5

    move v5, v12

    .line 245
    invoke-direct/range {v2 .. v8}, Lcom/stripe/proto/event_channel/pub/message/Input;-><init>(Lcom/stripe/proto/event_channel/pub/message/Input$InputType;Lcom/stripe/proto/event_channel/pub/message/CustomText;ZLcom/stripe/proto/event_channel/pub/message/Selection;Ljava/util/List;Lokio/ByteString;)V

    return-object v2
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/Input;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Input;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 209
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 210
    :cond_1
    iget-boolean v0, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->required:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 211
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 212
    :cond_3
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->toggles:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 213
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/Input;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/Input;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Input;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Input;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 218
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->toggles:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 219
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 220
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->required:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 221
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 222
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/event_channel/pub/message/Input;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/Input;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Input;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/event_channel/pub/message/Input;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 199
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_1
    iget-boolean v1, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->required:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->required:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_3
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->toggles:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 189
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Input;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/event_channel/pub/message/Input;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/event_channel/pub/message/Input;)Lcom/stripe/proto/event_channel/pub/message/Input;
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/CustomText;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/CustomText;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 257
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Selection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/event_channel/pub/message/Selection;

    :cond_1
    move-object v6, v1

    .line 258
    iget-object v0, p1, Lcom/stripe/proto/event_channel/pub/message/Input;->toggles:Ljava/util/List;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Toggle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v7

    .line 259
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    .line 255
    invoke-static/range {v2 .. v10}, Lcom/stripe/proto/event_channel/pub/message/Input;->copy$default(Lcom/stripe/proto/event_channel/pub/message/Input;Lcom/stripe/proto/event_channel/pub/message/Input$InputType;Lcom/stripe/proto/event_channel/pub/message/CustomText;ZLcom/stripe/proto/event_channel/pub/message/Selection;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/Input;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Input;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Input$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/event_channel/pub/message/Input;)Lcom/stripe/proto/event_channel/pub/message/Input;

    move-result-object p1

    return-object p1
.end method
