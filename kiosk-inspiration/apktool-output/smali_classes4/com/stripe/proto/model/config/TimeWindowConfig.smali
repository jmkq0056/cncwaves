.class public final Lcom/stripe/proto/model/config/TimeWindowConfig;
.super Lcom/squareup/wire/Message;
.source "TimeWindowConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;,
        Lcom/stripe/proto/model/config/TimeWindowConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/TimeWindowConfig;",
        "Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B1\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ2\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/TimeWindowConfig;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;",
        "start_time",
        "Lcom/stripe/proto/model/common/TimeOfDayPb;",
        "duration",
        "Lcom/stripe/proto/model/common/DurationPb;",
        "can_override_locally",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/config/TimeWindowConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/TimeWindowConfig$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final can_override_locally:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "canOverrideLocally"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final duration:Lcom/stripe/proto/model/common/DurationPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DurationPb#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.TimeOfDayPb#ADAPTER"
        jsonName = "startTime"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/TimeWindowConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/TimeWindowConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/TimeWindowConfig;->Companion:Lcom/stripe/proto/model/config/TimeWindowConfig$Companion;

    .line 157
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 156
    const-class v1, Lcom/stripe/proto/model/config/TimeWindowConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 160
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 156
    new-instance v3, Lcom/stripe/proto/model/config/TimeWindowConfig$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/TimeWindowConfig$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/TimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/config/TimeWindowConfig;-><init>(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/stripe/proto/model/config/TimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 32
    iput-object p1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->duration:Lcom/stripe/proto/model/common/DurationPb;

    .line 55
    iput-boolean p3, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->can_override_locally:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 64
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 28
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/config/TimeWindowConfig;-><init>(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/TimeWindowConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 106
    iget-object p1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 107
    iget-object p2, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->duration:Lcom/stripe/proto/model/common/DurationPb;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 108
    iget-boolean p3, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->can_override_locally:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/TimeWindowConfig;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 105
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/config/TimeWindowConfig;->copy(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;)Lcom/stripe/proto/model/config/TimeWindowConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;)Lcom/stripe/proto/model/config/TimeWindowConfig;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/stripe/proto/model/config/TimeWindowConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/model/config/TimeWindowConfig;-><init>(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;ZLokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 77
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/TimeWindowConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/TimeWindowConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/TimeWindowConfig;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/TimeWindowConfig;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/TimeWindowConfig;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->duration:Lcom/stripe/proto/model/common/DurationPb;

    iget-object v3, p1, Lcom/stripe/proto/model/config/TimeWindowConfig;->duration:Lcom/stripe/proto/model/common/DurationPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 81
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->can_override_locally:Z

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/TimeWindowConfig;->can_override_locally:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 86
    iget v0, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->hashCode:I

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/TimeWindowConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/TimeOfDayPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->duration:Lcom/stripe/proto/model/common/DurationPb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DurationPb;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 91
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->can_override_locally:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    iput v0, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/TimeWindowConfig;->newBuilder()Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;
    .locals 2

    .line 67
    new-instance v0, Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    .line 69
    iget-object v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->duration:Lcom/stripe/proto/model/common/DurationPb;

    iput-object v1, v0, Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;->duration:Lcom/stripe/proto/model/common/DurationPb;

    .line 70
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->can_override_locally:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;->can_override_locally:Z

    .line 71
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/TimeWindowConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/TimeWindowConfig$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 99
    iget-object v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start_time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->start_time:Lcom/stripe/proto/model/common/TimeOfDayPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->duration:Lcom/stripe/proto/model/common/DurationPb;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duration="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->duration:Lcom/stripe/proto/model/common/DurationPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can_override_locally="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/TimeWindowConfig;->can_override_locally:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "TimeWindowConfig{"

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
