.class public final Lcom/stripe/proto/model/rest/Receipt$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Receipt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Receipt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Receipt;",
        "Lcom/stripe/proto/model/rest/Receipt$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Receipt$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Receipt;",
        "()V",
        "account_type",
        "",
        "application_cryptogram",
        "application_preferred_name",
        "authorization_code",
        "authorization_response_code",
        "cardholder_verification_method",
        "dedicated_file_name",
        "terminal_verification_results",
        "transaction_status_information",
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
.field public account_type:Ljava/lang/String;

.field public application_cryptogram:Ljava/lang/String;

.field public application_preferred_name:Ljava/lang/String;

.field public authorization_code:Ljava/lang/String;

.field public authorization_response_code:Ljava/lang/String;

.field public cardholder_verification_method:Ljava/lang/String;

.field public dedicated_file_name:Ljava/lang/String;

.field public terminal_verification_results:Ljava/lang/String;

.field public transaction_status_information:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final account_type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->account_type:Ljava/lang/String;

    return-object p0
.end method

.method public final application_cryptogram(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->application_cryptogram:Ljava/lang/String;

    return-object p0
.end method

.method public final application_preferred_name(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->application_preferred_name:Ljava/lang/String;

    return-object p0
.end method

.method public final authorization_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->authorization_code:Ljava/lang/String;

    return-object p0
.end method

.method public final authorization_response_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->authorization_response_code:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Receipt$Builder;->build()Lcom/stripe/proto/model/rest/Receipt;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Receipt;
    .locals 11

    .line 307
    new-instance v0, Lcom/stripe/proto/model/rest/Receipt;

    .line 308
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->application_cryptogram:Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->application_preferred_name:Ljava/lang/String;

    .line 310
    iget-object v3, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->authorization_code:Ljava/lang/String;

    .line 311
    iget-object v4, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->authorization_response_code:Ljava/lang/String;

    .line 312
    iget-object v5, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->cardholder_verification_method:Ljava/lang/String;

    .line 313
    iget-object v6, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->dedicated_file_name:Ljava/lang/String;

    .line 314
    iget-object v7, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->terminal_verification_results:Ljava/lang/String;

    .line 315
    iget-object v8, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->transaction_status_information:Ljava/lang/String;

    .line 316
    iget-object v9, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->account_type:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Receipt$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 307
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/rest/Receipt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cardholder_verification_method(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->cardholder_verification_method:Ljava/lang/String;

    return-object p0
.end method

.method public final dedicated_file_name(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->dedicated_file_name:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_verification_results(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->terminal_verification_results:Ljava/lang/String;

    return-object p0
.end method

.method public final transaction_status_information(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Receipt$Builder;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Receipt$Builder;->transaction_status_information:Ljava/lang/String;

    return-object p0
.end method
