.class public final Lio/ktor/client/statement/CompatibilityKt;
.super Ljava/lang/Object;
.source "Compatibility.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0010\u0008\u0002\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a\u001d\u0010\u0007\u001a\u0002H\u0008\"\u0006\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\tH\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001aX\u0010\u0007\u001a\u0002H\u000b\"\u0006\u0008\u0000\u0010\u0008\u0018\u0001\"\u0004\u0008\u0001\u0010\u000b*\u00020\t23\u0008\u0004\u0010\u000c\u001a-\u0008\u0001\u0012\u0013\u0012\u0011H\u0008\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000b0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\rH\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "readText",
        "",
        "Lio/ktor/client/statement/HttpResponse;",
        "fallbackCharset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "(Lio/ktor/client/statement/HttpResponse;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receive",
        "T",
        "Lio/ktor/client/statement/HttpStatement;",
        "(Lio/ktor/client/statement/HttpStatement;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "R",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "response",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/ktor/client/statement/HttpStatement;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public static final readText(Lio/ktor/client/statement/HttpResponse;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/statement/HttpResponse;",
            "Ljava/nio/charset/Charset;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use `bodyAsText` method instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.bodyAsText()"
            imports = {}
        .end subannotation
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    const-string p1, "Use `bodyAsText` method instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic readText$default(Lio/ktor/client/statement/HttpResponse;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 45
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/client/statement/CompatibilityKt;->readText(Lio/ktor/client/statement/HttpResponse;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic receive(Lio/ktor/client/statement/HttpStatement;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/client/statement/HttpStatement;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use `body` method instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.body<T>()"
            imports = {}
        .end subannotation
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    const-string p1, "Use `body` method instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic receive(Lio/ktor/client/statement/HttpStatement;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/client/statement/HttpStatement;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use `body` method instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.body<T>()"
            imports = {}
        .end subannotation
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    const-string p1, "Use `body` method instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
