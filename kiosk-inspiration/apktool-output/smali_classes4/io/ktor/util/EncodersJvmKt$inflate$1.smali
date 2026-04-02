.class final Lio/ktor/util/EncodersJvmKt$inflate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EncodersJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/EncodersJvmKt;->inflate(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Z)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/WriterScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncodersJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodersJvm.kt\nio/ktor/util/EncodersJvmKt$inflate$1\n+ 2 ByteReadChannel.kt\nio/ktor/utils/io/ByteReadChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n232#2,2:161\n232#2,2:164\n1#3:163\n*S KotlinDebug\n*F\n+ 1 EncodersJvm.kt\nio/ktor/util/EncodersJvmKt$inflate$1\n*L\n86#1:161,2\n96#1:164,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/WriterScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.util.EncodersJvmKt$inflate$1"
    f = "EncodersJvm.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6
    }
    l = {
        0x44,
        0x55,
        0xa1,
        0xa4,
        0x67,
        0x6d,
        0x79
    }
    m = "invokeSuspend"
    n = {
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "magic",
        "format",
        "flags",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "magic",
        "format",
        "flags",
        "extraLen",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "n$iv",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "totalSize",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "totalSize",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "totalSize"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "S$0",
        "B$0",
        "B$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "S$0",
        "B$0",
        "B$1",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5"
    }
.end annotation


# instance fields
.field final synthetic $gzip:Z

.field final synthetic $source:Lio/ktor/utils/io/ByteReadChannel;

.field B$0:B

.field B$1:B

.field I$0:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field S$0:S

.field label:I


# direct methods
.method constructor <init>(ZLio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/EncodersJvmKt$inflate$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lio/ktor/util/EncodersJvmKt$inflate$1;->$gzip:Z

    iput-object p2, p0, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/ktor/util/EncodersJvmKt$inflate$1;

    iget-boolean v1, p0, Lio/ktor/util/EncodersJvmKt$inflate$1;->$gzip:Z

    iget-object v2, p0, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/util/EncodersJvmKt$inflate$1;-><init>(ZLio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/EncodersJvmKt$inflate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/util/EncodersJvmKt$inflate$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/util/EncodersJvmKt$inflate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/EncodersJvmKt$inflate$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    const-string v3, " bytes"

    const-string v4, "Unable to discard "

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->I$0:I

    iget-object v3, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/zip/CRC32;

    iget-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/util/zip/Inflater;

    iget-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    iget-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/WriterScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    move-object v5, v4

    move-object/from16 v4, p1

    goto/16 :goto_c

    :pswitch_1
    iget v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->I$0:I

    iget-object v3, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/zip/CRC32;

    iget-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/util/zip/Inflater;

    iget-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    iget-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/WriterScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, p1

    goto/16 :goto_9

    :pswitch_2
    iget-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/util/zip/CRC32;

    iget-object v4, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/util/zip/Inflater;

    iget-object v4, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/WriterScope;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v5, p1

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :pswitch_3
    iget-wide v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->J$0:J

    iget-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/util/zip/CRC32;

    iget-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/zip/Inflater;

    iget-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/nio/ByteBuffer;

    iget-object v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/WriterScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v11

    move-object v7, v12

    move-object v11, v2

    move-object/from16 v2, p1

    goto/16 :goto_4

    :pswitch_4
    iget-wide v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->J$0:J

    iget-byte v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$1:B

    iget-byte v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$0:B

    iget-short v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->S$0:S

    iget-object v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v12, Ljava/util/zip/CRC32;

    iget-object v13, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/util/zip/Inflater;

    iget-object v14, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/nio/ByteBuffer;

    iget-object v15, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/nio/ByteBuffer;

    iget-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/WriterScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v17, v2

    move-object/from16 v2, p1

    goto/16 :goto_2

    :pswitch_5
    iget-byte v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$1:B

    iget-byte v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$0:B

    iget-short v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->S$0:S

    iget-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/util/zip/CRC32;

    iget-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/util/zip/Inflater;

    iget-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/nio/ByteBuffer;

    iget-object v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/nio/ByteBuffer;

    iget-object v13, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/WriterScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v10

    move v10, v7

    move-object v7, v13

    move-object v13, v14

    move-object v14, v11

    move-object v15, v12

    move-object/from16 v12, p1

    move v11, v8

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/util/zip/CRC32;

    iget-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/util/zip/Inflater;

    iget-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    iget-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    iget-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/WriterScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v2

    move-object/from16 v2, p1

    goto :goto_0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lio/ktor/utils/io/WriterScope;

    .line 62
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 63
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 64
    new-instance v7, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 65
    new-instance v11, Ljava/util/zip/CRC32;

    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    .line 67
    iget-boolean v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$gzip:Z

    if-eqz v12, :cond_c

    .line 68
    iget-object v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    move-object v13, v1

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    const/16 v2, 0xa

    invoke-interface {v12, v2, v13}, Lio/ktor/utils/io/ByteReadChannel;->readPacket(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    goto/16 :goto_b

    .line 61
    :cond_0
    :goto_0
    check-cast v2, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 69
    move-object v12, v2

    check-cast v12, Lio/ktor/utils/io/core/Input;

    invoke-static {v12}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readShortLittleEndian(Lio/ktor/utils/io/core/Input;)S

    move-result v13

    .line 70
    invoke-virtual {v2}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v14

    .line 71
    invoke-virtual {v2}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v2

    .line 81
    invoke-static {v12}, Lio/ktor/utils/io/core/InputKt;->discard(Lio/ktor/utils/io/core/Input;)J

    and-int/lit8 v12, v2, 0x4

    if-eqz v12, :cond_4

    .line 85
    iget-object v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    move-object v15, v1

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-short v13, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->S$0:S

    iput-byte v14, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$0:B

    iput-byte v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$1:B

    iput v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-interface {v12, v15}, Lio/ktor/utils/io/ByteReadChannel;->readShort(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_1

    goto/16 :goto_b

    :cond_1
    move-object v15, v9

    move-object v9, v11

    move v11, v13

    move-object v13, v7

    move-object v7, v10

    move v10, v14

    move-object v14, v8

    :goto_1
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->shortValue()S

    move-result v8

    int-to-long v5, v8

    .line 86
    iget-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    .line 161
    move-object v12, v1

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v14, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v13, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-short v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->S$0:S

    iput-byte v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$0:B

    iput-byte v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$1:B

    iput-wide v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->J$0:J

    move/from16 v17, v2

    const/4 v2, 0x3

    iput v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-interface {v8, v5, v6, v12}, Lio/ktor/utils/io/ByteReadChannel;->discard(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    goto/16 :goto_b

    :cond_2
    move-object v12, v9

    move-wide v8, v5

    :goto_2
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-nez v2, :cond_3

    move-object v2, v14

    move v14, v10

    move-object v10, v2

    move-object v5, v13

    move/from16 v2, v17

    move v13, v11

    move-object v11, v12

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v5, v7

    move-object v15, v9

    move-object v7, v10

    move-object v10, v8

    :goto_3
    const/16 v6, -0x74e1

    if-ne v13, v6, :cond_b

    const/16 v12, 0x8

    if-ne v14, v12, :cond_a

    .line 91
    invoke-static {v2, v12}, Lio/ktor/util/EncodersJvmKt;->access$has(II)Z

    move-result v6

    if-nez v6, :cond_9

    const/16 v6, 0x10

    .line 92
    invoke-static {v2, v6}, Lio/ktor/util/EncodersJvmKt;->access$has(II)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x2

    .line 95
    invoke-static {v2, v6}, Lio/ktor/util/EncodersJvmKt;->access$has(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    iget-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    .line 164
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    const-wide/16 v8, 0x2

    iput-wide v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->J$0:J

    const/4 v13, 0x4

    iput v13, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-interface {v2, v8, v9, v6}, Lio/ktor/utils/io/ByteReadChannel;->discard(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    goto/16 :goto_b

    :cond_5
    :goto_4
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    cmp-long v2, v13, v8

    if-nez v2, :cond_7

    :cond_6
    move-object v8, v5

    move-object v9, v10

    move-object v10, v7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Gzip file comment not supported"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Gzip file name not supported"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Deflater method unsupported: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GZIP magic invalid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    move-object v15, v9

    move-object v9, v8

    move-object v8, v7

    .line 101
    :goto_5
    :try_start_3
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v10

    move-object v3, v11

    move-object v10, v15

    .line 102
    :cond_d
    :goto_6
    :try_start_4
    iget-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v5}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v5

    if-nez v5, :cond_11

    .line 103
    iget-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-interface {v5, v10, v6}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_e

    goto/16 :goto_b

    :cond_e
    :goto_7
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_d

    .line 104
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 106
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v8, v5, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 108
    :goto_8
    invoke-virtual {v8}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->finished()Z

    move-result v5

    if-nez v5, :cond_10

    .line 109
    iget v5, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v4}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v6

    move-object v7, v3

    check-cast v7, Ljava/util/zip/Checksum;

    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    iput v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->I$0:I

    const/4 v13, 0x6

    iput v13, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-static {v8, v6, v9, v7, v11}, Lio/ktor/util/EncodersJvmKt;->access$inflateTo(Ljava/util/zip/Inflater;Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;Ljava/util/zip/Checksum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_f

    goto :goto_b

    :cond_f
    move-object v11, v4

    move-object v4, v2

    move v2, v5

    move-object v5, v3

    move-object v3, v4

    :goto_9
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v2, v6

    iput v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 110
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v11

    goto :goto_8

    .line 113
    :cond_10
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_6

    .line 116
    :cond_11
    iget-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v5}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_19

    .line 118
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v5, v3

    move-object v11, v4

    move-object v3, v2

    .line 120
    :goto_a
    invoke-virtual {v8}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_13

    .line 121
    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v11}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v4

    move-object v6, v5

    check-cast v6, Ljava/util/zip/Checksum;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    iput v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->I$0:I

    const/4 v13, 0x7

    iput v13, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-static {v8, v4, v9, v6, v7}, Lio/ktor/util/EncodersJvmKt;->access$inflateTo(Ljava/util/zip/Inflater;Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;Ljava/util/zip/Checksum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_12

    :goto_b
    return-object v0

    :cond_12
    move-object v6, v5

    move-object v5, v3

    :goto_c
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 122
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v3, v5

    move-object v5, v6

    goto :goto_a

    .line 125
    :cond_13
    iget-boolean v0, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$gzip:Z

    if-eqz v0, :cond_17

    .line 126
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v12, 0x8

    if-ne v0, v12, :cond_16

    .line 130
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 132
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/16 v16, 0x4

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 134
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    if-ne v4, v0, :cond_15

    .line 135
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v0, v2, :cond_14

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gzip size invalid. Expected "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", actual "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_15
    const-string v0, "Gzip checksum invalid."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 8 bytes in the trailer. Actual: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " $"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_17
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_18

    .line 142
    :goto_d
    invoke-virtual {v8}, Ljava/util/zip/Inflater;->end()V

    .line 143
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0, v10}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 144
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0, v9}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 146
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 137
    :cond_18
    :try_start_5
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_19
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v0

    move-object v10, v15

    .line 140
    :goto_e
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 142
    invoke-virtual {v8}, Ljava/util/zip/Inflater;->end()V

    .line 143
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-interface {v2, v10}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 144
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-interface {v2, v9}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
