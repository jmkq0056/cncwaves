.class public final Lcom/stripe/bbpos/sdk/PinEntryResult;
.super Lcom/squareup/wire/Message;
.source "PinEntryResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;,
        Lcom/stripe/bbpos/sdk/PinEntryResult$Companion;,
        Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/bbpos/sdk/PinEntryResult;",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B%\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/PinEntryResult;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;",
        "pinEntryResult",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
        "pinData",
        "Lcom/stripe/bbpos/sdk/PinData;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;)V",
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
        "Type",
        "sdk-protos_release"
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
            "Lcom/stripe/bbpos/sdk/PinEntryResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/bbpos/sdk/PinEntryResult$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final pinData:Lcom/stripe/bbpos/sdk/PinData;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.PinData#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.PinEntryResult$Type#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/bbpos/sdk/PinEntryResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/bbpos/sdk/PinEntryResult;->Companion:Lcom/stripe/bbpos/sdk/PinEntryResult$Companion;

    .line 116
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 115
    const-class v1, Lcom/stripe/bbpos/sdk/PinEntryResult;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 115
    new-instance v3, Lcom/stripe/bbpos/sdk/PinEntryResult$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/bbpos/sdk/PinEntryResult$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/PinEntryResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/bbpos/sdk/PinEntryResult;-><init>(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;)V
    .locals 1

    const-string v0, "pinEntryResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/stripe/bbpos/sdk/PinEntryResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 30
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 38
    iput-object p2, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 37
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->PIN_ENTRY_RESULT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 46
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 29
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/bbpos/sdk/PinEntryResult;-><init>(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/bbpos/sdk/PinEntryResult;Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/PinEntryResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 84
    iget-object p1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 85
    iget-object p2, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinEntryResult;->unknownFields()Lokio/ByteString;

    move-result-object p3

    .line 83
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/bbpos/sdk/PinEntryResult;->copy(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/PinEntryResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/PinEntryResult;
    .locals 1

    const-string v0, "pinEntryResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/stripe/bbpos/sdk/PinEntryResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/bbpos/sdk/PinEntryResult;-><init>(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/stripe/bbpos/sdk/PinEntryResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinEntryResult;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/bbpos/sdk/PinEntryResult;

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/PinEntryResult;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    if-eq v1, v3, :cond_3

    return v2

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    iget-object p1, p1, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget v0, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->hashCode:I

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinEntryResult;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 69
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 70
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/PinData;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinEntryResult;->newBuilder()Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;
    .locals 2

    .line 49
    new-instance v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;

    invoke-direct {v0}, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 51
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    .line 52
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinEntryResult;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 78
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinEntryResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/PinEntryResult;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PinEntryResult{"

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
