.class public final Lcom/squareup/wire/ProtoReader;
.super Ljava/lang/Object;
.source "ProtoReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ProtoReader$Companion;,
        Lcom/squareup/wire/ProtoReader$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\ncom/squareup/wire/internal/RuntimeUtils\n*L\n1#1,531:1\n1#2:532\n23#3:533\n26#3:534\n23#3:535\n26#3:536\n23#3:537\n26#3:538\n23#3:539\n26#3:540\n23#3:541\n23#3:542\n*S KotlinDebug\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n336#1:533\n341#1:534\n343#1:535\n348#1:536\n350#1:537\n355#1:538\n357#1:539\n361#1:540\n391#1:541\n392#1:542\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 52\u00020\u0001:\u00015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\u0008\u0010\u0017\u001a\u00020\tH\u0002J\r\u0010\u0018\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008\u001aJ\u0006\u0010\u001b\u001a\u00020\tJ\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\tH\u0007J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\tJ%\u0010 \u001a\u00020\u001f2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\"H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008#J\u0008\u0010$\u001a\u00020\u000fH\u0002J\u0008\u0010%\u001a\u00020\u000fH\u0002J\u0006\u0010&\u001a\u00020\tJ\u0006\u0010\'\u001a\u00020\u000fJ\u0006\u0010(\u001a\u00020\u000fJ\u0008\u0010)\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010*\u001a\u00020\u001fJ\u0006\u0010+\u001a\u00020\u000fJ\u0006\u0010,\u001a\u00020\tJ\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u00100\u001a\u00020\u000fJ\u0006\u00101\u001a\u00020\tJ\u0006\u00102\u001a\u00020\u0013J\u0010\u00103\u001a\u00020\u00132\u0006\u00104\u001a\u00020\u000fH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u00066"
    }
    d2 = {
        "Lcom/squareup/wire/ProtoReader;",
        "",
        "source",
        "Lokio/BufferedSource;",
        "(Lokio/BufferedSource;)V",
        "bufferStack",
        "",
        "Lokio/Buffer;",
        "limit",
        "",
        "nextFieldEncoding",
        "Lcom/squareup/wire/FieldEncoding;",
        "pos",
        "pushedLimit",
        "recursionDepth",
        "",
        "state",
        "tag",
        "addUnknownField",
        "",
        "fieldEncoding",
        "value",
        "afterPackableScalar",
        "beforeLengthDelimitedScalar",
        "beforePossiblyPackedScalar",
        "",
        "beforePossiblyPackedScalar$wire_runtime",
        "beginMessage",
        "endMessage",
        "token",
        "endMessageAndGetUnknownFields",
        "Lokio/ByteString;",
        "forEachTag",
        "tagHandler",
        "Lkotlin/Function1;",
        "-forEachTag",
        "internalNextLengthDelimited",
        "internalReadVarint32",
        "nextFieldMinLengthInBytes",
        "nextLengthDelimited",
        "nextTag",
        "peekFieldEncoding",
        "readBytes",
        "readFixed32",
        "readFixed64",
        "readString",
        "",
        "readUnknownField",
        "readVarint32",
        "readVarint64",
        "skip",
        "skipGroup",
        "expectedEndTag",
        "Companion",
        "wire-runtime"
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
.field public static final Companion:Lcom/squareup/wire/ProtoReader$Companion;

.field private static final FIELD_ENCODING_MASK:I = 0x7

.field private static final RECURSION_LIMIT:I = 0x41

.field private static final STATE_END_GROUP:I = 0x4

.field private static final STATE_FIXED32:I = 0x5

.field private static final STATE_FIXED64:I = 0x1

.field private static final STATE_LENGTH_DELIMITED:I = 0x2

.field private static final STATE_PACKED_TAG:I = 0x7

.field private static final STATE_START_GROUP:I = 0x3

.field private static final STATE_TAG:I = 0x6

.field private static final STATE_VARINT:I = 0x0

.field public static final TAG_FIELD_ENCODING_BITS:I = 0x3


# instance fields
.field private final bufferStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private limit:J

.field private nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

.field private pos:J

.field private pushedLimit:J

.field private recursionDepth:I

.field private final source:Lokio/BufferedSource;

.field private state:I

.field private tag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/ProtoReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/ProtoReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/ProtoReader;->Companion:Lcom/squareup/wire/ProtoReader$Companion;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide v0, 0x7fffffffffffffffL

    .line 55
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    const/4 p1, 0x2

    .line 61
    iput p1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    const-wide/16 v0, -0x1

    .line 67
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/squareup/wire/ProtoReader;->bufferStack:Ljava/util/List;

    return-void
.end method

.method private final afterPackableScalar(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_0

    .line 430
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    return-void

    .line 433
    :cond_0
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 436
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    const-wide/16 v2, -0x1

    .line 437
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    .line 438
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    return-void

    :cond_1
    const/4 p1, 0x7

    .line 440
    iput p1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    return-void

    .line 433
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to end at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final beforeLengthDelimitedScalar()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 450
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    sub-long/2addr v0, v2

    .line 451
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    const/4 v2, 0x6

    .line 452
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 454
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 455
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    const-wide/16 v2, -0x1

    .line 456
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    return-wide v0

    .line 448
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final internalNextLengthDelimited()I
    .locals 7

    .line 144
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    const/4 v0, 0x2

    .line 145
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 146
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-ltz v0, :cond_2

    .line 148
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 150
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    iput-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    .line 151
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_0

    return v0

    .line 152
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 147
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final internalReadVarint32()I
    .locals 6

    .line 330
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 331
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 332
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 337
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 338
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 339
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_1

    shl-int/lit8 v1, v3, 0x7

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    .line 344
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 345
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 346
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_2

    shl-int/lit8 v1, v3, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    .line 351
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 352
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 353
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_3

    shl-int/lit8 v1, v3, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v0, v3

    .line 358
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 359
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 360
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    shl-int/lit8 v4, v3, 0x1c

    or-int/2addr v0, v4

    if-gez v3, :cond_6

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_5

    .line 365
    iget-object v4, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v4, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 366
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 367
    iget-object v4, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    if-ltz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 371
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed VARINT"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method private final skipGroup(I)V
    .locals 5

    .line 237
    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 238
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-eqz v0, :cond_7

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 261
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 262
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readFixed32()I

    goto :goto_0

    .line 264
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected field encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v1, p1, :cond_2

    return-void

    .line 245
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected end group"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_3
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->skipGroup(I)V

    goto :goto_0

    .line 248
    :cond_4
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    .line 249
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 250
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 257
    :cond_5
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 258
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readFixed64()J

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 254
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readVarint64()J

    goto :goto_0

    .line 239
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected tag 0"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final -forEachTag(Lkotlin/jvm/functions/Function1;)Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lokio/ByteString;"
        }
    .end annotation

    const-string v0, "tagHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 465
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 467
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "fieldEncoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    iget-object v1, p0, Lcom/squareup/wire/ProtoReader;->bufferStack:Ljava/util/List;

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/BufferedSink;

    invoke-direct {v0, v1}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    .line 493
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p2

    .line 495
    const-string v1, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public final beforePossiblyPackedScalar$wire_runtime()Z
    .locals 6

    .line 286
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    return v1

    .line 293
    :cond_2
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    const-wide/16 v0, -0x1

    .line 294
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const/4 v0, 0x6

    .line 295
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final beginMessage()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 83
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    const/16 v1, 0x41

    if-gt v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/squareup/wire/ProtoReader;->bufferStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->bufferStack:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v2, -0x1

    .line 91
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const/4 v2, 0x6

    .line 92
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    return-wide v0

    .line 84
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to beginMessage()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final endMessage(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "prefer endMessageAndGetUnknownFields()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "endMessageAndGetUnknownFields(token)"
            imports = {}
        .end subannotation
    .end annotation

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    return-void
.end method

.method public final endMessageAndGetUnknownFields(J)Lokio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 105
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    if-ltz v0, :cond_3

    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 106
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected to end at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    .line 110
    iget-object p1, p0, Lcom/squareup/wire/ProtoReader;->bufferStack:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/Buffer;

    .line 111
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    .line 112
    invoke-virtual {p1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    return-object p1

    .line 114
    :cond_2
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object p1

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No corresponding call to beginMessage()"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call to endMessage()"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final nextFieldMinLengthInBytes()J
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/squareup/wire/ProtoReader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x1

    return-wide v0

    .line 509
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_2
    const-wide/16 v0, 0x8

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x4

    return-wide v0

    .line 505
    :cond_4
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 509
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nextFieldEncoding is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextLengthDelimited()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to nextDelimited()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalNextLengthDelimited()I

    move-result v0

    return v0
.end method

.method public final nextTag()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 164
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 165
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return v0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 170
    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 171
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-eqz v0, :cond_7

    shr-int/lit8 v1, v0, 0x3

    .line 174
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 201
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    .line 202
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 203
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return v0

    .line 206
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected field encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected end group"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->skipGroup(I)V

    goto :goto_0

    .line 184
    :cond_4
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalNextLengthDelimited()I

    .line 185
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return v0

    .line 195
    :cond_5
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    .line 196
    iput v3, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 197
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return v0

    .line 189
    :cond_6
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 191
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return v0

    .line 172
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected tag 0"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, -0x1

    return v0

    .line 167
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to nextTag()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    return-object v0
.end method

.method public final readBytes()Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    .line 277
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 278
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final readFixed32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 408
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    const/4 v0, 0x4

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 409
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    .line 410
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->afterPackableScalar(I)V

    return v0
.end method

.method public final readFixed64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 421
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    const/16 v0, 0x8

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 422
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v2

    .line 423
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->afterPackableScalar(I)V

    return-wide v2
.end method

.method public final readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    .line 312
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 313
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnknownField(I)V
    .locals 2

    .line 477
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    .line 478
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    .line 479
    invoke-virtual {v1, p0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    .line 480
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    return-void
.end method

.method public final readVarint32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    const/4 v1, 0x0

    .line 325
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->afterPackableScalar(I)V

    return v0
.end method

.method public final readVarint64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    .line 388
    iget-object v4, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide/16 v5, 0x1

    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->require(J)V

    .line 389
    iget-wide v7, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 390
    iget-object v4, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v1, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    .line 393
    invoke-direct {p0, v0}, Lcom/squareup/wire/ProtoReader;->afterPackableScalar(I)V

    return-wide v1

    :cond_2
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 398
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "WireInput encountered a malformed varint"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readFixed32()I

    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to skip()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    .line 226
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return-void

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readFixed64()J

    return-void

    .line 228
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readVarint64()J

    return-void
.end method
