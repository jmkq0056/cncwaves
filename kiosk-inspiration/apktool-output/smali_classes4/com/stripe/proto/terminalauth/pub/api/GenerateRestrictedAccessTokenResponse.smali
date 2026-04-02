.class public final Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;
.super Lcom/squareup/wire/Message;
.source "GenerateRestrictedAccessTokenResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;,
        Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;",
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B-\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ.\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;",
        "access_token",
        "",
        "access_type",
        "Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;",
        "expires_at",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)V",
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
            "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final access_token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "accessToken"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminalauth.pub.message.RestrictedTokenAccessType#ADAPTER"
        jsonName = "accessType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final expires_at:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "expiresAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->Companion:Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion;

    .line 146
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 145
    const-class v1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 149
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 145
    new-instance v3, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)V
    .locals 1

    const-string v0, "access_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "access_type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 32
    iput-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    .line 51
    iput-wide p3, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 40
    const-string p1, ""

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 50
    sget-object p2, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->RESTRICTED_TOKEN_ACCESS_TYPE_INVALID:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const-wide/16 p3, 0x0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 60
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_3
    move-object p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 31
    invoke-direct/range {p2 .. p7}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 102
    iget-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 103
    iget-object p2, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 104
    iget-wide p3, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_3
    move-object p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 101
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->copy(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;
    .locals 7

    const-string v0, "access_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "access_type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    iget-object v3, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    if-eq v1, v3, :cond_4

    return v2

    .line 77
    :cond_4
    iget-wide v3, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    iget-wide v5, p1, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 82
    iget v0, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->hashCode:I

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 85
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 86
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    invoke-virtual {v1}, Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 87
    iget-wide v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    iput v0, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->newBuilder()Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;
    .locals 3

    .line 63
    new-instance v0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->access_token:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    iput-object v1, v0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    .line 66
    iget-wide v1, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    iput-wide v1, v0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->expires_at:J

    .line 67
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 95
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "access_token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_token:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "access_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->access_type:Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expires_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;->expires_at:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "GenerateRestrictedAccessTokenResponse{"

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
