.class public final Lcom/stripe/proto/model/common/TamperState;
.super Lcom/squareup/wire/Message;
.source "TamperState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/TamperState$Builder;,
        Lcom/stripe/proto/model/common/TamperState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/TamperState;",
        "Lcom/stripe/proto/model/common/TamperState$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B+\u0012\u0010\u0008\u0002\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/TamperState;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/TamperState$Builder;",
        "tampered_time",
        "Ljava/time/Instant;",
        "Lcom/squareup/wire/Instant;",
        "tamper_type",
        "Lcom/stripe/proto/model/common/TamperType;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/common/TamperState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/TamperState$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final tamper_type:Lcom/stripe/proto/model/common/TamperType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.TamperType#ADAPTER"
        jsonName = "tamperType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final tampered_time:Ljava/time/Instant;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INSTANT"
        jsonName = "tamperedTime"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/TamperState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/TamperState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/TamperState;->Companion:Lcom/stripe/proto/model/common/TamperState$Companion;

    .line 116
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 115
    const-class v1, Lcom/stripe/proto/model/common/TamperState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 115
    new-instance v3, Lcom/stripe/proto/model/common/TamperState$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/TamperState$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/TamperState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/common/TamperState;-><init>(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;)V
    .locals 1

    const-string v0, "tamper_type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/stripe/proto/model/common/TamperState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 28
    iput-object p1, p0, Lcom/stripe/proto/model/common/TamperState;->tampered_time:Ljava/time/Instant;

    .line 37
    iput-object p2, p0, Lcom/stripe/proto/model/common/TamperState;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 45
    sget-object p2, Lcom/stripe/proto/model/common/TamperType;->TAMPER_TYPE_INVALID:Lcom/stripe/proto/model/common/TamperType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 46
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 27
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/proto/model/common/TamperState;-><init>(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/TamperState;Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/TamperState;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 84
    iget-object p1, p0, Lcom/stripe/proto/model/common/TamperState;->tampered_time:Ljava/time/Instant;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 85
    iget-object p2, p0, Lcom/stripe/proto/model/common/TamperState;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TamperState;->unknownFields()Lokio/ByteString;

    move-result-object p3

    .line 83
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/model/common/TamperState;->copy(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;)Lcom/stripe/proto/model/common/TamperState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;)Lcom/stripe/proto/model/common/TamperState;
    .locals 1

    const-string v0, "tamper_type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/stripe/proto/model/common/TamperState;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/proto/model/common/TamperState;-><init>(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/TamperState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TamperState;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/TamperState;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/TamperState;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/TamperState;->tampered_time:Ljava/time/Instant;

    iget-object v3, p1, Lcom/stripe/proto/model/common/TamperState;->tampered_time:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/TamperState;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    iget-object p1, p1, Lcom/stripe/proto/model/common/TamperState;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget v0, p0, Lcom/stripe/proto/model/common/TamperState;->hashCode:I

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TamperState;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 69
    iget-object v1, p0, Lcom/stripe/proto/model/common/TamperState;->tampered_time:Ljava/time/Instant;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/time/Instant;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 70
    iget-object v1, p0, Lcom/stripe/proto/model/common/TamperState;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/TamperType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/stripe/proto/model/common/TamperState;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TamperState;->newBuilder()Lcom/stripe/proto/model/common/TamperState$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/TamperState$Builder;
    .locals 2

    .line 49
    new-instance v0, Lcom/stripe/proto/model/common/TamperState$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/TamperState$Builder;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/stripe/proto/model/common/TamperState;->tampered_time:Ljava/time/Instant;

    iput-object v1, v0, Lcom/stripe/proto/model/common/TamperState$Builder;->tampered_time:Ljava/time/Instant;

    .line 51
    iget-object v1, p0, Lcom/stripe/proto/model/common/TamperState;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    iput-object v1, v0, Lcom/stripe/proto/model/common/TamperState$Builder;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    .line 52
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TamperState;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/TamperState$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 78
    iget-object v1, p0, Lcom/stripe/proto/model/common/TamperState;->tampered_time:Ljava/time/Instant;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tampered_time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/TamperState;->tampered_time:Ljava/time/Instant;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tamper_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/TamperState;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "TamperState{"

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
