.class public final Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;
.super Lcom/squareup/wire/Message;
.source "AuthenticationMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;,
        Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u000bJ8\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;",
        "nonce",
        "Lokio/ByteString;",
        "signature",
        "",
        "authentication_key_id",
        "signature_algorithm",
        "Lcom/stripe/proto/terminalauth/pub/message/Algorithm;",
        "unknownFields",
        "(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final authentication_key_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "authenticationKeyId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final nonce:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final signature:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminalauth.pub.message.Algorithm#ADAPTER"
        jsonName = "signatureAlgorithm"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Companion;

    .line 192
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 191
    const-class v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 195
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 191
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;-><init>(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;)V
    .locals 1

    const-string v0, "nonce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authentication_key_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature_algorithm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->nonce:Lokio/ByteString;

    .line 46
    iput-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->authentication_key_id:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 42
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 28
    const-string v0, ""

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 77
    sget-object p4, Lcom/stripe/proto/terminalauth/pub/message/Algorithm;->ALGORITHM_INVALID:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 78
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 28
    invoke-direct/range {p2 .. p7}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;-><init>(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 124
    iget-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->nonce:Lokio/ByteString;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 125
    iget-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 126
    iget-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->authentication_key_id:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 127
    iget-object p4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 123
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->copy(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;
    .locals 7

    const-string v0, "nonce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authentication_key_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature_algorithm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;-><init>(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->nonce:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->nonce:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->authentication_key_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->authentication_key_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 97
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    iget-object p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    iget v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->hashCode:I

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->nonce:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->authentication_key_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 108
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    invoke-virtual {v1}, Lcom/stripe/proto/terminalauth/pub/message/Algorithm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    iput v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;
    .locals 2

    .line 81
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->nonce:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->nonce:Lokio/ByteString;

    .line 83
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->signature:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->authentication_key_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->authentication_key_id:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    .line 86
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 116
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nonce="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->nonce:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authentication_key_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->authentication_key_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature_algorithm="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/AuthenticationMessage;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/message/Algorithm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "AuthenticationMessage{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
