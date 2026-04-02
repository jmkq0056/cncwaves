.class public final Lcom/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CotsUxConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsUxConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCotsUxConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CotsUxConfig.kt\ncom/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,878:1\n463#2,7:879\n1#3:886\n*S KotlinDebug\n*F\n+ 1 CotsUxConfig.kt\ncom/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1\n*L\n173#1:879,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig;",
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
            "Lcom/stripe/cots/aidlservice/CotsUxConfig;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 145
    const-string v6, "com/stripe/cots/aidlservice/cots_aidl_model.proto"

    .line 139
    const-string v3, "type.googleapis.com/com.stripe.cots.aidlservice.CotsUxConfig"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/cots/aidlservice/CotsUxConfig;
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->LIGHT:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    .line 879
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 881
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

    .line 182
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 178
    :cond_0
    :try_start_0
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 180
    sget-object v7, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v6, v6, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v7, v6}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_1
    sget-object v4, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 175
    :cond_2
    sget-object v3, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 885
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 185
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsUxConfig;

    .line 186
    check-cast v3, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    .line 187
    check-cast v4, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    .line 188
    check-cast v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    .line 185
    invoke-direct {v1, v3, v4, v0, p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig;-><init>(Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/cots/aidlservice/CotsUxConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/cots/aidlservice/CotsUxConfig;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->tapZoneOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->tapZoneOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 157
    :cond_0
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->colorScheme:Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->colorScheme:Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 158
    :cond_1
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->darkMode:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->LIGHT:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->darkMode:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 159
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/cots/aidlservice/CotsUxConfig;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/cots/aidlservice/CotsUxConfig;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/cots/aidlservice/CotsUxConfig;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Lcom/stripe/cots/aidlservice/CotsUxConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 164
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->darkMode:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->LIGHT:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->darkMode:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 165
    :cond_0
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->colorScheme:Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->colorScheme:Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 166
    :cond_1
    iget-object v0, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->tapZoneOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;->tapZoneOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p2, Lcom/stripe/cots/aidlservice/CotsUxConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/cots/aidlservice/CotsUxConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/cots/aidlservice/CotsUxConfig;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 149
    iget-object v1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;->tapZoneOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;->tapZoneOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_0
    iget-object v1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;->colorScheme:Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;->colorScheme:Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_1
    iget-object v1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;->darkMode:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    sget-object v2, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->LIGHT:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;->darkMode:Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 139
    check-cast p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/cots/aidlservice/CotsUxConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/cots/aidlservice/CotsUxConfig;)Lcom/stripe/cots/aidlservice/CotsUxConfig;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;->tapZoneOverride:Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 195
    :goto_0
    iget-object v0, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;->colorScheme:Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    :cond_1
    move-object v4, v1

    .line 196
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    .line 193
    invoke-static/range {v2 .. v8}, Lcom/stripe/cots/aidlservice/CotsUxConfig;->copy$default(Lcom/stripe/cots/aidlservice/CotsUxConfig;Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/cots/aidlservice/CotsUxConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$Companion$ADAPTER$1;->redact(Lcom/stripe/cots/aidlservice/CotsUxConfig;)Lcom/stripe/cots/aidlservice/CotsUxConfig;

    move-result-object p1

    return-object p1
.end method
