.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "HttpServerDomain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;",
        "()V",
        "certificate_scope",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;",
        "request_scope",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;",
        "startup_scope",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;",
        "build",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public certificate_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;

.field public request_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;

.field public startup_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;
    .locals 5

    .line 143
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->certificate_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;

    .line 145
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->startup_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;

    .line 146
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->request_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;

    .line 147
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 143
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;Lokio/ByteString;)V

    return-object v0
.end method

.method public final certificate_scope(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->certificate_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->startup_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->request_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;

    return-object p0
.end method

.method public final request_scope(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->request_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->certificate_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;

    .line 139
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->startup_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;

    return-object p0
.end method

.method public final startup_scope(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->startup_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->certificate_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;

    .line 132
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;->request_scope:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;

    return-object p0
.end method
