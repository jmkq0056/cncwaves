.class public final Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EnvironmentConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;",
        "()V",
        "certhorse",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;",
        "preproduction",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;",
        "production",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;",
        "proxygateway",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;",
        "qa",
        "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;",
        "build",
        "internal_release"
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
.field public certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

.field public preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

.field public production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

.field public proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

.field public qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->build()Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;
    .locals 7

    .line 314
    new-instance v0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;

    .line 315
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    .line 316
    iget-object v2, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    .line 317
    iget-object v3, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    .line 318
    iget-object v4, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    .line 319
    iget-object v5, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    .line 320
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 314
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;-><init>(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;)V

    return-object v0
.end method

.method public final certhorse(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;)Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    const/4 p1, 0x0

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    .line 290
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    .line 292
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    return-object p0
.end method

.method public final preproduction(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;)Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    .line 299
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    .line 300
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    .line 301
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    return-object p0
.end method

.method public final production(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;)Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    return-object p0
.end method

.method public final proxygateway(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;)Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    .line 308
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    .line 309
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    .line 310
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    return-object p0
.end method

.method public final qa(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;)Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->qa:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;

    const/4 p1, 0x0

    .line 280
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->production:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->certhorse:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->preproduction:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;->proxygateway:Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;

    return-object p0
.end method
