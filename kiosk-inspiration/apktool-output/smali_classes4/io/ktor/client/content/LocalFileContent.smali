.class public final Lio/ktor/client/content/LocalFileContent;
.super Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.source "LocalFileContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/client/content/LocalFileContent;",
        "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
        "file",
        "Ljava/io/File;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "(Ljava/io/File;Lio/ktor/http/ContentType;)V",
        "contentLength",
        "",
        "getContentLength",
        "()Ljava/lang/Long;",
        "getContentType",
        "()Lio/ktor/http/ContentType;",
        "getFile",
        "()Ljava/io/File;",
        "readFrom",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "range",
        "Lkotlin/ranges/LongRange;",
        "ktor-client-core"
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
.field private final contentType:Lio/ktor/http/ContentType;

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lio/ktor/http/ContentType;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;-><init>()V

    .line 20
    iput-object p1, p0, Lio/ktor/client/content/LocalFileContent;->file:Ljava/io/File;

    .line 21
    iput-object p2, p0, Lio/ktor/client/content/LocalFileContent;->contentType:Lio/ktor/http/ContentType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lio/ktor/http/ContentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 21
    sget-object p2, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-static {p2, p1}, Lio/ktor/http/FileContentTypeJvmKt;->defaultForFile(Lio/ktor/http/ContentType$Companion;Ljava/io/File;)Lio/ktor/http/ContentType;

    move-result-object p2

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/client/content/LocalFileContent;-><init>(Ljava/io/File;Lio/ktor/http/ContentType;)V

    return-void
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 2

    .line 24
    iget-object v0, p0, Lio/ktor/client/content/LocalFileContent;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/ktor/client/content/LocalFileContent;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/client/content/LocalFileContent;->file:Ljava/io/File;

    return-object v0
.end method

.method public readFrom()Lio/ktor/utils/io/ByteReadChannel;
    .locals 8

    .line 26
    iget-object v0, p0, Lio/ktor/client/content/LocalFileContent;->file:Ljava/io/File;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lio/ktor/util/cio/FileChannelsKt;->readChannel$default(Ljava/io/File;JJLkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lkotlin/ranges/LongRange;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 9

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lio/ktor/client/content/LocalFileContent;->file:Ljava/io/File;

    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getEndInclusive()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lio/ktor/util/cio/FileChannelsKt;->readChannel$default(Ljava/io/File;JJLkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    return-object p1
.end method
