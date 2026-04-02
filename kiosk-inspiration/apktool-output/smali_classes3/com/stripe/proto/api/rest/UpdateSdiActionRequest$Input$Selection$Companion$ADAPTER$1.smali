.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateSdiActionRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateSdiActionRequest.kt\ncom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,2375:1\n463#2,7:2376\n*S KotlinDebug\n*F\n+ 1 UpdateSdiActionRequest.kt\ncom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1\n*L\n1103#1:2376,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 1079
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 1073
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.UpdateSdiActionRequest.Input.Selection"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;
    .locals 6

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 2376
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 2378
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 1107
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 1106
    :cond_0
    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1105
    :cond_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 2382
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 1110
    new-instance v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 1111
    check-cast v3, Ljava/lang/String;

    .line 1110
    invoke-direct {v1, v3, v0, p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;-><init>(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 1073
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1090
    :cond_0
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->choices:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1091
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1073
    check-cast p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 1096
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->choices:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1097
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1073
    check-cast p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 1083
    iget-object v1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1084
    :cond_0
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->choices:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1073
    check-cast p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1119
    iget-object v0, p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->choices:Ljava/util/List;

    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v0

    .line 1120
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v2, 0x0

    .line 1117
    invoke-virtual {p1, v2, v0, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->copy(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1073
    check-cast p1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    move-result-object p1

    return-object p1
.end method
