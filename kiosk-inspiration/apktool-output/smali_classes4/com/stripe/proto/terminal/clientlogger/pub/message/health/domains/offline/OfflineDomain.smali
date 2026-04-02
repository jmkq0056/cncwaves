.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;
.super Lcom/squareup/wire/Message;
.source "OfflineDomain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ4\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "stage",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
        "end_to_end",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
        "discrete",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope#ADAPTER"
        oneofName = "scope"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.EndToEndScope#ADAPTER"
        jsonName = "endToEnd"
        oneofName = "scope"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope#ADAPTER"
        oneofName = "scope"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Companion;

    .line 152
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 151
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 155
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 151
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    .line 39
    iput-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    .line 48
    iput-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    .line 59
    invoke-static {p1, p2, p3}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of stage, end_to_end, discrete may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 56
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 30
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 104
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 105
    iget-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 106
    iget-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 103
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 79
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 84
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->hashCode:I

    if-nez v0, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 87
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 90
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;
    .locals 2

    .line 65
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    .line 67
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    .line 68
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    .line 69
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 97
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->stage:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end_to_end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->end_to_end:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "discrete="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->discrete:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "OfflineDomain{"

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
