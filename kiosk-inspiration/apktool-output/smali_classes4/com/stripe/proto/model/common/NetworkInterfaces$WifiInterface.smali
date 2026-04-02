.class public final Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;
.super Lcom/squareup/wire/Message;
.source "NetworkInterfaces.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/NetworkInterfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;,
        Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B/\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ0\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;",
        "mac_address",
        "",
        "network_connectivity_status",
        "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
        "connection",
        "Lcom/stripe/proto/model/common/WifiConnection;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final connection:Lcom/stripe/proto/model/common/WifiConnection;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.WifiConnection#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final mac_address:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "macAddress"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal_observability.pub.message.NetworkConnectivityStatus#ADAPTER"
        jsonName = "networkConnectivityStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->Companion:Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Companion;

    .line 496
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 495
    const-class v1, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 499
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 495
    new-instance v3, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;)V
    .locals 1

    const-string v0, "mac_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network_connectivity_status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 384
    iput-object p1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->mac_address:Ljava/lang/String;

    .line 393
    iput-object p2, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    .line 403
    iput-object p3, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 392
    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 402
    sget-object p2, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->NETWORK_CONNECTIVITY_STATUS_INVALID:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 411
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 383
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 453
    iget-object p1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->mac_address:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 454
    iget-object p2, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 455
    iget-object p3, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 456
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 452
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->copy(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;)Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;)Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;
    .locals 1

    const-string v0, "mac_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network_connectivity_status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    new-instance v0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 424
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->mac_address:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->mac_address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 427
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    iget-object v3, p1, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    if-eq v1, v3, :cond_4

    return v2

    .line 428
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    iget-object p1, p1, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 433
    iget v0, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->hashCode:I

    if-nez v0, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 436
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->mac_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 437
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 438
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/WifiConnection;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 439
    iput v0, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->newBuilder()Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;
    .locals 2

    .line 414
    new-instance v0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;-><init>()V

    .line 415
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->mac_address:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;->mac_address:Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    iput-object v1, v0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    .line 417
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    iput-object v1, v0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    .line 418
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 446
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mac_address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->mac_address:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network_connectivity_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v2, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;->connection:Lcom/stripe/proto/model/common/WifiConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "WifiInterface{"

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
