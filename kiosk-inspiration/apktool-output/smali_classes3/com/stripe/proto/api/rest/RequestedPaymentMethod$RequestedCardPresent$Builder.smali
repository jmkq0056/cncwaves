.class public final Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RequestedPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;",
        "()V",
        "emv_data",
        "",
        "emv_processing_method",
        "encrypted_pin_block",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;",
        "latitude",
        "longitude",
        "pin_block",
        "pin_block_ksn",
        "read_method",
        "reader_",
        "swipe_reason",
        "track_2",
        "track_2_key_id",
        "track_2_key_type",
        "track_2_ksn",
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
.field public emv_data:Ljava/lang/String;

.field public emv_processing_method:Ljava/lang/String;

.field public encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public pin_block:Ljava/lang/String;

.field public pin_block_ksn:Ljava/lang/String;

.field public read_method:Ljava/lang/String;

.field public reader_:Ljava/lang/String;

.field public swipe_reason:Ljava/lang/String;

.field public track_2:Ljava/lang/String;

.field public track_2_key_id:Ljava/lang/String;

.field public track_2_key_type:Ljava/lang/String;

.field public track_2_ksn:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 611
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->build()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;
    .locals 19

    move-object/from16 v0, p0

    .line 776
    new-instance v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    .line 777
    iget-object v2, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->type:Ljava/lang/String;

    .line 778
    iget-object v3, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->read_method:Ljava/lang/String;

    .line 779
    iget-object v4, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->swipe_reason:Ljava/lang/String;

    .line 780
    iget-object v5, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2:Ljava/lang/String;

    .line 781
    iget-object v6, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->emv_processing_method:Ljava/lang/String;

    .line 782
    iget-object v7, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->emv_data:Ljava/lang/String;

    .line 783
    iget-object v8, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->pin_block:Ljava/lang/String;

    .line 784
    iget-object v9, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->pin_block_ksn:Ljava/lang/String;

    .line 785
    iget-object v10, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->reader_:Ljava/lang/String;

    .line 786
    iget-object v11, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_key_type:Ljava/lang/String;

    .line 787
    iget-object v12, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_key_id:Ljava/lang/String;

    .line 788
    iget-object v13, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_ksn:Ljava/lang/String;

    .line 789
    iget-object v14, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->latitude:Ljava/lang/String;

    .line 790
    iget-object v15, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->longitude:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 791
    iget-object v1, v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    .line 792
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v17

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .line 776
    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final emv_data(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->emv_data:Ljava/lang/String;

    return-object p0
.end method

.method public final emv_processing_method(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->emv_processing_method:Ljava/lang/String;

    return-object p0
.end method

.method public final encrypted_pin_block(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->encrypted_pin_block:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    return-object p0
.end method

.method public final latitude(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public final longitude(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public final pin_block(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->pin_block:Ljava/lang/String;

    return-object p0
.end method

.method public final pin_block_ksn(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->pin_block_ksn:Ljava/lang/String;

    return-object p0
.end method

.method public final read_method(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->read_method:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->reader_:Ljava/lang/String;

    return-object p0
.end method

.method public final swipe_reason(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->swipe_reason:Ljava/lang/String;

    return-object p0
.end method

.method public final track_2(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2:Ljava/lang/String;

    return-object p0
.end method

.method public final track_2_key_id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_key_id:Ljava/lang/String;

    return-object p0
.end method

.method public final track_2_key_type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_key_type:Ljava/lang/String;

    return-object p0
.end method

.method public final track_2_ksn(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->track_2_ksn:Ljava/lang/String;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
