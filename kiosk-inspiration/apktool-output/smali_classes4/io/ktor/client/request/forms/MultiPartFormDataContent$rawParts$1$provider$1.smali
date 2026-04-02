.class final Lio/ktor/client/request/forms/MultiPartFormDataContent$rawParts$1$provider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FormDataContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/request/forms/MultiPartFormDataContent;-><init>(Ljava/util/List;Ljava/lang/String;Lio/ktor/http/ContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormDataContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormDataContent.kt\nio/ktor/client/request/forms/MultiPartFormDataContent$rawParts$1$provider$1\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,172:1\n12#2,11:173\n*S KotlinDebug\n*F\n+ 1 FormDataContent.kt\nio/ktor/client/request/forms/MultiPartFormDataContent$rawParts$1$provider$1\n*L\n73#1:173,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    iput-object p1, p0, Lio/ktor/client/request/forms/MultiPartFormDataContent$rawParts$1$provider$1;->$bytes:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 7

    .line 73
    iget-object v1, p0, Lio/ktor/client/request/forms/MultiPartFormDataContent$rawParts$1$provider$1;->$bytes:[B

    .line 177
    new-instance v6, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v2, v0}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    :try_start_0
    move-object v0, v6

    check-cast v0, Lio/ktor/utils/io/core/Output;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 180
    invoke-virtual {v6}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 182
    invoke-virtual {v6}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 183
    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lio/ktor/client/request/forms/MultiPartFormDataContent$rawParts$1$provider$1;->invoke()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0
.end method
