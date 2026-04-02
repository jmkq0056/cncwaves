.class public final Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;
.super Lcom/squareup/wire/Message;
.source "EthernetConnection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;,
        Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;",
        "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B\'\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;",
        "connected",
        "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;",
        "disconnected",
        "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.observability.schema.connectivity.EthernetConnected#ADAPTER"
        oneofName = "ethernet_connection"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.observability.schema.connectivity.EthernetDisconnected#ADAPTER"
        oneofName = "ethernet_connection"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->Companion:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Companion;

    .line 126
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 125
    const-class v1, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 129
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 125
    new-instance v3, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;-><init>(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    .line 39
    iput-object p2, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    .line 50
    invoke-static {p1, p2}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of connected, disconnected may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 47
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 30
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;-><init>(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 91
    iget-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 92
    iget-object p2, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->unknownFields()Lokio/ByteString;

    move-result-object p3

    .line 90
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->copy(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;)Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;)Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;-><init>(Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;

    invoke-virtual {p1}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    iget-object v3, p1, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    iget-object p1, p1, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 73
    iget v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->hashCode:I

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 76
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 77
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 78
    iput v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->newBuilder()Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;
    .locals 2

    .line 56
    new-instance v0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    iput-object v1, v0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    .line 58
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    iput-object v1, v0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    .line 59
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 85
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->connected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnected;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;->disconnected:Lcom/stripe/proto/model/observability/schema/connectivity/EthernetDisconnected;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "EthernetConnection{"

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
