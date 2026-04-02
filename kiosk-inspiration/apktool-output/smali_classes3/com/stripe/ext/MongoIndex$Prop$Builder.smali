.class public final Lcom/stripe/ext/MongoIndex$Prop$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MongoIndex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/MongoIndex$Prop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/MongoIndex$Prop;",
        "Lcom/stripe/ext/MongoIndex$Prop$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/ext/MongoIndex$Prop$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/MongoIndex$Prop;",
        "()V",
        "is_",
        "Lcom/stripe/ext/MongoIndex$Operator;",
        "name",
        "",
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
.field public is_:Lcom/stripe/ext/MongoIndex$Operator;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 530
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/stripe/ext/MongoIndex$Prop$Builder;->build()Lcom/stripe/ext/MongoIndex$Prop;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/MongoIndex$Prop;
    .locals 4

    .line 550
    new-instance v0, Lcom/stripe/ext/MongoIndex$Prop;

    .line 551
    iget-object v1, p0, Lcom/stripe/ext/MongoIndex$Prop$Builder;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 552
    iget-object v2, p0, Lcom/stripe/ext/MongoIndex$Prop$Builder;->is_:Lcom/stripe/ext/MongoIndex$Operator;

    .line 553
    invoke-virtual {p0}, Lcom/stripe/ext/MongoIndex$Prop$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 550
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/MongoIndex$Prop;-><init>(Ljava/lang/String;Lcom/stripe/ext/MongoIndex$Operator;Lokio/ByteString;)V

    return-object v0

    .line 551
    :cond_0
    const-string v0, "name"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final is_(Lcom/stripe/ext/MongoIndex$Operator;)Lcom/stripe/ext/MongoIndex$Prop$Builder;
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Prop$Builder;->is_:Lcom/stripe/ext/MongoIndex$Operator;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/ext/MongoIndex$Prop$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Prop$Builder;->name:Ljava/lang/String;

    return-object p0
.end method
