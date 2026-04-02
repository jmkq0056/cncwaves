.class public final Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "GenerateRestrictedAccessTokenResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGenerateRestrictedAccessTokenResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenerateRestrictedAccessTokenResponse.kt\ncom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,210:1\n463#2,7:211\n*S KotlinDebug\n*F\n+ 1 GenerateRestrictedAccessTokenResponse.kt\ncom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1\n*L\n179#1:211,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;",
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
            "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 151
    const-string v6, "src/proto/com/stripe/terminalauth/pub/api/authentication_service.proto"

    .line 145
    const-string v3, "type.googleapis.com/com.stripe.terminalauth.pub.api.GenerateRestrictedAccessTokenResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;
    .locals 12

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->RESTRICTED_TOKEN_ACCESS_TYPE_INVALID:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    .line 211
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-object v4, v3

    :goto_0
    move-object v3, v0

    .line 213
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v5

    const/4 v0, -0x1

    if-eq v5, v0, :cond_3

    const/4 v0, 0x1

    if-eq v5, v0, :cond_2

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1

    const/4 v0, 0x3

    if-eq v5, v0, :cond_0

    .line 188
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 187
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-wide v8, v5

    goto :goto_1

    .line 183
    :cond_1
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v6, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 217
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v10

    .line 191
    new-instance v5, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    .line 192
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 193
    move-object v7, v3

    check-cast v7, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    .line 191
    invoke-direct/range {v5 .. v10}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)V

    return-object v5
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 163
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    sget-object v1, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->RESTRICTED_TOKEN_ACCESS_TYPE_INVALID:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 164
    :cond_1
    iget-wide v0, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 165
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 170
    iget-wide v0, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 171
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    sget-object v1, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->RESTRICTED_TOKEN_ACCESS_TYPE_INVALID:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 172
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p2, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 155
    iget-object v1, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    sget-object v2, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->RESTRICTED_TOKEN_ACCESS_TYPE_INVALID:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_1
    iget-wide v1, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 145
    check-cast p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    .line 199
    invoke-static/range {v1 .. v8}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->copy$default(Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 145
    check-cast p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    move-result-object p1

    return-object p1
.end method
