.class public final Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;
.super Lcom/squareup/wire/Message;
.source "GetSystemSettingsLongResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;,
        Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;",
        "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0013\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;",
        "success",
        "",
        "value_",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(ZJLokio/ByteString;)V",
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
            "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final success:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final value_:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        declaredName = "value"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->Companion:Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Companion;

    .line 115
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 114
    const-class v1, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 118
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 114
    new-instance v3, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;-><init>(ZJLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZJLokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 27
    iput-boolean p1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->success:Z

    .line 35
    iput-wide p2, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->value_:J

    return-void
.end method

.method public synthetic constructor <init>(ZJLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 44
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 26
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;-><init>(ZJLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;ZJLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 82
    iget-boolean p1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->success:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 83
    iget-wide p2, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->value_:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 81
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->copy(ZJLokio/ByteString;)Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ZJLokio/ByteString;)Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;-><init>(ZJLokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 58
    :cond_2
    iget-boolean v1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->success:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->success:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 59
    :cond_3
    iget-wide v3, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->value_:J

    iget-wide v5, p1, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->value_:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 64
    iget v0, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->hashCode:I

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 67
    iget-boolean v1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->success:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 68
    iget-wide v1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->value_:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    iput v0, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->newBuilder()Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;
    .locals 3

    .line 47
    new-instance v0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;-><init>()V

    .line 48
    iget-boolean v1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->success:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;->success:Z

    .line 49
    iget-wide v1, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->value_:J

    iput-wide v1, v0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;->value_:J

    .line 50
    invoke-virtual {p0}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 76
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->success:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "value_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;->value_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "GetSystemSettingsLongResponse{"

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
