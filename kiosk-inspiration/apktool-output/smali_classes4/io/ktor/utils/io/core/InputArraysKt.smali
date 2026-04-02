.class public final Lio/ktor/utils/io/core/InputArraysKt;
.super Ljava/lang/Object;
.source "InputArrays.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputArrays.kt\nio/ktor/utils/io/core/InputArraysKt\n+ 2 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,215:1\n141#1,4:216\n145#1:226\n146#1,5:228\n153#1:246\n211#1,4:247\n191#1,4:251\n195#1,8:267\n206#1:302\n211#1,4:303\n191#1,4:307\n195#1,8:323\n206#1:358\n211#1,4:359\n191#1,4:363\n195#1,8:379\n206#1:414\n211#1,4:415\n191#1,4:419\n195#1,8:435\n206#1:470\n211#1,4:471\n191#1,4:475\n195#1,8:491\n206#1:526\n211#1,4:527\n141#1,4:531\n145#1:541\n146#1,5:543\n153#1:561\n211#1,4:562\n141#1,4:567\n145#1:577\n146#1,5:579\n153#1:597\n191#1,4:598\n195#1,8:614\n206#1:649\n191#1,4:650\n195#1,8:666\n206#1:701\n191#1,4:702\n195#1,8:718\n206#1:753\n191#1,4:754\n195#1,8:770\n206#1:805\n191#1,4:806\n195#1,8:822\n206#1:857\n141#1,4:858\n145#1:868\n146#1,5:870\n153#1:888\n165#1,4:890\n169#1:900\n170#1,6:902\n178#1:921\n823#2,6:220\n829#2,13:233\n852#2,8:255\n862#2,3:264\n866#2,11:275\n877#2,15:287\n852#2,8:311\n862#2,3:320\n866#2,11:331\n877#2,15:343\n852#2,8:367\n862#2,3:376\n866#2,11:387\n877#2,15:399\n852#2,8:423\n862#2,3:432\n866#2,11:443\n877#2,15:455\n852#2,8:479\n862#2,3:488\n866#2,11:499\n877#2,15:511\n823#2,6:535\n829#2,13:548\n823#2,6:571\n829#2,13:584\n852#2,8:602\n862#2,3:611\n866#2,11:622\n877#2,15:634\n852#2,8:654\n862#2,3:663\n866#2,11:674\n877#2,15:686\n852#2,8:706\n862#2,3:715\n866#2,11:726\n877#2,15:738\n852#2,8:758\n862#2,3:767\n866#2,11:778\n877#2,15:790\n852#2,8:810\n862#2,3:819\n866#2,11:830\n877#2,15:842\n823#2,6:862\n829#2,13:875\n823#2,6:894\n829#2,13:908\n823#2,6:922\n829#2,13:929\n823#2,6:942\n829#2,13:949\n852#2,8:962\n862#2,3:971\n866#2,11:975\n877#2,15:987\n69#3:227\n69#3:263\n59#3:286\n69#3:319\n59#3:342\n69#3:375\n59#3:398\n69#3:431\n59#3:454\n69#3:487\n59#3:510\n69#3:542\n74#3:566\n69#3:578\n69#3:610\n59#3:633\n69#3:662\n59#3:685\n69#3:714\n59#3:737\n69#3:766\n59#3:789\n69#3:818\n59#3:841\n69#3:869\n74#3:889\n69#3:901\n69#3:928\n69#3:948\n69#3:970\n69#3:974\n59#3:986\n*S KotlinDebug\n*F\n+ 1 InputArrays.kt\nio/ktor/utils/io/core/InputArraysKt\n*L\n7#1:216,4\n7#1:226\n7#1:228,5\n7#1:246\n9#1:247,4\n14#1:251,4\n14#1:267,8\n14#1:302\n16#1:303,4\n21#1:307,4\n21#1:323,8\n21#1:358\n23#1:359,4\n28#1:363,4\n28#1:379,8\n28#1:414\n30#1:415,4\n35#1:419,4\n35#1:435,8\n35#1:470\n37#1:471,4\n42#1:475,4\n42#1:491,8\n42#1:526\n44#1:527,4\n49#1:531,4\n49#1:541\n49#1:543,5\n49#1:561\n51#1:562,4\n68#1:567,4\n68#1:577\n68#1:579,5\n68#1:597\n75#1:598,4\n75#1:614,8\n75#1:649\n82#1:650,4\n82#1:666,8\n82#1:701\n89#1:702,4\n89#1:718,8\n89#1:753\n96#1:754,4\n96#1:770,8\n96#1:805\n103#1:806,4\n103#1:822,8\n103#1:857\n110#1:858,4\n110#1:868\n110#1:870,5\n110#1:888\n122#1:890,4\n122#1:900\n122#1:902,6\n122#1:921\n7#1:220,6\n7#1:233,13\n14#1:255,8\n14#1:264,3\n14#1:275,11\n14#1:287,15\n21#1:311,8\n21#1:320,3\n21#1:331,11\n21#1:343,15\n28#1:367,8\n28#1:376,3\n28#1:387,11\n28#1:399,15\n35#1:423,8\n35#1:432,3\n35#1:443,11\n35#1:455,15\n42#1:479,8\n42#1:488,3\n42#1:499,11\n42#1:511,15\n49#1:535,6\n49#1:548,13\n68#1:571,6\n68#1:584,13\n75#1:602,8\n75#1:611,3\n75#1:622,11\n75#1:634,15\n82#1:654,8\n82#1:663,3\n82#1:674,11\n82#1:686,15\n89#1:706,8\n89#1:715,3\n89#1:726,11\n89#1:738,15\n96#1:758,8\n96#1:767,3\n96#1:778,11\n96#1:790,15\n103#1:810,8\n103#1:819,3\n103#1:830,11\n103#1:842,15\n110#1:862,6\n110#1:875,13\n122#1:894,6\n122#1:908,13\n144#1:922,6\n144#1:929,13\n168#1:942,6\n168#1:949,13\n194#1:962,8\n194#1:971,3\n194#1:975,11\n194#1:987,15\n7#1:227\n14#1:263\n14#1:286\n21#1:319\n21#1:342\n28#1:375\n28#1:398\n35#1:431\n35#1:454\n42#1:487\n42#1:510\n49#1:542\n48#1:566\n68#1:578\n75#1:610\n75#1:633\n82#1:662\n82#1:685\n89#1:714\n89#1:737\n96#1:766\n96#1:789\n103#1:818\n103#1:841\n110#1:869\n109#1:889\n122#1:901\n145#1:928\n169#1:948\n194#1:970\n195#1:974\n194#1:986\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0013\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a/\u0010\u0000\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\n\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a/\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a/\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0018\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001aj\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012K\u0010\u001b\u001aG\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00150\u001cH\u0082\u0008\u001a\u0082\u0001\u0010\u0019\u001a\u00020\t*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t2`\u0010\u001b\u001a\\\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(#\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00150\"H\u0082\u0008\u00f8\u0001\u0001\u001ar\u0010$\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u00012K\u0010\u001b\u001aG\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00150\u001cH\u0082\u0008\u001a\r\u0010&\u001a\u00020\u0015*\u00020\u0001H\u0082\u0008\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "readAvailable",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "destination",
        "Lio/ktor/utils/io/bits/Memory;",
        "destinationOffset",
        "length",
        "readAvailable-UAd2zVI",
        "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)I",
        "",
        "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J",
        "dst",
        "Lio/ktor/utils/io/core/Buffer;",
        "",
        "offset",
        "",
        "",
        "",
        "",
        "",
        "readFully",
        "",
        "readFully-UAd2zVI",
        "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)V",
        "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)V",
        "readFullyBytesTemplate",
        "initialDstOffset",
        "readBlock",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "src",
        "dstOffset",
        "count",
        "Lkotlin/Function4;",
        "srcOffset",
        "readFullyTemplate",
        "componentSize",
        "requireNoRemaining",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final readAvailable(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 863
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, p2

    .line 867
    :cond_1
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 869
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 868
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 111
    invoke-static {v3, p1, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr v2, v4

    if-lez v2, :cond_2

    .line 878
    :try_start_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    goto :goto_1

    .line 884
    :cond_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :goto_0
    sub-int/2addr p2, v2

    return p2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    throw p1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[BII)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 572
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, p3

    .line 576
    :cond_1
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 578
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 577
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 69
    invoke-static {v3, p1, p2, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr v2, v4

    add-int/2addr p2, v4

    if-lez v2, :cond_2

    .line 587
    :try_start_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    goto :goto_1

    .line 593
    :cond_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :goto_0
    sub-int/2addr p3, v2

    return p3

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    throw p1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[DII)I
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 812
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, p3

    goto/16 :goto_5

    :cond_0
    move v3, p3

    move v2, v0

    .line 817
    :cond_1
    :try_start_0
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 818
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    const/16 v6, 0x8

    if-lt v5, v2, :cond_3

    .line 821
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 818
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v7

    sub-int/2addr v5, v7

    .line 822
    div-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 104
    invoke-static {v2, p1, p2, v5}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[DII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v5

    add-int/2addr p2, v5

    if-lez v3, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v4

    .line 830
    :goto_0
    :try_start_2
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 818
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int v5, v7, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 830
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 818
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 830
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 839
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v4

    goto :goto_6

    :cond_4
    if-lt v5, v2, :cond_6

    .line 840
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 841
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    sub-int/2addr v7, v5

    if-ge v7, v6, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v1

    goto :goto_3

    .line 842
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 843
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v5, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    move-object v1, v5

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 853
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    sub-int/2addr p3, v3

    return p3

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_9

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw p1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[FII)I
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 760
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, p3

    goto/16 :goto_5

    :cond_0
    move v3, p3

    move v2, v0

    .line 765
    :cond_1
    :try_start_0
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 766
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    if-lt v5, v2, :cond_3

    .line 769
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 766
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x4

    .line 770
    div-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 97
    invoke-static {v2, p1, p2, v5}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[FII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v5

    add-int/2addr p2, v5

    if-lez v3, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v4

    .line 778
    :goto_0
    :try_start_2
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 766
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int v5, v6, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 778
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 766
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 778
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 787
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v4

    goto :goto_6

    :cond_4
    if-lt v5, v2, :cond_6

    .line 788
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 789
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    sub-int/2addr v6, v5

    const/16 v5, 0x8

    if-ge v6, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v1

    goto :goto_3

    .line 790
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 791
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v5, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    move-object v1, v5

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 801
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    sub-int/2addr p3, v3

    return p3

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_9

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw p1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[III)I
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 656
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, p3

    goto/16 :goto_5

    :cond_0
    move v3, p3

    move v2, v0

    .line 661
    :cond_1
    :try_start_0
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 662
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    if-lt v5, v2, :cond_3

    .line 665
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 662
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x4

    .line 666
    div-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 83
    invoke-static {v2, p1, p2, v5}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v5

    add-int/2addr p2, v5

    if-lez v3, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v4

    .line 674
    :goto_0
    :try_start_2
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 662
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int v5, v6, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 674
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 662
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 674
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 683
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v4

    goto :goto_6

    :cond_4
    if-lt v5, v2, :cond_6

    .line 684
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 685
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    sub-int/2addr v6, v5

    const/16 v5, 0x8

    if-ge v6, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v1

    goto :goto_3

    .line 686
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 687
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v5, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    move-object v1, v5

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 697
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    sub-int/2addr p3, v3

    return p3

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_9

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw p1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[JII)I
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 708
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, p3

    goto/16 :goto_5

    :cond_0
    move v3, p3

    move v2, v0

    .line 713
    :cond_1
    :try_start_0
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 714
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    const/16 v6, 0x8

    if-lt v5, v2, :cond_3

    .line 717
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 714
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v7

    sub-int/2addr v5, v7

    .line 718
    div-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 90
    invoke-static {v2, p1, p2, v5}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v5

    add-int/2addr p2, v5

    if-lez v3, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v4

    .line 726
    :goto_0
    :try_start_2
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 714
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int v5, v7, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 726
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 714
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 726
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 735
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v4

    goto :goto_6

    :cond_4
    if-lt v5, v2, :cond_6

    .line 736
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 737
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    sub-int/2addr v7, v5

    if-ge v7, v6, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v1

    goto :goto_3

    .line 738
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 739
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v5, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    move-object v1, v5

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 749
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    sub-int/2addr p3, v3

    return p3

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_9

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw p1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[SII)I
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 604
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, p3

    goto/16 :goto_5

    :cond_0
    move v3, p3

    move v2, v0

    .line 609
    :cond_1
    :try_start_0
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 610
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    if-lt v5, v2, :cond_3

    .line 613
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 610
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    .line 614
    div-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 76
    invoke-static {v2, p1, p2, v5}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v5

    add-int/2addr p2, v5

    if-lez v3, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v4

    .line 622
    :goto_0
    :try_start_2
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 610
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int v5, v6, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 622
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 610
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 622
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 631
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v4

    goto :goto_6

    :cond_4
    if-lt v5, v2, :cond_6

    .line 632
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 633
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    sub-int/2addr v6, v5

    const/16 v5, 0x8

    if-ge v6, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v1

    goto :goto_3

    .line 634
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 635
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v5, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    move-object v1, v5

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 645
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    sub-int/2addr p3, v3

    return p3

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_9

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw p1
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 889
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p2

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p3

    sub-int/2addr p2, p3

    .line 109
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[BIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 67
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[BII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[DIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 102
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[DII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[FIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 95
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[FII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 81
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 88
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 74
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[SII)I

    move-result p0

    return p0
.end method

.method public static final readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)I
    .locals 7

    const-string v0, "$this$readAvailable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v1, p0

    move-object v2, p1

    .line 117
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "$this$readAvailable"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 895
    invoke-static {v1, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    const-wide/16 v11, 0x0

    if-nez v0, :cond_0

    move-wide/from16 v14, p4

    goto :goto_1

    :cond_0
    move-wide/from16 v8, p2

    move-wide/from16 v14, p4

    move-object v13, v0

    .line 899
    :goto_0
    :try_start_0
    move-object v0, v13

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .line 901
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-long v4, v2

    .line 900
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 902
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v16, v4

    move-wide v4, v5

    int-to-long v6, v2

    move v10, v2

    move-object/from16 v2, v16

    .line 123
    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 903
    invoke-virtual {v0, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long/2addr v14, v6

    add-long/2addr v8, v6

    cmp-long v0, v14, v11

    if-lez v0, :cond_2

    .line 911
    :try_start_1
    invoke-static {v1, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    const/4 v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto :goto_2

    .line 917
    :cond_2
    invoke-static {v1, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :goto_1
    sub-long v2, p4, v14

    cmp-long v0, v2, v11

    if-nez v0, :cond_3

    .line 127
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_3
    return-wide v2

    :catchall_1
    move-exception v0

    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_4

    .line 917
    invoke-static {v1, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_4
    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 536
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 542
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 541
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 50
    invoke-static {v2, p1, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr p2, v3

    if-lez p2, :cond_1

    .line 551
    :try_start_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    goto :goto_1

    .line 557
    :cond_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :goto_0
    if-gtz p2, :cond_2

    return-void

    .line 563
    :cond_2
    invoke-static {p2}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    .line 557
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    throw p1
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[BII)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 221
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 227
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 226
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 8
    invoke-static {v2, p1, p2, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    if-lez p3, :cond_1

    .line 236
    :try_start_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    goto :goto_1

    .line 242
    :cond_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :goto_0
    if-gtz p3, :cond_2

    return-void

    .line 248
    :cond_2
    invoke-static {p3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    .line 242
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    throw p1
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[DII)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 481
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    move v2, v0

    .line 486
    :cond_1
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 487
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    const/16 v5, 0x8

    if-lt v4, v2, :cond_3

    .line 490
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 487
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v4, v6

    .line 491
    div-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 43
    invoke-static {v2, p1, p2, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[DII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p3, v4

    add-int/2addr p2, v4

    if-lez p3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v3

    .line 499
    :goto_0
    :try_start_2
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 487
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int v4, v6, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 499
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 487
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 499
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 508
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v3

    goto :goto_6

    :cond_4
    if-lt v4, v2, :cond_6

    .line 509
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 510
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    sub-int/2addr v6, v4

    if-ge v6, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_3

    .line 511
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 512
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v4, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move-object v1, v4

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 522
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    if-gtz p3, :cond_9

    return-void

    .line 528
    :cond_9
    invoke-static {p3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_a

    .line 522
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw p1
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[FII)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 425
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    move v2, v0

    .line 430
    :cond_1
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 431
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    if-lt v4, v2, :cond_3

    .line 434
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 431
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    .line 435
    div-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 36
    invoke-static {v2, p1, p2, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[FII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p3, v4

    add-int/2addr p2, v4

    if-lez p3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v3

    .line 443
    :goto_0
    :try_start_2
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 431
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int v4, v5, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 443
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 431
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 443
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 452
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v3

    goto :goto_6

    :cond_4
    if-lt v4, v2, :cond_6

    .line 453
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 454
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    sub-int/2addr v5, v4

    const/16 v4, 0x8

    if-ge v5, v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_3

    .line 455
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 456
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v4, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move-object v1, v4

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 466
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    if-gtz p3, :cond_9

    return-void

    .line 472
    :cond_9
    invoke-static {p3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_a

    .line 466
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw p1
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[III)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 313
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    move v2, v0

    .line 318
    :cond_1
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 319
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    if-lt v4, v2, :cond_3

    .line 322
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 319
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    .line 323
    div-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 22
    invoke-static {v2, p1, p2, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p3, v4

    add-int/2addr p2, v4

    if-lez p3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v3

    .line 331
    :goto_0
    :try_start_2
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 319
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int v4, v5, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 331
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 319
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 331
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 340
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v3

    goto :goto_6

    :cond_4
    if-lt v4, v2, :cond_6

    .line 341
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 342
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    sub-int/2addr v5, v4

    const/16 v4, 0x8

    if-ge v5, v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_3

    .line 343
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 344
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v4, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move-object v1, v4

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 354
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    if-gtz p3, :cond_9

    return-void

    .line 360
    :cond_9
    invoke-static {p3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_a

    .line 354
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw p1
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[JII)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 369
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    move v2, v0

    .line 374
    :cond_1
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 375
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    const/16 v5, 0x8

    if-lt v4, v2, :cond_3

    .line 378
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 375
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v4, v6

    .line 379
    div-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 29
    invoke-static {v2, p1, p2, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p3, v4

    add-int/2addr p2, v4

    if-lez p3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v3

    .line 387
    :goto_0
    :try_start_2
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 375
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int v4, v6, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 387
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 375
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 387
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 396
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v3

    goto :goto_6

    :cond_4
    if-lt v4, v2, :cond_6

    .line 397
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 398
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    sub-int/2addr v6, v4

    if-ge v6, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_3

    .line 399
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 400
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v4, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move-object v1, v4

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 410
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    if-gtz p3, :cond_9

    return-void

    .line 416
    :cond_9
    invoke-static {p3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_a

    .line 410
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw p1
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[SII)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 257
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    move v2, v0

    .line 262
    :cond_1
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 263
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    if-lt v4, v2, :cond_3

    .line 266
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 263
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    .line 267
    div-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 15
    invoke-static {v2, p1, p2, v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p3, v4

    add-int/2addr p2, v4

    if-lez p3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v3

    .line 275
    :goto_0
    :try_start_2
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 263
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int v4, v5, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 275
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 263
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 275
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 284
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v3

    goto :goto_6

    :cond_4
    if-lt v4, v2, :cond_6

    .line 285
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 286
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    sub-int/2addr v5, v4

    const/16 v4, 0x8

    if-ge v5, v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_3

    .line 287
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 288
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v4, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move-object v1, v4

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 298
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    :goto_5
    if-gtz p3, :cond_9

    return-void

    .line 304
    :cond_9
    invoke-static {p3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_a

    .line 298
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw p1
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 566
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p2

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p3

    sub-int/2addr p2, p3

    .line 48
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[BIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 6
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[DIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 41
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[DII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[FIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 34
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[FII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 20
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[III)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 27
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[JII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 13
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[SII)V

    return-void
.end method

.method public static final readFully-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)V
    .locals 7

    const-string v0, "$this$readFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v1, p0

    move-object v2, p1

    .line 56
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/InputArraysKt;->readFully-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)V

    return-void
.end method

.method public static final readFully-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)V
    .locals 1

    const-string v0, "$this$readFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J

    move-result-wide p0

    cmp-long p0, p0, p4

    if-nez p0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {p4, p5}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(J)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private static final readFullyBytesTemplate(Lio/ktor/utils/io/core/Input;IILkotlin/jvm/functions/Function3;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "II",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 923
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    return p2

    .line 927
    :cond_0
    :goto_0
    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 928
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 145
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v2, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr p2, v3

    add-int/2addr p1, v3

    if-lez p2, :cond_2

    const/4 v2, 0x0

    .line 932
    :try_start_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 938
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    return p2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_4

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_4
    throw p1
.end method

.method private static final readFullyBytesTemplate(Lio/ktor/utils/io/core/Input;JJLkotlin/jvm/functions/Function4;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "JJ",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x1

    .line 943
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    return-wide p3

    .line 947
    :cond_0
    :goto_0
    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 948
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v3, v3

    .line 169
    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 170
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p5, v4, v5, v6, v7}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v2, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v2, v3

    sub-long/2addr p3, v2

    add-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 952
    :try_start_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 958
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    return-wide p3

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_4

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_4
    throw p1
.end method

.method private static final readFullyTemplate(Lio/ktor/utils/io/core/Input;IIILkotlin/jvm/functions/Function3;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "III",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 964
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    move v2, v0

    .line 969
    :cond_1
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 970
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    if-lt v4, v2, :cond_3

    .line 973
    :try_start_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 974
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 195
    div-int/2addr v4, p3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p4, v2, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p2, v4

    add-int/2addr p1, v4

    if-lez p2, :cond_2

    move v2, p3

    goto :goto_0

    :cond_2
    move v2, v3

    .line 975
    :goto_0
    :try_start_2
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 970
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int v4, v5, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 975
    move-object p2, v1

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 970
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 975
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 984
    :try_start_3
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v3

    goto :goto_5

    :cond_4
    if-lt v4, v2, :cond_6

    .line 985
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 986
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    sub-int/2addr v5, v4

    const/16 v4, 0x8

    if-ge v5, v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_3

    .line 987
    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 988
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-nez v4, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move-object v1, v4

    if-gtz v2, :cond_1

    :goto_4
    if-eqz v0, :cond_8

    .line 998
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    return p2

    :catchall_2
    move-exception p1

    :goto_5
    if-eqz v0, :cond_9

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw p1
.end method

.method private static final requireNoRemaining(I)V
    .locals 0

    if-gtz p0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
