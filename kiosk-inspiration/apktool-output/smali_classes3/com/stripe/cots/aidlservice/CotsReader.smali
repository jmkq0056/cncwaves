.class public final Lcom/stripe/cots/aidlservice/CotsReader;
.super Lcom/squareup/wire/Message;
.source "CotsReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsReader$Builder;,
        Lcom/stripe/cots/aidlservice/CotsReader$Companion;,
        Lcom/stripe/cots/aidlservice/CotsReader$CotsError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "Lcom/stripe/cots/aidlservice/CotsReader$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ8\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/cots/aidlservice/CotsReader$Builder;",
        "serial",
        "",
        "errorCode",
        "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;",
        "errorMessage",
        "isSimulated",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "CotsError",
        "proto_release"
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
            "Lcom/stripe/cots/aidlservice/CotsReader;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsReader$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.cots.aidlservice.CotsReader$CotsError#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final isSimulated:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final serial:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/cots/aidlservice/CotsReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/cots/aidlservice/CotsReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsReader;->Companion:Lcom/stripe/cots/aidlservice/CotsReader$Companion;

    .line 165
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 164
    const-class v1, Lcom/stripe/cots/aidlservice/CotsReader;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 168
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 164
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsReader$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/cots/aidlservice/CotsReader$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsReader;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/cots/aidlservice/CotsReader;-><init>(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;)V
    .locals 1

    const-string v0, "serial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsReader;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->serial:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 51
    iput-object p3, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorMessage:Ljava/lang/String;

    .line 59
    iput-boolean p4, p0, Lcom/stripe/cots/aidlservice/CotsReader;->isSimulated:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    .line 34
    const-string v0, ""

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 50
    sget-object p2, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 67
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p6}, Lcom/stripe/cots/aidlservice/CotsReader;-><init>(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/cots/aidlservice/CotsReader;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/cots/aidlservice/CotsReader;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 113
    iget-object p1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->serial:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 114
    iget-object p2, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 115
    iget-object p3, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorMessage:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 116
    iget-boolean p4, p0, Lcom/stripe/cots/aidlservice/CotsReader;->isSimulated:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsReader;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 112
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/cots/aidlservice/CotsReader;->copy(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsReader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsReader;
    .locals 7

    const-string v0, "serial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/cots/aidlservice/CotsReader;-><init>(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/stripe/cots/aidlservice/CotsReader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsReader;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/cots/aidlservice/CotsReader;

    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsReader;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->serial:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsReader;->serial:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    if-eq v1, v3, :cond_4

    return v2

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsReader;->errorMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 86
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->isSimulated:Z

    iget-boolean p1, p1, Lcom/stripe/cots/aidlservice/CotsReader;->isSimulated:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsReader;->hashCode:I

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsReader;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 94
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->serial:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 95
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 96
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 97
    iget-boolean v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->isSimulated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    iput v0, p0, Lcom/stripe/cots/aidlservice/CotsReader;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsReader;->newBuilder()Lcom/stripe/cots/aidlservice/CotsReader$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/cots/aidlservice/CotsReader$Builder;
    .locals 2

    .line 70
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;

    invoke-direct {v0}, Lcom/stripe/cots/aidlservice/CotsReader$Builder;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->serial:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->serial:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 73
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->errorMessage:Ljava/lang/String;

    .line 74
    iget-boolean v1, p0, Lcom/stripe/cots/aidlservice/CotsReader;->isSimulated:Z

    iput-boolean v1, v0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->isSimulated:Z

    .line 75
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsReader;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 105
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsReader;->serial:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errorCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errorMessage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsReader;->errorMessage:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSimulated="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/cots/aidlservice/CotsReader;->isSimulated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CotsReader{"

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
