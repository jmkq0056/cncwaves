.class public final Lio/ktor/client/request/forms/FormDataContentKt;
.super Ljava/lang/Object;
.source "FormDataContent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormDataContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormDataContent.kt\nio/ktor/client/request/forms/FormDataContentKt\n+ 2 WriterSession.kt\nio/ktor/utils/io/WriterSessionKt\n+ 3 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,172:1\n18#2,12:173\n7#3,4:185\n*S KotlinDebug\n*F\n+ 1 FormDataContent.kt\nio/ktor/client/request/forms/FormDataContentKt\n*L\n167#1:173,12\n14#1:185,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0008\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u001d\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "RN_BYTES",
        "",
        "generateBoundary",
        "",
        "copyTo",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "channel",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-client-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final RN_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 185
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 186
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\r\n"

    if-eqz v1, :cond_0

    invoke-static {v2}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const-string v1, "charset.newEncoder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v0

    .line 14
    :goto_0
    sput-object v0, Lio/ktor/client/request/forms/FormDataContentKt;->RN_BYTES:[B

    return-void
.end method

.method public static final synthetic access$copyTo(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/client/request/forms/FormDataContentKt;->copyTo(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateBoundary()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/ktor/client/request/forms/FormDataContentKt;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getRN_BYTES$p()[B
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/request/forms/FormDataContentKt;->RN_BYTES:[B

    return-object v0
.end method

.method private static final copyTo(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;

    iget v3, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;

    invoke-direct {v2, v1}, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 160
    iget v4, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->label:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget-object v0, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v0, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v4, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/core/Input;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v4, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v9, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/core/Input;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object v0, v4

    move-object/from16 v4, v16

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    instance-of v1, v0, Lio/ktor/utils/io/core/ByteReadPacket;

    if-eqz v1, :cond_7

    .line 162
    check-cast v0, Lio/ktor/utils/io/core/ByteReadPacket;

    iput v8, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->label:I

    move-object/from16 v1, p1

    invoke-interface {v1, v0, v2}, Lio/ktor/utils/io/ByteWriteChannel;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    goto :goto_4

    .line 163
    :cond_6
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_7
    move-object/from16 v1, p1

    .line 166
    :goto_2
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v4

    if-nez v4, :cond_c

    .line 177
    iput-object v0, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$2:Ljava/lang/Object;

    iput v7, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->label:I

    invoke-static {v1, v8, v2}, Lio/ktor/utils/io/WriterSessionKt;->requestWriteBuffer(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_8

    goto :goto_4

    :cond_8
    move-object v9, v0

    move-object v0, v1

    :goto_3
    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    if-nez v4, :cond_9

    sget-object v4, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v4

    :cond_9
    const/4 v15, 0x0

    .line 180
    :try_start_0
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v13, v11

    .line 168
    invoke-static/range {v9 .. v14}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J

    move-result-wide v10

    long-to-int v15, v10

    .line 181
    invoke-virtual {v4, v15}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 182
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iput-object v9, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$2:Ljava/lang/Object;

    iput v6, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->label:I

    invoke-static {v1, v4, v15, v2}, Lio/ktor/utils/io/WriterSessionKt;->completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    goto :goto_4

    :cond_a
    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-object v0, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lio/ktor/client/request/forms/FormDataContentKt$copyTo$1;->label:I

    invoke-static {v1, v4, v15, v2}, Lio/ktor/utils/io/WriterSessionKt;->completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    :goto_4
    return-object v3

    :cond_b
    :goto_5
    throw v0

    .line 171
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final generateBoundary()Ljava/lang/String;
    .locals 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 145
    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v2}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this, checkRadix(radix))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x46

    .line 147
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
