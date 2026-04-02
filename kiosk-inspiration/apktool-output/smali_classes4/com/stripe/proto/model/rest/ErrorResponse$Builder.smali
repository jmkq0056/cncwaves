.class public final Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ErrorResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "Lcom/stripe/proto/model/rest/ErrorResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0012\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ErrorResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "()V",
        "charge",
        "",
        "code",
        "decline_code",
        "doc_url",
        "message",
        "param_",
        "payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "setup_intent",
        "Lcom/stripe/proto/model/rest/ErrorSetupIntent;",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
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
.field public charge:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public decline_code:Ljava/lang/String;

.field public doc_url:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public param_:Ljava/lang/String;

.field public payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

.field public setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

.field public source:Lcom/stripe/proto/model/rest/Source;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->build()Lcom/stripe/proto/model/rest/ErrorResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/ErrorResponse;
    .locals 12

    .line 335
    new-instance v0, Lcom/stripe/proto/model/rest/ErrorResponse;

    .line 336
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->type:Ljava/lang/String;

    .line 337
    iget-object v2, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->charge:Ljava/lang/String;

    .line 338
    iget-object v3, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->code:Ljava/lang/String;

    .line 339
    iget-object v4, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->decline_code:Ljava/lang/String;

    .line 340
    iget-object v5, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->doc_url:Ljava/lang/String;

    .line 341
    iget-object v6, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->message:Ljava/lang/String;

    .line 342
    iget-object v7, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->param_:Ljava/lang/String;

    .line 343
    iget-object v8, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    .line 344
    iget-object v9, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 345
    iget-object v10, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    .line 346
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 335
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/rest/ErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorSetupIntent;Lokio/ByteString;)V

    return-object v0
.end method

.method public final charge(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->charge:Ljava/lang/String;

    return-object p0
.end method

.method public final code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public final decline_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->decline_code:Ljava/lang/String;

    return-object p0
.end method

.method public final doc_url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->doc_url:Ljava/lang/String;

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final param_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->param_:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_intent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    return-object p0
.end method

.method public final setup_intent(Lcom/stripe/proto/model/rest/ErrorSetupIntent;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    return-object p0
.end method

.method public final source(Lcom/stripe/proto/model/rest/Source;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "source is deprecated"
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ErrorResponse$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ErrorResponse$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
