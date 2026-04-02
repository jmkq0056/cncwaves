.class public final Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineSetupIntentDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "()V",
        "card_present_details",
        "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;",
        "id",
        "",
        "requires_upload",
        "",
        "stored_at",
        "",
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
.field public card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

.field public id:Ljava/lang/String;

.field public requires_upload:Z

.field public stored_at:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->build()Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;
    .locals 7

    .line 173
    new-instance v0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->id:Ljava/lang/String;

    .line 175
    iget-wide v2, p0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->stored_at:J

    .line 176
    iget-boolean v4, p0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->requires_upload:Z

    .line 177
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    .line 178
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 173
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;-><init>(Ljava/lang/String;JZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_present_details(Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;)Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final requires_upload(Z)Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->requires_upload:Z

    return-object p0
.end method

.method public final stored_at(J)Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;
    .locals 0

    .line 153
    iput-wide p1, p0, Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;->stored_at:J

    return-object p0
.end method
