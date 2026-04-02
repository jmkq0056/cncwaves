.class public final Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;
.super Ljava/lang/Object;
.source "KotlinxSerializationConverter.kt"

# interfaces
.implements Lio/ktor/serialization/ContentConverter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinxSerializationConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinxSerializationConverter.kt\nio/ktor/serialization/kotlinx/KotlinxSerializationConverter\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,133:1\n53#2:134\n55#2:138\n53#2:139\n55#2:143\n50#3:135\n55#3:137\n50#3:140\n55#3:142\n106#4:136\n106#4:141\n*S KotlinDebug\n*F\n+ 1 KotlinxSerializationConverter.kt\nio/ktor/serialization/kotlinx/KotlinxSerializationConverter\n*L\n58#1:134\n58#1:138\n73#1:139\n73#1:143\n58#1:135\n58#1:137\n73#1:140\n73#1:142\n58#1:136\n73#1:141\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J/\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J5\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\n\u0010\n\u001a\u00060\u000bj\u0002`\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\tH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J:\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001b2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0014\u001a\u00020\u00152\n\u0010\n\u001a\u00060\u000bj\u0002`\u000cH\u0002J7\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\n\u0010\n\u001a\u00060\u000bj\u0002`\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;",
        "Lio/ktor/serialization/ContentConverter;",
        "format",
        "Lkotlinx/serialization/SerialFormat;",
        "(Lkotlinx/serialization/SerialFormat;)V",
        "extensions",
        "",
        "Lio/ktor/serialization/kotlinx/KotlinxSerializationExtension;",
        "deserialize",
        "",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "typeInfo",
        "Lio/ktor/util/reflect/TypeInfo;",
        "content",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "serialize",
        "Lio/ktor/http/content/OutgoingContent;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "value",
        "(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "serializeContent",
        "Lio/ktor/http/content/OutgoingContent$ByteArrayContent;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "serializeNullable",
        "ktor-serialization-kotlinx"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/serialization/kotlinx/KotlinxSerializationExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final format:Lkotlinx/serialization/SerialFormat;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/SerialFormat;)V
    .locals 2

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->format:Lkotlinx/serialization/SerialFormat;

    .line 28
    invoke-static {p1}, Lio/ktor/serialization/kotlinx/ExtensionsKt;->extensions(Lkotlinx/serialization/SerialFormat;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->extensions:Ljava/util/List;

    .line 31
    instance-of v0, p1, Lkotlinx/serialization/BinaryFormat;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/serialization/StringFormat;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only binary and string formats are supported, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final serializeContent(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/SerialFormat;Ljava/lang/Object;Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;)Lio/ktor/http/content/OutgoingContent$ByteArrayContent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "*>;",
            "Lkotlinx/serialization/SerialFormat;",
            "Ljava/lang/Object;",
            "Lio/ktor/http/ContentType;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lio/ktor/http/content/OutgoingContent$ByteArrayContent;"
        }
    .end annotation

    .line 103
    instance-of v0, p2, Lkotlinx/serialization/StringFormat;

    const-string v1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any?>"

    if-eqz v0, :cond_0

    .line 104
    check-cast p2, Lkotlinx/serialization/StringFormat;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p2, p1, p3}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v0, Lio/ktor/http/content/TextContent;

    invoke-static {p4, p5}, Lio/ktor/http/ContentTypesKt;->withCharsetIfNeeded(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;)Lio/ktor/http/ContentType;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/ktor/http/content/TextContent;-><init>(Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    return-object v0

    .line 108
    :cond_0
    instance-of p5, p2, Lkotlinx/serialization/BinaryFormat;

    if-eqz p5, :cond_1

    .line 109
    check-cast p2, Lkotlinx/serialization/BinaryFormat;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p2, p1, p3}, Lkotlinx/serialization/BinaryFormat;->encodeToByteArray(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)[B

    move-result-object v1

    .line 110
    new-instance v0, Lio/ktor/http/content/ByteArrayContent;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lio/ktor/http/content/ByteArrayContent;-><init>([BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported format "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public deserialize(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "Unsupported format "

    instance-of v6, v4, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;

    iget v7, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v4, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->label:I

    sub-int/2addr v4, v8

    iput v4, v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v6, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;

    invoke-direct {v6, v1, v4}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;-><init>(Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v6

    iget-object v4, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 71
    iget v7, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->label:I

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v7, :cond_3

    if-eq v7, v14, :cond_2

    if-ne v7, v13, :cond_1

    iget-object v0, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v2, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/nio/charset/Charset;

    iget-object v3, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/reflect/TypeInfo;

    iget-object v3, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/nio/charset/Charset;

    iget-object v7, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v7

    move-object v7, v0

    move-object v0, v3

    move-object/from16 v3, v16

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    iget-object v4, v1, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->extensions:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asFlow(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    .line 141
    new-instance v7, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$$inlined$map$1;

    invoke-direct {v7, v4, v0, v2, v3}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/ByteReadChannel;)V

    check-cast v7, Lkotlinx/coroutines/flow/Flow;

    .line 74
    new-instance v4, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$fromExtension$2;

    invoke-direct {v4, v3, v15}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$fromExtension$2;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v1, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$0:Ljava/lang/Object;

    iput-object v0, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$1:Ljava/lang/Object;

    iput-object v2, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$2:Ljava/lang/Object;

    iput-object v3, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$3:Ljava/lang/Object;

    iput v14, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->label:I

    invoke-static {v7, v4, v10}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v3

    move-object v3, v1

    .line 75
    :goto_1
    iget-object v8, v3, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->extensions:Ljava/util/List;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    if-nez v4, :cond_5

    invoke-interface {v7}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    return-object v4

    .line 77
    :cond_6
    iget-object v4, v3, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->format:Lkotlinx/serialization/SerialFormat;

    invoke-interface {v4}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v4

    invoke-static {v4, v2}, Lio/ktor/serialization/kotlinx/SerializerLookupKt;->serializerForTypeInfo(Lkotlinx/serialization/modules/SerializersModule;Lio/ktor/util/reflect/TypeInfo;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 78
    iput-object v3, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$0:Ljava/lang/Object;

    iput-object v0, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$1:Ljava/lang/Object;

    iput-object v2, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->L$3:Ljava/lang/Object;

    iput v13, v10, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$deserialize$1;->label:I

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lio/ktor/utils/io/ByteReadChannel$DefaultImpls;->readRemaining$default(Lio/ktor/utils/io/ByteReadChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_7

    :goto_2
    return-object v6

    :cond_7
    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    .line 71
    :goto_3
    check-cast v4, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 81
    :try_start_0
    iget-object v6, v3, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->format:Lkotlinx/serialization/SerialFormat;

    .line 82
    instance-of v7, v6, Lkotlinx/serialization/StringFormat;

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    check-cast v6, Lkotlinx/serialization/StringFormat;

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    check-cast v4, Lio/ktor/utils/io/core/Input;

    invoke-static {v4, v2, v8, v13, v15}, Lio/ktor/utils/io/core/StringsKt;->readText$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 83
    :cond_8
    instance-of v2, v6, Lkotlinx/serialization/BinaryFormat;

    if-eqz v2, :cond_9

    check-cast v6, Lkotlinx/serialization/BinaryFormat;

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-static {v4, v8, v14, v15}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v2

    invoke-interface {v6, v0, v2}, Lkotlinx/serialization/BinaryFormat;->decodeFromByteArray(Lkotlinx/serialization/DeserializationStrategy;[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :cond_9
    check-cast v4, Lio/ktor/utils/io/core/Input;

    invoke-static {v4}, Lio/ktor/utils/io/core/InputKt;->discard(Lio/ktor/utils/io/core/Input;)J

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->format:Lkotlinx/serialization/SerialFormat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 90
    new-instance v2, Lio/ktor/serialization/JsonConvertException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal input: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lio/ktor/serialization/JsonConvertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public serialize(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/ContentType;",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Please override and use serializeNullable instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "serializeNullable(charset, typeInfo, contentType, value)"
            imports = {}
        .end subannotation
    .end annotation

    .line 48
    invoke-virtual/range {p0 .. p5}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->serializeNullable(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public serializeNullable(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/ContentType;",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;

    iget v1, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;

    invoke-direct {v0, p0, p5}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;-><init>(Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p4, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$4:Ljava/lang/Object;

    iget-object p1, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$3:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lio/ktor/util/reflect/TypeInfo;

    iget-object p1, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/nio/charset/Charset;

    iget-object p1, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/ContentType;

    iget-object v0, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p1

    move-object v7, p2

    move-object v5, p4

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    iget-object p5, p0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->extensions:Ljava/util/List;

    check-cast p5, Ljava/lang/Iterable;

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->asFlow(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    .line 136
    new-instance v4, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    .line 59
    new-instance p1, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$fromExtension$2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$fromExtension$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$3:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter$serializeNullable$1;->label:I

    invoke-static {v4, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    :cond_3
    move-object v2, p0

    move-object p3, v8

    move-object v5, v9

    .line 51
    :goto_1
    check-cast p5, Lio/ktor/http/content/OutgoingContent;

    if-eqz p5, :cond_4

    return-object p5

    .line 64
    :cond_4
    :try_start_0
    iget-object p1, v2, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->format:Lkotlinx/serialization/SerialFormat;

    invoke-interface {p1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    invoke-static {p1, p3}, Lio/ktor/serialization/kotlinx/SerializerLookupKt;->serializerForTypeInfo(Lkotlinx/serialization/modules/SerializersModule;Lio/ktor/util/reflect/TypeInfo;)Lkotlinx/serialization/KSerializer;

    move-result-object p1
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 66
    :catch_0
    iget-object p1, v2, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->format:Lkotlinx/serialization/SerialFormat;

    invoke-interface {p1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    invoke-static {v5, p1}, Lio/ktor/serialization/kotlinx/SerializerLookupKt;->guessSerializer(Ljava/lang/Object;Lkotlinx/serialization/modules/SerializersModule;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    :goto_2
    move-object v3, p1

    .line 68
    iget-object v4, v2, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->format:Lkotlinx/serialization/SerialFormat;

    invoke-direct/range {v2 .. v7}, Lio/ktor/serialization/kotlinx/KotlinxSerializationConverter;->serializeContent(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/SerialFormat;Ljava/lang/Object;Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;)Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    move-result-object p1

    return-object p1
.end method
