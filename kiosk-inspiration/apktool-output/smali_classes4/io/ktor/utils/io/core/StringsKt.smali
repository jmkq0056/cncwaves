.class public final Lio/ktor/utils/io/core/StringsKt;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 2 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 3 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 8 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 11 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n1#1,482:1\n358#1:640\n358#1:641\n39#2:483\n852#3,8:484\n862#3,3:493\n866#3,11:574\n877#3,15:586\n823#3,6:601\n829#3,13:627\n823#3,6:658\n829#3,13:686\n852#3,8:699\n862#3,3:708\n866#3,11:791\n877#3,15:803\n852#3,8:818\n862#3,3:827\n866#3,11:908\n877#3,15:920\n69#4:492\n59#4:585\n69#4:664\n69#4:685\n69#4:707\n69#4:711\n69#4:790\n59#4:802\n69#4:826\n59#4:919\n123#5,5:496\n128#5,2:506\n130#5,61:510\n193#5:573\n9#5:607\n10#5,2:613\n12#5,7:617\n21#5:626\n9#5:665\n10#5,2:671\n12#5,7:675\n21#5:684\n123#5,5:712\n128#5,2:722\n130#5,61:726\n193#5:789\n123#5,5:830\n128#5,2:840\n130#5,61:844\n193#5:907\n372#6,5:501\n377#6,2:571\n372#6,5:608\n377#6,2:624\n372#6,5:666\n377#6,2:682\n372#6,5:717\n377#6,2:787\n372#6,5:835\n377#6,2:905\n84#7:508\n84#7:615\n84#7:673\n84#7:724\n84#7:842\n26#8:509\n26#8:616\n26#8:674\n26#8:725\n26#8:843\n1#9:642\n98#10,2:643\n507#11,13:645\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n156#1:640\n158#1:641\n30#1:483\n57#1:484,8\n57#1:493,3\n57#1:574,11\n57#1:586,15\n125#1:601,6\n125#1:627,13\n365#1:658,6\n365#1:686,13\n405#1:699,8\n405#1:708,3\n405#1:791,11\n405#1:803,15\n445#1:818,8\n445#1:827,3\n445#1:908,11\n445#1:920,15\n57#1:492\n57#1:585\n366#1:664\n379#1:685\n405#1:707\n406#1:711\n420#1:790\n405#1:802\n445#1:826\n445#1:919\n59#1:496,5\n59#1:506,2\n59#1:510,61\n59#1:573\n126#1:607\n126#1:613,2\n126#1:617,7\n126#1:626\n368#1:665\n368#1:671,2\n368#1:675,7\n368#1:684\n408#1:712,5\n408#1:722,2\n408#1:726,61\n408#1:789\n446#1:830,5\n446#1:840,2\n446#1:844,61\n446#1:907\n59#1:501,5\n59#1:571,2\n126#1:608,5\n126#1:624,2\n368#1:666,5\n368#1:682,2\n408#1:717,5\n408#1:787,2\n446#1:835,5\n446#1:905,2\n59#1:508\n126#1:615\n368#1:673\n408#1:724\n446#1:842\n59#1:509\n126#1:616\n368#1:674\n408#1:725\n446#1:843\n170#1:643,2\n337#1:645,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0003H\u0001\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u001a\u0010\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u001a\r\u0010\t\u001a\u00020\n*\u00020\u000bH\u0082\u0008\u001a\u0014\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u001a\n\u0010\u000c\u001a\u00020\r*\u00020\u0010\u001a\u0012\u0010\u000c\u001a\u00020\r*\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0003\u001a\u001e\u0010\u0011\u001a\u00020\r*\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u001a\"\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u001a\"\u0010\u0014\u001a\u00020\u0015*\u00020\u00102\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u001a\"\u0010\u0014\u001a\u00020\u0015*\u00020\u00102\n\u0010\u001a\u001a\u00060\u001bj\u0002`\u001c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003H\u0007\u001a.\u0010\u0014\u001a\u00020\u0003*\u00020\u00102\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u001a\"\u0010 \u001a\u00020\u0015*\u00020\u00102\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u000f\u001a\u00020\u0003H\u0007\u001a\"\u0010!\u001a\u00020\u0015*\u00020\u00102\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\"\u001a\u00020\u0003H\u0007\u001a \u0010!\u001a\u00020\u0015*\u00020\u00102\u0006\u0010#\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019\u001a \u0010$\u001a\u00020\u0015*\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019\u001a \u0010%\u001a\u0004\u0018\u00010\u0015*\u00020\u000e2\u0008\u0008\u0002\u0010&\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a \u0010%\u001a\u0004\u0018\u00010\u0015*\u00020\u00102\u0008\u0008\u0002\u0010&\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u001e\u0010\'\u001a\u00020\n*\u00020\u00102\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001c\u0010(\u001a\u00020\u0015*\u00020\u00102\u0006\u0010)\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a$\u0010*\u001a\u00020\u0003*\u00020\u00102\u0006\u0010\u001d\u001a\u00020+2\u0006\u0010)\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a(\u0010*\u001a\u00020\u0003*\u00020\u00102\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010)\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a,\u0010,\u001a\u00020\u0003*\u00020\u00102\u0006\u0010\u001d\u001a\u00020+2\u0006\u0010)\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0002\u001a0\u0010,\u001a\u00020\u0003*\u00020\u00102\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010)\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0002\u001a$\u0010.\u001a\u00020\u0003*\u00020\u00102\u0006\u0010)\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020+H\u0002\u001a\u001b\u0010/\u001a\u00020\r*\u00020\u00152\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019H\u0086\u0008\u001a4\u00100\u001a\u000201*\u00020+2\u0006\u00102\u001a\u0002032\u0008\u0008\u0002\u00104\u001a\u00020\u00032\u0008\u0008\u0002\u00105\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019\u001a4\u00100\u001a\u000201*\u00020+2\u0006\u00102\u001a\u0002062\u0008\u0008\u0002\u00104\u001a\u00020\u00032\u0008\u0008\u0002\u00105\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019\u001a$\u00107\u001a\u000201*\u00020+2\u0006\u00102\u001a\u0002062\u0006\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u0003H\u0002\u00a8\u00068"
    }
    d2 = {
        "bufferLimitExceeded",
        "",
        "limit",
        "",
        "prematureEndOfStream",
        "size",
        "",
        "prematureEndOfStreamToReadChars",
        "charactersCount",
        "isAsciiChar",
        "",
        "",
        "readBytes",
        "",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "n",
        "Lio/ktor/utils/io/core/Input;",
        "readBytesOf",
        "min",
        "max",
        "readText",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "decoder",
        "Ljava/nio/charset/CharsetDecoder;",
        "Lio/ktor/utils/io/charsets/CharsetDecoder;",
        "out",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "readTextExact",
        "readTextExactBytes",
        "bytes",
        "bytesCount",
        "readTextExactCharacters",
        "readUTF8Line",
        "estimate",
        "readUTF8LineTo",
        "readUTF8UntilDelimiter",
        "delimiters",
        "readUTF8UntilDelimiterTo",
        "Lio/ktor/utils/io/core/Output;",
        "readUTF8UntilDelimiterToSlowUtf8",
        "decoded0",
        "readUTFUntilDelimiterToSlowAscii",
        "toByteArray",
        "writeText",
        "",
        "text",
        "",
        "fromIndex",
        "toIndex",
        "",
        "writeTextUtf8",
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
.method private static final bufferLimitExceeded(I)Ljava/lang/Void;
    .locals 3

    .line 469
    new-instance v0, Lio/ktor/utils/io/core/BufferLimitExceededException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many characters before delimiter: limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " exceeded"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/ktor/utils/io/core/BufferLimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final isAsciiChar(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final prematureEndOfStream(I)Ljava/lang/Void;
    .locals 3

    .line 474
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Premature end of stream: expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " bytes"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final prematureEndOfStream(J)Ljava/lang/Void;
    .locals 3

    .line 478
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Premature end of stream: expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final prematureEndOfStreamToReadChars(I)Ljava/lang/Void;
    .locals 3

    .line 481
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough input bytes to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " characters."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 172
    new-array v0, p1, [B

    check-cast p0, Lio/ktor/utils/io/core/Input;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    return-object v0

    .line 173
    :cond_0
    sget-object p0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    return-object p0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/Input;)[B
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 186
    invoke-static {p0, v2, v2, v0, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/Input;I)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {p0, p1, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf(Lio/ktor/utils/io/core/Input;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B
    .locals 2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    long-to-int p1, p1

    goto :goto_0

    .line 643
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to convert to a ByteArray: packet is too big"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readBytesOf(Lio/ktor/utils/io/core/Input;II)[B
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    if-nez p1, :cond_0

    .line 194
    sget-object p0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 196
    new-array p2, p1, [B

    invoke-static {p0, p2, v0, p1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    return-object p2

    :cond_1
    int-to-long v1, p2

    .line 198
    invoke-static {p0}, Lio/ktor/utils/io/charsets/EncodingKt;->sizeEstimate(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 201
    :cond_2
    :goto_0
    const-string v2, "copyOf(this, newSize)"

    if-ge v0, p2, :cond_3

    .line 202
    array-length v3, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v0

    .line 203
    invoke-static {p0, v1, v0, v3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[BII)I

    move-result v3

    if-lez v3, :cond_3

    add-int/2addr v0, v3

    .line 206
    array-length v3, v1

    if-ne v3, v0, :cond_2

    mul-int/lit8 v3, v0, 0x2

    .line 207
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-lt v0, p1, :cond_5

    .line 215
    array-length p0, v1

    if-ne v0, p0, :cond_4

    return-object v1

    :cond_4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 212
    :cond_5
    new-instance p0, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Not enough bytes available to read "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " bytes: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " more required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic readBytesOf$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    .line 193
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf(Lio/ktor/utils/io/core/Input;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/nio/charset/Charset;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p2

    const-string v0, "charset.newDecoder()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1, p3}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)I

    move-result p0

    return p0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    const-string v1, "charset.newDecoder()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Appendable;

    const/4 v2, 0x1

    invoke-static {p1, p0, v1, v2, p2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decodeBuffer(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Buffer;Ljava/lang/Appendable;ZI)I

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    const-string v0, "charset.newDecoder()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Lio/ktor/utils/io/charsets/EncodingKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/CharsetDecoder;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use CharsetDecoder.decode instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "decoder.decode(this, max)"
            imports = {
                "io.ktor.utils.io.charsets.decode"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {p1, p0, p2}, Lio/ktor/utils/io/charsets/EncodingKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/nio/charset/Charset;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 223
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/nio/charset/Charset;I)I

    move-result p0

    return p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 254
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 245
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/CharsetDecoder;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7fffffff

    .line 236
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/CharsetDecoder;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readTextExact(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use readTextExactCharacters instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "readTextExactCharacters(n, charset)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-static {p0, p2, p1}, Lio/ktor/utils/io/core/StringsKt;->readTextExactCharacters(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readTextExact$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 266
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExact(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readTextExactBytes(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p2

    const-string v0, "charset.newDecoder()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decodeExactBytes(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readTextExactBytes(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Parameters order is changed."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "readTextExactBytes(bytes, charset)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {p0, p2, p1}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readTextExactBytes$default(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 296
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readTextExactBytes$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 288
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readTextExactCharacters(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-static {p0, p2, p1}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, p1, :cond_0

    return-object p0

    .line 277
    :cond_0
    invoke-static {p1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStreamToReadChars(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static synthetic readTextExactCharacters$default(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 274
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExactCharacters(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readUTF8Line(Lio/ktor/utils/io/core/ByteReadPacket;II)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    check-cast p0, Lio/ktor/utils/io/core/Input;

    move-object p1, v0

    check-cast p1, Ljava/lang/Appendable;

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8LineTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final readUTF8Line(Lio/ktor/utils/io/core/Input;II)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    move-object p1, v0

    check-cast p1, Ljava/lang/Appendable;

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8LineTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic readUTF8Line$default(Lio/ktor/utils/io/core/ByteReadPacket;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x10

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    .line 29
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8Line(Lio/ktor/utils/io/core/ByteReadPacket;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readUTF8Line$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x10

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    .line 40
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8Line(Lio/ktor/utils/io/core/Input;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readUTF8LineTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "out"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 486
    invoke-static {v1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    if-nez v4, :cond_0

    move v5, v3

    const/4 v8, 0x0

    const/16 v18, 0x0

    goto/16 :goto_18

    :cond_0
    move v6, v3

    move v9, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 491
    :cond_1
    :try_start_0
    move-object v11, v4

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .line 492
    invoke-virtual {v11}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    invoke-virtual {v11}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    sub-int/2addr v12, v11

    if-lt v12, v6, :cond_24

    .line 495
    :try_start_1
    move-object v6, v4

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .line 505
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v13, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v13, v12, :cond_21

    const/16 v18, 0x0

    .line 509
    :try_start_2
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v19, v3

    and-int/lit16 v3, v5, 0xff

    move/from16 v20, v7

    and-int/lit16 v7, v5, 0x80

    move/from16 v21, v5

    const/16 v5, 0xd

    const/16 v22, -0x1

    if-nez v7, :cond_8

    if-nez v14, :cond_7

    int-to-char v3, v3

    if-ne v3, v5, :cond_3

    if-eqz v20, :cond_2

    :goto_1
    move/from16 v3, v18

    move/from16 v10, v19

    :goto_2
    move/from16 v7, v20

    goto :goto_3

    :cond_2
    move/from16 v3, v19

    move v7, v3

    goto :goto_3

    :cond_3
    const/16 v5, 0xa

    if-ne v3, v5, :cond_4

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v17, v10

    goto :goto_2

    :cond_4
    if-eqz v20, :cond_5

    goto :goto_1

    :cond_5
    if-eq v8, v2, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 82
    :try_start_3
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v3, v19

    goto :goto_2

    :goto_3
    if-nez v3, :cond_20

    sub-int/2addr v13, v11

    .line 514
    invoke-virtual {v6, v13}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    :goto_4
    move/from16 v3, v17

    move/from16 v9, v22

    goto/16 :goto_11

    .line 80
    :cond_6
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 512
    :cond_7
    invoke-static {v14}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_8
    if-nez v14, :cond_b

    const/16 v5, 0x80

    move v15, v3

    move/from16 v3, v19

    :goto_5
    const/4 v7, 0x7

    if-ge v3, v7, :cond_9

    and-int v7, v15, v5

    if-eqz v7, :cond_9

    not-int v7, v5

    and-int/2addr v15, v7

    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v14, -0x1

    sub-int v5, v12, v13

    if-le v14, v5, :cond_a

    sub-int/2addr v13, v11

    .line 538
    invoke-virtual {v6, v13}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v9, v14

    move/from16 v3, v17

    goto/16 :goto_10

    :cond_a
    move/from16 v16, v14

    move/from16 v7, v20

    move v14, v3

    goto/16 :goto_f

    :cond_b
    shl-int/lit8 v3, v15, 0x6

    and-int/lit8 v7, v21, 0x7f

    or-int v15, v3, v7

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_1f

    .line 548
    invoke-static {v15}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_11

    int-to-char v3, v15

    if-ne v3, v5, :cond_d

    if-eqz v20, :cond_c

    :goto_6
    move/from16 v3, v18

    move/from16 v10, v19

    :goto_7
    move/from16 v7, v20

    goto :goto_8

    :cond_c
    move/from16 v3, v19

    move v7, v3

    goto :goto_8

    :cond_d
    const/16 v5, 0xa

    if-ne v3, v5, :cond_e

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v17, v10

    goto :goto_7

    :cond_e
    if-eqz v20, :cond_f

    goto :goto_6

    :cond_f
    if-eq v8, v2, :cond_10

    add-int/lit8 v8, v8, 0x1

    .line 82
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v3, v19

    goto :goto_7

    :goto_8
    if-nez v3, :cond_1a

    sub-int/2addr v13, v11

    sub-int v13, v13, v16

    add-int/lit8 v13, v13, 0x1

    .line 550
    invoke-virtual {v6, v13}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto/16 :goto_4

    .line 80
    :cond_10
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 553
    :cond_11
    invoke-static {v15}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 556
    invoke-static {v15}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v3

    int-to-char v3, v3

    if-ne v3, v5, :cond_13

    if-eqz v20, :cond_12

    :goto_9
    move/from16 v3, v18

    move/from16 v10, v19

    :goto_a
    move/from16 v7, v20

    goto :goto_b

    :cond_12
    move/from16 v3, v19

    move v7, v3

    goto :goto_b

    :cond_13
    const/16 v7, 0xa

    if-ne v3, v7, :cond_14

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v17, v10

    goto :goto_a

    :cond_14
    if-eqz v20, :cond_15

    goto :goto_9

    :cond_15
    if-eq v8, v2, :cond_1d

    add-int/lit8 v8, v8, 0x1

    .line 82
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v3, v19

    goto :goto_a

    :goto_b
    if-eqz v3, :cond_1c

    .line 557
    invoke-static {v15}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v3

    int-to-char v3, v3

    if-ne v3, v5, :cond_17

    if-eqz v7, :cond_16

    :goto_c
    move/from16 v3, v18

    move/from16 v10, v19

    goto :goto_d

    :cond_16
    move/from16 v3, v19

    move v7, v3

    goto :goto_d

    :cond_17
    const/16 v5, 0xa

    if-ne v3, v5, :cond_18

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v17, v10

    goto :goto_d

    :cond_18
    if-eqz v7, :cond_19

    goto :goto_c

    :cond_19
    if-eq v8, v2, :cond_1b

    add-int/lit8 v8, v8, 0x1

    .line 82
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v3, v19

    :goto_d
    if-nez v3, :cond_1a

    goto :goto_e

    :cond_1a
    move/from16 v15, v18

    goto :goto_f

    .line 80
    :cond_1b
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1c
    :goto_e
    sub-int/2addr v13, v11

    sub-int v13, v13, v16

    add-int/lit8 v13, v13, 0x1

    .line 559
    invoke-virtual {v6, v13}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto/16 :goto_4

    .line 80
    :cond_1d
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 554
    :cond_1e
    invoke-static {v15}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1f
    move/from16 v7, v20

    :cond_20
    :goto_f
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v19

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move/from16 v19, v3

    goto :goto_13

    :cond_21
    move/from16 v19, v3

    move/from16 v20, v7

    const/16 v18, 0x0

    sub-int/2addr v12, v11

    .line 571
    invoke-virtual {v6, v12}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move/from16 v3, v17

    move/from16 v9, v18

    :goto_10
    move/from16 v7, v20

    :goto_11
    if-lez v3, :cond_22

    .line 89
    invoke-virtual {v6, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    :cond_22
    if-eqz v10, :cond_23

    move/from16 v6, v18

    goto :goto_12

    :cond_23
    move/from16 v3, v19

    .line 92
    invoke-static {v9, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v6, v5

    .line 574
    :goto_12
    :try_start_4
    move-object v3, v4

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 492
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int v12, v5, v3

    goto :goto_14

    :catchall_1
    move-exception v0

    .line 574
    :goto_13
    move-object v2, v4

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 492
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 574
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    const/4 v3, 0x1

    goto :goto_1a

    :cond_24
    const/16 v18, 0x0

    :goto_14
    if-nez v12, :cond_25

    .line 583
    :try_start_5
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    goto :goto_16

    :catchall_3
    move-exception v0

    move/from16 v3, v18

    goto :goto_1a

    :cond_25
    if-lt v12, v6, :cond_27

    .line 584
    move-object v3, v4

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 585
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    sub-int/2addr v5, v3

    const/16 v3, 0x8

    if-ge v5, v3, :cond_26

    goto :goto_15

    :cond_26
    move-object v3, v4

    goto :goto_16

    .line 586
    :cond_27
    :goto_15
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 587
    invoke-static {v1, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_16
    if-nez v3, :cond_28

    move/from16 v3, v18

    goto :goto_17

    :cond_28
    move-object v4, v3

    const/4 v3, 0x1

    if-gtz v6, :cond_1

    :goto_17
    if-eqz v3, :cond_29

    .line 597
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_29
    move v3, v9

    const/4 v5, 0x1

    :goto_18
    if-gt v3, v5, :cond_2c

    if-gtz v8, :cond_2b

    .line 97
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_19

    :cond_2a
    return v18

    :cond_2b
    :goto_19
    return v5

    .line 95
    :cond_2c
    invoke-static {v3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :catchall_4
    move-exception v0

    move v5, v3

    :goto_1a
    if-eqz v3, :cond_2d

    .line 597
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_2d
    throw v0
.end method

.method public static final readUTF8UntilDelimiter(Lio/ktor/utils/io/core/Input;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    move-object v1, v0

    check-cast v1, Ljava/lang/Appendable;

    invoke-static {p0, v1, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;I)I

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic readUTF8UntilDelimiter$default(Lio/ktor/utils/io/core/Input;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7fffffff

    .line 107
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiter(Lio/ktor/utils/io/core/Input;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;I)I
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 156
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v1, :cond_0

    .line 157
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    int-to-byte p2, p2

    invoke-static {p0, p2, p1}, Lio/ktor/utils/io/core/ScannerKt;->readUntilDelimiter(Lio/ktor/utils/io/core/Input;BLio/ktor/utils/io/core/Output;)J

    move-result-wide p0

    :goto_0
    long-to-int p0, p0

    return p0

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 158
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v1, :cond_1

    .line 159
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    int-to-byte p3, p3

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    int-to-byte p2, p2

    invoke-static {p0, p3, p2, p1}, Lio/ktor/utils/io/core/ScannerKt;->readUntilDelimiters(Lio/ktor/utils/io/core/Input;BBLio/ktor/utils/io/core/Output;)J

    move-result-wide p0

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {p0, p2, p3, p1}, Lio/ktor/utils/io/core/StringsKt;->readUTFUntilDelimiterToSlowAscii(Lio/ktor/utils/io/core/Input;Ljava/lang/String;ILio/ktor/utils/io/core/Output;)I

    move-result p0

    return p0
.end method

.method public static final readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;I)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "out"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "delimiters"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 602
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v7, v6

    goto/16 :goto_6

    :cond_0
    move v7, v6

    move v8, v7

    .line 606
    :goto_0
    :try_start_0
    move-object v9, v5

    check-cast v9, Lio/ktor/utils/io/core/Buffer;

    .line 612
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_5

    .line 616
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    and-int/lit16 v15, v14, 0xff

    const/16 v4, 0x80

    and-int/2addr v14, v4

    if-eq v14, v4, :cond_4

    int-to-char v4, v15

    .line 127
    move-object v14, v2

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x2

    move/from16 v16, v8

    const/4 v8, 0x0

    invoke-static {v14, v4, v6, v15, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v6

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    if-eq v7, v3, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 133
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v8, v16

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_1

    .line 131
    :cond_3
    invoke-static {v3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_4
    move/from16 v16, v8

    :goto_3
    sub-int/2addr v13, v11

    .line 618
    invoke-virtual {v9, v13}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v4, v6

    goto :goto_4

    :cond_5
    move/from16 v16, v8

    sub-int/2addr v12, v11

    .line 624
    invoke-virtual {v9, v12}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v8, v16

    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_6

    .line 636
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_5

    .line 630
    :cond_6
    :try_start_1
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_8

    :goto_5
    move v6, v8

    :goto_6
    if-nez v6, :cond_7

    .line 140
    invoke-static {v1, v0, v2, v3, v7}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterToSlowUtf8(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;II)I

    move-result v0

    return v0

    :cond_7
    return v7

    :cond_8
    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move v4, v6

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_9

    .line 636
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw v0
.end method

.method public static synthetic readUTF8UntilDelimiterTo$default(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7fffffff

    .line 154
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic readUTF8UntilDelimiterTo$default(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7fffffff

    .line 121
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static final readUTF8UntilDelimiterToSlowUtf8(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;II)I
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p3

    const/4 v2, 0x1

    .line 701
    invoke-static {v1, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-nez v3, :cond_0

    move/from16 v3, p4

    move v5, v2

    move v8, v5

    goto/16 :goto_13

    :cond_0
    move v5, v2

    move v6, v5

    move-object v4, v3

    move/from16 v3, p4

    .line 706
    :goto_0
    :try_start_0
    move-object v7, v4

    check-cast v7, Lio/ktor/utils/io/core/Buffer;

    .line 707
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int/2addr v8, v7

    if-lt v8, v5, :cond_17

    .line 710
    :try_start_1
    move-object v5, v4

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 711
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v6, v8

    .line 721
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v10, :cond_14

    move/from16 v16, v2

    .line 725
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v15, v2, 0xff

    and-int/lit16 v7, v2, 0x80

    move/from16 v17, v2

    const/4 v2, 0x2

    if-nez v7, :cond_4

    if-nez v12, :cond_3

    int-to-char v7, v15

    .line 409
    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/CharSequence;

    move/from16 v18, v6

    move-object/from16 v19, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v15, v7, v8, v2, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    if-eq v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    :goto_2
    if-nez v2, :cond_13

    sub-int/2addr v11, v9

    .line 730
    invoke-virtual {v5, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    :goto_3
    const/4 v8, -0x1

    goto :goto_5

    .line 413
    :cond_2
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 728
    :cond_3
    invoke-static {v12}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_4
    move/from16 v18, v6

    move-object/from16 v19, v8

    if-nez v12, :cond_7

    const/16 v2, 0x80

    move v13, v15

    move/from16 v6, v16

    :goto_4
    const/4 v7, 0x7

    if-ge v6, v7, :cond_5

    and-int v7, v13, v2

    if-eqz v7, :cond_5

    not-int v7, v2

    and-int/2addr v13, v7

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v12, -0x1

    sub-int v6, v10, v11

    if-le v12, v6, :cond_6

    sub-int/2addr v11, v9

    .line 754
    invoke-virtual {v5, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v8, v12

    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_c

    :cond_6
    move v14, v12

    const/4 v15, 0x0

    move v12, v2

    goto/16 :goto_b

    :cond_7
    shl-int/lit8 v6, v13, 0x6

    and-int/lit8 v7, v17, 0x7f

    or-int v13, v6, v7

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_13

    .line 764
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v6

    if-eqz v6, :cond_b

    int-to-char v6, v13

    .line 409
    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v13, 0x0

    invoke-static {v7, v6, v13, v2, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    if-eq v3, v0, :cond_a

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    :goto_6
    if-nez v2, :cond_9

    sub-int/2addr v11, v9

    sub-int/2addr v11, v14

    add-int/lit8 v11, v11, 0x1

    .line 766
    invoke-virtual {v5, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    goto :goto_9

    .line 413
    :cond_a
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 769
    :cond_b
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 772
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v6

    int-to-char v6, v6

    .line 409
    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v15, 0x0

    invoke-static {v7, v6, v15, v2, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    if-eq v3, v0, :cond_11

    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v16

    :goto_7
    if-eqz v6, :cond_10

    .line 773
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v6

    int-to-char v6, v6

    .line 409
    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v15, 0x0

    invoke-static {v7, v6, v15, v2, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v15

    goto :goto_8

    :cond_d
    if-eq v3, v0, :cond_f

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    :goto_8
    if-nez v2, :cond_e

    goto :goto_a

    :cond_e
    :goto_9
    move v13, v15

    goto :goto_b

    .line 413
    :cond_f
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_10
    const/4 v15, 0x0

    :goto_a
    sub-int/2addr v11, v9

    sub-int/2addr v11, v14

    add-int/lit8 v11, v11, 0x1

    .line 775
    invoke-virtual {v5, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    const/4 v8, -0x1

    goto :goto_c

    .line 413
    :cond_11
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 770
    :cond_12
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_13
    const/4 v15, 0x0

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move/from16 v6, v18

    move-object/from16 v8, v19

    goto/16 :goto_1

    :cond_14
    move/from16 v16, v2

    move/from16 v18, v6

    const/4 v15, 0x0

    sub-int/2addr v10, v9

    .line 787
    invoke-virtual {v5, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v8, v15

    .line 790
    :goto_c
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v2, v6

    sub-int v6, v18, v2

    if-lez v6, :cond_15

    .line 422
    invoke-virtual {v5, v6}, Lio/ktor/utils/io/core/Buffer;->rewind(I)V

    move-object/from16 v2, p1

    .line 423
    invoke-static {v2, v5, v6}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    goto :goto_d

    :cond_15
    move-object/from16 v2, p1

    :goto_d
    const/4 v5, -0x1

    if-ne v8, v5, :cond_16

    move v5, v15

    goto :goto_e

    :cond_16
    move/from16 v5, v16

    .line 426
    invoke-static {v8, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    .line 791
    :goto_e
    :try_start_2
    move-object v6, v4

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .line 707
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int v8, v7, v6

    move v6, v5

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 791
    move-object v2, v4

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 707
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 791
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    goto :goto_14

    :cond_17
    move-object/from16 v2, p1

    const/4 v15, 0x0

    :goto_f
    if-nez v8, :cond_18

    .line 800
    :try_start_3
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    goto :goto_11

    :catchall_2
    move-exception v0

    move v2, v15

    goto :goto_14

    :cond_18
    if-lt v8, v5, :cond_1a

    .line 801
    move-object v7, v4

    check-cast v7, Lio/ktor/utils/io/core/Buffer;

    .line 802
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v8

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    sub-int/2addr v8, v7

    const/16 v7, 0x8

    if-ge v8, v7, :cond_19

    goto :goto_10

    :cond_19
    move-object v7, v4

    goto :goto_11

    .line 803
    :cond_1a
    :goto_10
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 804
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_11
    if-nez v7, :cond_1b

    move v7, v15

    goto :goto_12

    :cond_1b
    move-object v4, v7

    if-gtz v5, :cond_1e

    const/4 v7, 0x1

    :goto_12
    if-eqz v7, :cond_1c

    .line 814
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_1c
    move v5, v6

    const/4 v8, 0x1

    :goto_13
    if-gt v5, v8, :cond_1d

    return v3

    .line 430
    :cond_1d
    invoke-static {v5}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1e
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move v8, v2

    :goto_14
    if-eqz v2, :cond_1f

    .line 814
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_1f
    throw v0
.end method

.method private static final readUTF8UntilDelimiterToSlowUtf8(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;II)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    const/4 v3, 0x1

    .line 820
    invoke-static {v1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    if-nez v4, :cond_0

    move/from16 v4, p4

    move v8, v3

    goto/16 :goto_12

    :cond_0
    move v6, v3

    move v7, v6

    move-object v5, v4

    move/from16 v4, p4

    .line 825
    :goto_0
    :try_start_0
    move-object v8, v5

    check-cast v8, Lio/ktor/utils/io/core/Buffer;

    .line 826
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int/2addr v9, v8

    if-lt v9, v6, :cond_16

    .line 829
    :try_start_1
    move-object v6, v5

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .line 839
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v10, :cond_14

    move/from16 v16, v3

    .line 843
    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v15, v3, 0xff

    and-int/lit16 v8, v3, 0x80

    move/from16 v17, v3

    const/4 v3, 0x2

    if-nez v8, :cond_4

    if-nez v12, :cond_3

    int-to-char v8, v15

    .line 447
    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/CharSequence;

    move-object/from16 v18, v7

    move/from16 v19, v9

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v15, v8, v9, v3, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    if-eq v4, v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 454
    invoke-interface {v0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v3, v16

    :goto_2
    if-nez v3, :cond_13

    sub-int v11, v11, v19

    .line 848
    invoke-virtual {v6, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    :goto_3
    const/4 v3, -0x1

    const/4 v9, -0x1

    goto :goto_5

    .line 451
    :cond_2
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 846
    :cond_3
    invoke-static {v12}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_4
    move-object/from16 v18, v7

    move/from16 v19, v9

    if-nez v12, :cond_7

    const/16 v3, 0x80

    move v13, v15

    move/from16 v7, v16

    :goto_4
    const/4 v8, 0x7

    if-ge v7, v8, :cond_5

    and-int v8, v13, v3

    if-eqz v8, :cond_5

    not-int v8, v3

    and-int/2addr v13, v8

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v12, -0x1

    sub-int v7, v10, v11

    if-le v12, v7, :cond_6

    sub-int v11, v11, v19

    .line 872
    invoke-virtual {v6, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v9, v12

    const/4 v3, -0x1

    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_c

    :cond_6
    move v14, v12

    const/4 v15, 0x0

    move v12, v3

    goto/16 :goto_b

    :cond_7
    shl-int/lit8 v7, v13, 0x6

    and-int/lit8 v8, v17, 0x7f

    or-int v13, v7, v8

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_13

    .line 882
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v7

    if-eqz v7, :cond_b

    int-to-char v7, v13

    .line 447
    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v7, v13, v3, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    if-eq v4, v2, :cond_a

    add-int/lit8 v4, v4, 0x1

    .line 454
    invoke-interface {v0, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v3, v16

    :goto_6
    if-nez v3, :cond_9

    sub-int v11, v11, v19

    sub-int/2addr v11, v14

    add-int/lit8 v11, v11, 0x1

    .line 884
    invoke-virtual {v6, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    goto :goto_9

    .line 451
    :cond_a
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 887
    :cond_b
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 890
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v7

    int-to-char v7, v7

    .line 447
    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v7, v15, v3, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v7, 0x0

    goto :goto_7

    :cond_c
    if-eq v4, v2, :cond_11

    add-int/lit8 v4, v4, 0x1

    .line 454
    invoke-interface {v0, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v7, v16

    :goto_7
    if-eqz v7, :cond_10

    .line 891
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v7

    int-to-char v7, v7

    .line 447
    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v7, v15, v3, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v15

    goto :goto_8

    :cond_d
    if-eq v4, v2, :cond_f

    add-int/lit8 v4, v4, 0x1

    .line 454
    invoke-interface {v0, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move/from16 v3, v16

    :goto_8
    if-nez v3, :cond_e

    goto :goto_a

    :cond_e
    :goto_9
    move v13, v15

    goto :goto_b

    .line 451
    :cond_f
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_10
    const/4 v15, 0x0

    :goto_a
    sub-int v11, v11, v19

    sub-int/2addr v11, v14

    add-int/lit8 v11, v11, 0x1

    .line 893
    invoke-virtual {v6, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    const/4 v3, -0x1

    const/4 v9, -0x1

    goto :goto_c

    .line 451
    :cond_11
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 888
    :cond_12
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_13
    const/4 v15, 0x0

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move-object/from16 v7, v18

    move/from16 v9, v19

    goto/16 :goto_1

    :cond_14
    move/from16 v16, v3

    move/from16 v19, v9

    const/4 v15, 0x0

    sub-int v10, v10, v19

    .line 905
    invoke-virtual {v6, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v9, v15

    const/4 v3, -0x1

    :goto_c
    if-ne v9, v3, :cond_15

    move v6, v15

    goto :goto_d

    :cond_15
    move/from16 v3, v16

    .line 459
    invoke-static {v9, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    :goto_d
    :try_start_2
    move-object v3, v5

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 826
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int v9, v7, v3

    move v7, v6

    goto :goto_e

    :catchall_0
    move-exception v0

    .line 908
    move-object v2, v5

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 826
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 908
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    goto :goto_13

    :cond_16
    const/4 v15, 0x0

    :goto_e
    if-nez v9, :cond_17

    .line 917
    :try_start_3
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    goto :goto_10

    :catchall_2
    move-exception v0

    move v3, v15

    goto :goto_13

    :cond_17
    if-lt v9, v6, :cond_19

    .line 918
    move-object v3, v5

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 919
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    sub-int/2addr v8, v3

    const/16 v3, 0x8

    if-ge v8, v3, :cond_18

    goto :goto_f

    :cond_18
    move-object v3, v5

    goto :goto_10

    .line 920
    :cond_19
    :goto_f
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 921
    invoke-static {v1, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_10
    if-nez v3, :cond_1a

    move v8, v15

    goto :goto_11

    :cond_1a
    move-object v5, v3

    if-gtz v6, :cond_1d

    const/4 v8, 0x1

    :goto_11
    if-eqz v8, :cond_1b

    .line 931
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_1b
    move v3, v7

    const/4 v8, 0x1

    :goto_12
    if-gt v3, v8, :cond_1c

    return v4

    .line 463
    :cond_1c
    invoke-static {v3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1d
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move v8, v3

    :goto_13
    if-eqz v3, :cond_1e

    .line 931
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_1e
    throw v0
.end method

.method private static final readUTFUntilDelimiterToSlowAscii(Lio/ktor/utils/io/core/Input;Ljava/lang/String;ILio/ktor/utils/io/core/Output;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    .line 659
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 663
    :goto_0
    :try_start_0
    move-object v9, v5

    check-cast v9, Lio/ktor/utils/io/core/Buffer;

    .line 664
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 670
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v12

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v13

    move v14, v12

    :goto_1
    if-ge v14, v13, :cond_5

    .line 674
    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    and-int/lit16 v4, v15, 0xff

    const/16 v6, 0x80

    and-int/2addr v15, v6

    if-eq v15, v6, :cond_4

    int-to-char v4, v4

    .line 369
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v15, 0x2

    move/from16 v16, v8

    const/4 v8, 0x0

    move/from16 v17, v10

    const/4 v10, 0x0

    invoke-static {v6, v4, v10, v15, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v10

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    if-eq v7, v2, :cond_3

    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v16

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v17

    const/4 v4, 0x1

    goto :goto_1

    .line 373
    :cond_3
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_4
    move/from16 v16, v8

    move/from16 v17, v10

    const/4 v10, 0x0

    :goto_3
    sub-int/2addr v14, v12

    .line 676
    invoke-virtual {v9, v14}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v4, v10

    goto :goto_4

    :cond_5
    move/from16 v16, v8

    move/from16 v17, v10

    const/4 v10, 0x0

    sub-int/2addr v13, v12

    .line 682
    invoke-virtual {v9, v13}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move/from16 v8, v16

    const/4 v4, 0x1

    .line 685
    :goto_4
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    sub-int/2addr v6, v11

    sub-int v6, v17, v6

    if-lez v6, :cond_6

    .line 381
    invoke-virtual {v9, v6}, Lio/ktor/utils/io/core/Buffer;->rewind(I)V

    .line 382
    invoke-static {v3, v9, v6}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_6
    if-nez v4, :cond_7

    .line 695
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_5

    .line 689
    :cond_7
    :try_start_1
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_9

    :goto_5
    move v6, v8

    :goto_6
    if-nez v6, :cond_8

    .line 388
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v4

    if-nez v4, :cond_8

    .line 389
    invoke-static {v1, v3, v0, v2, v7}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterToSlowUtf8(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;II)I

    move-result v0

    return v0

    :cond_8
    return v7

    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move v4, v10

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_a

    .line 695
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw v0
.end method

.method public static final toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    const-string v0, "charset.newEncoder()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toByteArray$default(Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 7
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "charset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    const-string p2, "charset.newEncoder()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p0

    check-cast p2, Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p1, p2, p3, p0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static final writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p4, v0, :cond_0

    .line 311
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V

    return-void

    .line 314
    :cond_0
    invoke-virtual {p4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p4

    const-string v0, "charset.newEncoder()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I

    return-void
.end method

.method public static final writeText(Lio/ktor/utils/io/core/Output;[CIILjava/nio/charset/Charset;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p4, v0, :cond_0

    .line 328
    new-instance p4, Lio/ktor/utils/io/core/internal/CharArraySequence;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p4, p1, v0, v1}, Lio/ktor/utils/io/core/internal/CharArraySequence;-><init>([CII)V

    check-cast p4, Ljava/lang/CharSequence;

    invoke-static {p0, p4, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V

    return-void

    .line 331
    :cond_0
    invoke-virtual {p4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p4

    const-string v0, "charset.newEncoder()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p1, p2, p3, p0}, Lio/ktor/utils/io/charsets/EncodingKt;->encode(Ljava/nio/charset/CharsetEncoder;[CIILio/ktor/utils/io/core/Output;)V

    return-void
.end method

.method public static synthetic writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 307
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 308
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 304
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    return-void
.end method

.method public static synthetic writeText$default(Lio/ktor/utils/io/core/Output;[CIILjava/nio/charset/Charset;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 324
    array-length p3, p1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 325
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 321
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;[CIILjava/nio/charset/Charset;)V

    return-void
.end method

.method private static final writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 645
    invoke-static {p0, v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    move v4, p2

    .line 650
    :goto_0
    :try_start_0
    move-object p2, v0

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .line 338
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 339
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    .line 340
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    move-object v3, p1

    move v5, p3

    .line 342
    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I

    move-result p1

    invoke-static {p1}, Lio/ktor/utils/io/core/internal/EncodeResult;->component1-Mh2AYeg(I)S

    move-result p3

    invoke-static {p1}, Lio/ktor/utils/io/core/internal/EncodeResult;->component2-Mh2AYeg(I)S

    move-result p1

    const v2, 0xffff

    and-int/2addr p3, v2

    add-int/2addr v4, p3

    and-int/2addr p1, v2

    .line 345
    invoke-virtual {p2, p1}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    if-nez p3, :cond_0

    if-ge v4, v5, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :cond_0
    if-ge v4, v5, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-lez p1, :cond_2

    .line 652
    invoke-static {p0, p1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v3

    move p3, v5

    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
.end method
