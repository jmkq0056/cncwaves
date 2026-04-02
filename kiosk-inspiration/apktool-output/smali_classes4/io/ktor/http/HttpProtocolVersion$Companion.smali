.class public final Lio/ktor/http/HttpProtocolVersion$Companion;
.super Ljava/lang/Object;
.source "HttpProtocolVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/HttpProtocolVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0017R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/ktor/http/HttpProtocolVersion$Companion;",
        "",
        "()V",
        "HTTP_1_0",
        "Lio/ktor/http/HttpProtocolVersion;",
        "getHTTP_1_0",
        "()Lio/ktor/http/HttpProtocolVersion;",
        "HTTP_1_1",
        "getHTTP_1_1",
        "HTTP_2_0",
        "getHTTP_2_0",
        "QUIC",
        "getQUIC",
        "SPDY_3",
        "getSPDY_3",
        "fromValue",
        "name",
        "",
        "major",
        "",
        "minor",
        "parse",
        "value",
        "",
        "ktor-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;II)Lio/ktor/http/HttpProtocolVersion;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-string v0, "HTTP"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne p2, v2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p2, v2, :cond_1

    if-ne p3, v2, :cond_1

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_1()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_2_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p1

    return-object p1

    .line 48
    :cond_2
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    invoke-direct {v0, p1, p2, p3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final getHTTP_1_0()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 29
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getHTTP_1_0$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public final getHTTP_1_1()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 24
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getHTTP_1_1$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public final getHTTP_2_0()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 19
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getHTTP_2_0$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public final getQUIC()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 39
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getQUIC$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public final getSPDY_3()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 34
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getSPDY_3$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/CharSequence;)Lio/ktor/http/HttpProtocolVersion;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 58
    new-array v2, v0, [Ljava/lang/String;

    const-string v1, "/"

    const/4 v7, 0x0

    aput-object v1, v2, v7

    const-string v1, "."

    const/4 v8, 0x1

    aput-object v1, v2, v8

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 58
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lio/ktor/http/HttpProtocolVersion$Companion;->fromValue(Ljava/lang/String;II)Lio/ktor/http/HttpProtocolVersion;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse HttpProtocolVersion. Expected format: protocol/major.minor, but actual: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
