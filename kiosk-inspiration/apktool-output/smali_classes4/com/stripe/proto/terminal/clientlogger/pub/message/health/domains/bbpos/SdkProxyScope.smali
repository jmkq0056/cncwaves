.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;
.super Lcom/squareup/wire/Message;
.source "SdkProxyScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B?\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ@\u0010\u000b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;",
        "client_api_call",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "service_api_call",
        "client_callback",
        "service_callback",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "clientApiCall"
        oneofName = "event"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "clientCallback"
        oneofName = "event"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "serviceApiCall"
        oneofName = "event"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "serviceCallback"
        oneofName = "event"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Companion;

    .line 226
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 225
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 229
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 225
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 53
    iput-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 67
    iput-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 81
    iput-object p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p5, 0x0

    .line 93
    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of client_api_call, service_api_call, client_callback, service_callback may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 90
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 33
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 142
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 143
    iget-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 144
    iget-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 145
    iget-object p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 141
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 110
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 115
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 120
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->hashCode:I

    if-nez v0, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 123
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 124
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 127
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;
    .locals 2

    .line 99
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 101
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 102
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 104
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_api_call="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service_api_call="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_api_call:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_callback="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->client_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service_callback="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;->service_callback:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "SdkProxyScope{"

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
