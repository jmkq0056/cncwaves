.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;
.super Lcom/squareup/wire/Message;
.source "LoggingConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;,
        Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u0019\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;",
        "network_latency_threshold_millis",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(JLokio/ByteString;)V",
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
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final network_latency_threshold_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "networkLatencyThresholdMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Companion;

    .line 89
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 88
    const-class v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 88
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;-><init>(JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 27
    iput-wide p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->network_latency_threshold_millis:J

    return-void
.end method

.method public synthetic constructor <init>(JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 36
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;-><init>(JLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;JLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 69
    iget-wide p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->network_latency_threshold_millis:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->copy(JLokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(JLokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;-><init>(JLokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 49
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->network_latency_threshold_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->network_latency_threshold_millis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 54
    iget v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->hashCode:I

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 57
    iget-wide v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->network_latency_threshold_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    iput v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;
    .locals 3

    .line 39
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;-><init>()V

    .line 40
    iget-wide v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->network_latency_threshold_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;->network_latency_threshold_millis:J

    .line 41
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 65
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network_latency_threshold_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;->network_latency_threshold_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "LoggingConfigPb{"

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
