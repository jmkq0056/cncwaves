.class public final Lcom/stripe/proto/model/debugconfig/UpdateConfig;
.super Lcom/squareup/wire/Message;
.source "UpdateConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;,
        Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;,
        Lcom/stripe/proto/model/debugconfig/UpdateConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig;",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018BC\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJD\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;",
        "channel",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;",
        "disabled",
        "",
        "forceTms",
        "debugLogging",
        "bypassAppInstall",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Channel",
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
            "Lcom/stripe/proto/model/debugconfig/UpdateConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bypassAppInstall:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.debugconfig.UpdateConfig$Channel#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final debugLogging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final disabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final forceTms:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->Companion:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Companion;

    .line 223
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 222
    const-class v1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 226
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 222
    new-instance v3, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;-><init>(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    .line 49
    iput-boolean p2, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->disabled:Z

    .line 60
    iput-boolean p3, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->forceTms:Z

    .line 71
    iput-boolean p4, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->debugLogging:Z

    .line 83
    iput-boolean p5, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->bypassAppInstall:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 91
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    .line 30
    invoke-direct/range {p2 .. p8}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;-><init>(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/debugconfig/UpdateConfig;Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/debugconfig/UpdateConfig;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 141
    iget-object p1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 142
    iget-boolean p2, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->disabled:Z

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 143
    iget-boolean p3, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->forceTms:Z

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 144
    iget-boolean p4, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->debugLogging:Z

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 145
    iget-boolean p5, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->bypassAppInstall:Z

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    .line 140
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->copy(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;)Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;)Lcom/stripe/proto/model/debugconfig/UpdateConfig;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;-><init>(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    invoke-virtual {p1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    iget-object v3, p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 109
    :cond_3
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->disabled:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->disabled:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 110
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->forceTms:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->forceTms:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 111
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->debugLogging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->debugLogging:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 112
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->bypassAppInstall:Z

    iget-boolean p1, p1, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->bypassAppInstall:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 117
    iget v0, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->hashCode:I

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 121
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->disabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 122
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->forceTms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 123
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->debugLogging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 124
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->bypassAppInstall:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    iput v0, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->newBuilder()Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;
    .locals 2

    .line 94
    new-instance v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    iput-object v1, v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    .line 96
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->disabled:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->disabled:Z

    .line 97
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->forceTms:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->forceTms:Z

    .line 98
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->debugLogging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->debugLogging:Z

    .line 99
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->bypassAppInstall:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->bypassAppInstall:Z

    .line 100
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "channel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->disabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forceTms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->forceTms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "debugLogging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->debugLogging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bypassAppInstall="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;->bypassAppInstall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "UpdateConfig{"

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
