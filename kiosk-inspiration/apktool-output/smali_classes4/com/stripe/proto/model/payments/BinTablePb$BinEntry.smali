.class public final Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;
.super Lcom/squareup/wire/Message;
.source "BinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/BinTablePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;,
        Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;",
        "bin_range_start",
        "",
        "bin_range_end",
        "unknownFields",
        "Lokio/ByteString;",
        "(IILokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bin_range_end:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "binRangeEnd"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final bin_range_start:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "binRangeStart"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->Companion:Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Companion;

    .line 249
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 248
    const-class v1, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 252
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 248
    new-instance v3, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;-><init>(IILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 152
    iput p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_start:I

    .line 164
    iput p2, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_end:I

    return-void
.end method

.method public synthetic constructor <init>(IILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 173
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 148
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;-><init>(IILokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;IILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 211
    iget p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_start:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 212
    iget p2, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_end:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->unknownFields()Lokio/ByteString;

    move-result-object p3

    .line 210
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->copy(IILokio/ByteString;)Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(IILokio/ByteString;)Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;-><init>(IILokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 185
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 187
    :cond_2
    iget v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_start:I

    iget v3, p1, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_start:I

    if-eq v1, v3, :cond_3

    return v2

    .line 188
    :cond_3
    iget v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_end:I

    iget p1, p1, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_end:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->hashCode:I

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 196
    iget v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_start:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 197
    iget v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_end:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    iput v0, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->newBuilder()Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;
    .locals 2

    .line 176
    new-instance v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;-><init>()V

    .line 177
    iget v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_start:I

    iput v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->bin_range_start:I

    .line 178
    iget v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_end:I

    iput v1, v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->bin_range_end:I

    .line 179
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 205
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bin_range_start="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bin_range_end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->bin_range_end:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 207
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "BinEntry{"

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
