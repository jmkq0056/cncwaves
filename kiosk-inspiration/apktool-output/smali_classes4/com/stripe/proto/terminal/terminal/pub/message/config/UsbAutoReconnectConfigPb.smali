.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;
.super Lcom/squareup/wire/Message;
.source "UsbAutoReconnectConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;,
        Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B-\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;",
        "max_timeout_seconds",
        "",
        "max_retry_attempts",
        "attempt_delay_millis",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(IIJLokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final attempt_delay_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "attemptDelayMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final max_retry_attempts:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "maxRetryAttempts"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final max_timeout_seconds:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "maxTimeoutSeconds"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Companion;

    .line 139
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 138
    const-class v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 138
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;-><init>(IIJLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJLokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 27
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_timeout_seconds:I

    .line 36
    iput p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_retry_attempts:I

    .line 45
    iput-wide p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->attempt_delay_millis:J

    return-void
.end method

.method public synthetic constructor <init>(IIJLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const-wide/16 p3, 0x0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 54
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_3
    move-object p6, p5

    move-wide p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 26
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;-><init>(IIJLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;IIJLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 96
    iget p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_timeout_seconds:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 97
    iget p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_retry_attempts:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 98
    iget-wide p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->attempt_delay_millis:J

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_3
    move-object p7, p5

    move-wide p5, p3

    move p3, p1

    move p4, p2

    move-object p2, p0

    .line 95
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->copy(IIJLokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(IIJLokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;-><init>(IIJLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 69
    :cond_2
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_timeout_seconds:I

    iget v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_timeout_seconds:I

    if-eq v1, v3, :cond_3

    return v2

    .line 70
    :cond_3
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_retry_attempts:I

    iget v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_retry_attempts:I

    if-eq v1, v3, :cond_4

    return v2

    .line 71
    :cond_4
    iget-wide v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->attempt_delay_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->attempt_delay_millis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->hashCode:I

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 79
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_timeout_seconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 80
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_retry_attempts:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 81
    iget-wide v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->attempt_delay_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    iput v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;
    .locals 3

    .line 57
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;-><init>()V

    .line 58
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_timeout_seconds:I

    iput v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->max_timeout_seconds:I

    .line 59
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_retry_attempts:I

    iput v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->max_retry_attempts:I

    .line 60
    iget-wide v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->attempt_delay_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->attempt_delay_millis:J

    .line 61
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 89
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "max_timeout_seconds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_timeout_seconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "max_retry_attempts="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_retry_attempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attempt_delay_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->attempt_delay_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "UsbAutoReconnectConfigPb{"

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
