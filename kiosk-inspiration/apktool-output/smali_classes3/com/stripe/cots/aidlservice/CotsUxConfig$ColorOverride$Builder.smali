.class public final Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsUxConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;",
        "()V",
        "colorResource",
        "",
        "Ljava/lang/Integer;",
        "colorValue",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;",
        "proto_release"
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
.field public colorResource:Ljava/lang/Integer;

.field public colorValue:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;->build()Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;
    .locals 4

    .line 640
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;

    .line 641
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;->colorResource:Ljava/lang/Integer;

    .line 642
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;->colorValue:Ljava/lang/Integer;

    .line 643
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 640
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final colorResource(Ljava/lang/Integer;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;->colorResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 630
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;->colorValue:Ljava/lang/Integer;

    return-object p0
.end method

.method public final colorValue(Ljava/lang/Integer;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;->colorValue:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 636
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;->colorResource:Ljava/lang/Integer;

    return-object p0
.end method
