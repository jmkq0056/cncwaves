.class public final Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;
.super Lcom/squareup/wire/Message;
.source "RedeemedForOfflineConnectionToken.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;,
        Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B?\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJE\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0008\u0010\u0015\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;",
        "account_id",
        "",
        "stripe_session_token",
        "sdk_rpc_session_token",
        "livemode",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final account_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "accountId"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final sdk_rpc_session_token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "sdkRpcSessionToken"
        redacted = true
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final stripe_session_token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "stripeSessionToken"
        redacted = true
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->Companion:Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Companion;

    .line 186
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 185
    const-class v1, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 185
    new-instance v3, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 33
    iput-object p1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->stripe_session_token:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->sdk_rpc_session_token:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 75
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 29
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 121
    iget-object p1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 122
    iget-object p2, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->stripe_session_token:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 123
    iget-object p3, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->sdk_rpc_session_token:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 124
    iget-object p4, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 120
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 89
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->stripe_session_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->stripe_session_token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->sdk_rpc_session_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->sdk_rpc_session_token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 99
    iget v0, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->hashCode:I

    if-nez v0, :cond_4

    .line 101
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 102
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->stripe_session_token:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 104
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->sdk_rpc_session_token:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 106
    iput v0, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->newBuilder()Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;
    .locals 2

    .line 78
    new-instance v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->account_id:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->stripe_session_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->stripe_session_token:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->sdk_rpc_session_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->sdk_rpc_session_token:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->livemode:Ljava/lang/Boolean;

    .line 83
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->stripe_session_token:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "stripe_session_token=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->sdk_rpc_session_token:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const-string v2, "sdk_rpc_session_token=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "RedeemedForOfflineConnectionToken{"

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
