.class public interface abstract Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;
.super Ljava/lang/Object;
.source "RestInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/RestInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Rq:",
        "Lcom/squareup/wire/Message<",
        "TRq;*>;Rsp:",
        "Lcom/squareup/wire/Message<",
        "TRsp;*>;Err:",
        "Lcom/squareup/wire/Message<",
        "TErr;*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u001c\u0008\u0000\u0010\u0001*\u0016\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u0001`\u0003*\u001c\u0008\u0001\u0010\u0004*\u0016\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u0004`\u0003*\u001c\u0008\u0002\u0010\u0005*\u0016\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u0005`\u00032\u00020\u0006J\r\u0010\u000b\u001a\u00028\u0002H&\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH&J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0008\u0010\u0011\u001a\u00020\u0012H&J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0014H&J\r\u0010\u0015\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0016\u001a\u00020\u000eH&R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0017\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;",
        "Rq",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "Rsp",
        "Err",
        "",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "getRestConfig",
        "()Lcom/stripe/jvmcore/restclient/RestConfig;",
        "error",
        "()Lcom/squareup/wire/Message;",
        "method",
        "",
        "proceed",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "request",
        "Lokhttp3/Request;",
        "responseProtoType",
        "Ljava/lang/Class;",
        "rpcRequest",
        "service",
        "base"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract error()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TErr;"
        }
    .end annotation
.end method

.method public abstract getRestConfig()Lcom/stripe/jvmcore/restclient/RestConfig;
.end method

.method public abstract method()Ljava/lang/String;
.end method

.method public abstract proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation
.end method

.method public abstract request()Lokhttp3/Request;
.end method

.method public abstract responseProtoType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TRsp;>;"
        }
    .end annotation
.end method

.method public abstract rpcRequest()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRq;"
        }
    .end annotation
.end method

.method public abstract service()Ljava/lang/String;
.end method
