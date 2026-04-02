.class public final Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ReaderFeatureFlags.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderFeatureFlags.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderFeatureFlags.kt\ncom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,5223:1\n463#2,7:5224\n*S KotlinDebug\n*F\n+ 1 ReaderFeatureFlags.kt\ncom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1\n*L\n5185#1:5224,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;",
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
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 5137
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/config_model.proto"

    .line 5131
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.ReaderFeatureFlags.AndroidSystemEventLoggingConfig"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5224
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move v9, v5

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    .line 5226
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 5195
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 5194
    :pswitch_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v15, v3

    goto :goto_0

    .line 5193
    :pswitch_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v14, v3

    goto :goto_0

    .line 5192
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v13, v3

    goto :goto_0

    .line 5191
    :pswitch_3
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v12, v3

    goto :goto_0

    .line 5190
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v11, v3

    goto :goto_0

    .line 5189
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v10, v3

    goto :goto_0

    .line 5188
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v9, v3

    goto :goto_0

    .line 5187
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    .line 5230
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v16

    .line 5198
    new-instance v6, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-direct/range {v6 .. v16}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;-><init>(JZZZZZZZLokio/ByteString;)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
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

    .line 5131
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5153
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->poll_interval_millis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->poll_interval_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5154
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_activity_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_activity_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5155
    :cond_1
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_service_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_service_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5156
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_died_enabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_died_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5157
    :cond_3
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->anr_enabled:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->anr_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5158
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->low_memory_enabled:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->low_memory_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5159
    :cond_5
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_crashed_too_much_enabled:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_crashed_too_much_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5160
    :cond_6
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->service_crashed_too_much_enabled:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->service_crashed_too_much_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5161
    :cond_7
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 5131
    check-cast p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5165
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 5166
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->service_crashed_too_much_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->service_crashed_too_much_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 5167
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_crashed_too_much_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_crashed_too_much_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 5168
    :cond_1
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->low_memory_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->low_memory_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 5169
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->anr_enabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->anr_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 5170
    :cond_3
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_died_enabled:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_died_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 5171
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_service_enabled:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_service_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 5172
    :cond_5
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_activity_enabled:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_activity_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 5173
    :cond_6
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->poll_interval_millis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->poll_interval_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 5131
    check-cast p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5140
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 5141
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->poll_interval_millis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->poll_interval_millis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5142
    :cond_0
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_activity_enabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_activity_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5143
    :cond_1
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_service_enabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->destroy_service_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5144
    :cond_2
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_died_enabled:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_died_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5145
    :cond_3
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->anr_enabled:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->anr_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5146
    :cond_4
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->low_memory_enabled:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->low_memory_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5147
    :cond_5
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_crashed_too_much_enabled:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->process_crashed_too_much_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5148
    :cond_6
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->service_crashed_too_much_enabled:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->service_crashed_too_much_enabled:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_7
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 5131
    check-cast p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;
    .locals 14

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5212
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v12, 0xff

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    .line 5211
    invoke-static/range {v1 .. v13}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->copy$default(Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;JZZZZZZZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5131
    check-cast p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    move-result-object p1

    return-object p1
.end method
