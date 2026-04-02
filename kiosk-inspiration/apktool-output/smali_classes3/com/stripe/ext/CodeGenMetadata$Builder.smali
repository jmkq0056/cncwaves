.class public final Lcom/stripe/ext/CodeGenMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CodeGenMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/CodeGenMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/CodeGenMetadata;",
        "Lcom/stripe/ext/CodeGenMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/ext/CodeGenMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/CodeGenMetadata;",
        "()V",
        "model_type",
        "",
        "spec_type",
        "view_type",
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
.field public model_type:Ljava/lang/String;

.field public spec_type:Ljava/lang/String;

.field public view_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/stripe/ext/CodeGenMetadata$Builder;->build()Lcom/stripe/ext/CodeGenMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/CodeGenMetadata;
    .locals 5

    .line 122
    new-instance v0, Lcom/stripe/ext/CodeGenMetadata;

    .line 123
    iget-object v1, p0, Lcom/stripe/ext/CodeGenMetadata$Builder;->view_type:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/stripe/ext/CodeGenMetadata$Builder;->spec_type:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/stripe/ext/CodeGenMetadata$Builder;->model_type:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/stripe/ext/CodeGenMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 122
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/ext/CodeGenMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final model_type(Ljava/lang/String;)Lcom/stripe/ext/CodeGenMetadata$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/stripe/ext/CodeGenMetadata$Builder;->model_type:Ljava/lang/String;

    return-object p0
.end method

.method public final spec_type(Ljava/lang/String;)Lcom/stripe/ext/CodeGenMetadata$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/stripe/ext/CodeGenMetadata$Builder;->spec_type:Ljava/lang/String;

    return-object p0
.end method

.method public final view_type(Ljava/lang/String;)Lcom/stripe/ext/CodeGenMetadata$Builder;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/stripe/ext/CodeGenMetadata$Builder;->view_type:Ljava/lang/String;

    return-object p0
.end method
