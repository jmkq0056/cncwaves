.class public final Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Source$CardPresent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Source$CardPresent;",
        "Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Source$CardPresent;",
        "()V",
        "application_preferred_name",
        "",
        "authorization_code",
        "authorization_response_code",
        "brand",
        "cvm_type",
        "dedicated_file_name",
        "emv_auth_data",
        "evidence_customer_signature",
        "fingerprint",
        "last4",
        "read_method",
        "reader_",
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
.field public application_preferred_name:Ljava/lang/String;

.field public authorization_code:Ljava/lang/String;

.field public authorization_response_code:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public cvm_type:Ljava/lang/String;

.field public dedicated_file_name:Ljava/lang/String;

.field public emv_auth_data:Ljava/lang/String;

.field public evidence_customer_signature:Ljava/lang/String;

.field public fingerprint:Ljava/lang/String;

.field public last4:Ljava/lang/String;

.field public read_method:Ljava/lang/String;

.field public reader_:Ljava/lang/String;

.field public terminal_verification_results:Ljava/lang/String;

.field public transaction_status_information:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final application_preferred_name(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->application_preferred_name:Ljava/lang/String;

    return-object p0
.end method

.method public final authorization_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->authorization_code:Ljava/lang/String;

    return-object p0
.end method

.method public final authorization_response_code(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->authorization_response_code:Ljava/lang/String;

    return-object p0
.end method

.method public final brand(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 600
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->build()Lcom/stripe/proto/model/rest/Source$CardPresent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Source$CardPresent;
    .locals 17

    move-object/from16 v0, p0

    .line 755
    new-instance v1, Lcom/stripe/proto/model/rest/Source$CardPresent;

    .line 756
    iget-object v2, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->last4:Ljava/lang/String;

    .line 757
    iget-object v3, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->brand:Ljava/lang/String;

    .line 758
    iget-object v4, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->evidence_customer_signature:Ljava/lang/String;

    .line 759
    iget-object v5, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->read_method:Ljava/lang/String;

    .line 760
    iget-object v6, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->emv_auth_data:Ljava/lang/String;

    .line 761
    iget-object v7, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->authorization_response_code:Ljava/lang/String;

    .line 762
    iget-object v8, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->dedicated_file_name:Ljava/lang/String;

    .line 763
    iget-object v9, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->application_preferred_name:Ljava/lang/String;

    .line 764
    iget-object v10, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->terminal_verification_results:Ljava/lang/String;

    .line 765
    iget-object v11, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->transaction_status_information:Ljava/lang/String;

    .line 766
    iget-object v12, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->cvm_type:Ljava/lang/String;

    .line 767
    iget-object v13, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->reader_:Ljava/lang/String;

    .line 768
    iget-object v14, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->fingerprint:Ljava/lang/String;

    .line 769
    iget-object v15, v0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->authorization_code:Ljava/lang/String;

    .line 770
    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v16

    .line 755
    invoke-direct/range {v1 .. v16}, Lcom/stripe/proto/model/rest/Source$CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public final cvm_type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->cvm_type:Ljava/lang/String;

    return-object p0
.end method

.method public final dedicated_file_name(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->dedicated_file_name:Ljava/lang/String;

    return-object p0
.end method

.method public final emv_auth_data(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->emv_auth_data:Ljava/lang/String;

    return-object p0
.end method

.method public final evidence_customer_signature(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->evidence_customer_signature:Ljava/lang/String;

    return-object p0
.end method

.method public final fingerprint(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->fingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public final last4(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->last4:Ljava/lang/String;

    return-object p0
.end method

.method public final read_method(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->read_method:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->reader_:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_verification_results(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->terminal_verification_results:Ljava/lang/String;

    return-object p0
.end method

.method public final transaction_status_information(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;->transaction_status_information:Ljava/lang/String;

    return-object p0
.end method
