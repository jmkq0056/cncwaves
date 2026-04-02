.class public final Lcom/stripe/proto/model/rest/LastSetupError$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LastSetupError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/LastSetupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/LastSetupError;",
        "Lcom/stripe/proto/model/rest/LastSetupError$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/LastSetupError$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/LastSetupError;",
        "()V",
        "code",
        "",
        "decline_code",
        "doc_url",
        "message",
        "param_",
        "payment_method",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "type",
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
.field public code:Ljava/lang/String;

.field public decline_code:Ljava/lang/String;

.field public doc_url:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public param_:Ljava/lang/String;

.field public payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->build()Lcom/stripe/proto/model/rest/LastSetupError;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/LastSetupError;
    .locals 9

    .line 248
    new-instance v0, Lcom/stripe/proto/model/rest/LastSetupError;

    .line 249
    iget-object v1, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->code:Ljava/lang/String;

    .line 250
    iget-object v2, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->decline_code:Ljava/lang/String;

    .line 251
    iget-object v3, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->doc_url:Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->message:Ljava/lang/String;

    .line 253
    iget-object v5, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->param_:Ljava/lang/String;

    .line 254
    iget-object v6, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 255
    iget-object v7, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->type:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 248
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/rest/LastSetupError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/LastSetupError$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public final decline_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/LastSetupError$Builder;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->decline_code:Ljava/lang/String;

    return-object p0
.end method

.method public final doc_url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/LastSetupError$Builder;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->doc_url:Ljava/lang/String;

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/model/rest/LastSetupError$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final param_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/LastSetupError$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->param_:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Lcom/stripe/proto/model/rest/PaymentMethod;)Lcom/stripe/proto/model/rest/LastSetupError$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/LastSetupError$Builder;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/stripe/proto/model/rest/LastSetupError$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
