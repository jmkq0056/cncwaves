.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
        "()V",
        "code",
        "",
        "decline_code",
        "doc_url",
        "message",
        "param_",
        "payment_method",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "payment_method_type",
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

.field public payment_method_type:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2225
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 2225
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->build()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
    .locals 10

    .line 2314
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    .line 2315
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->code:Ljava/lang/String;

    .line 2316
    iget-object v2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->decline_code:Ljava/lang/String;

    .line 2317
    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->doc_url:Ljava/lang/String;

    .line 2318
    iget-object v4, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->message:Ljava/lang/String;

    .line 2319
    iget-object v5, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->param_:Ljava/lang/String;

    .line 2320
    iget-object v6, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 2321
    iget-object v7, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->payment_method_type:Ljava/lang/String;

    .line 2322
    iget-object v8, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->type:Ljava/lang/String;

    .line 2323
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 2314
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 0

    .line 2254
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public final decline_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 0

    .line 2262
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->decline_code:Ljava/lang/String;

    return-object p0
.end method

.method public final doc_url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 0

    .line 2270
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->doc_url:Ljava/lang/String;

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 0

    .line 2278
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final param_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 0

    .line 2286
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->param_:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Lcom/stripe/proto/model/rest/PaymentMethod;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 0

    .line 2294
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    return-object p0
.end method

.method public final payment_method_type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 0

    .line 2302
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->payment_method_type:Ljava/lang/String;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;
    .locals 0

    .line 2310
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
