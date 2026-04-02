.class public final Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EmvCaPublicKeyBundlePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;",
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;",
        "()V",
        "bundle_checksum",
        "",
        "cap_keys",
        "",
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;",
        "last_modified_ms",
        "",
        "build",
        "terminal_release"
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
.field public bundle_checksum:Ljava/lang/String;

.field public cap_keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;",
            ">;"
        }
    .end annotation
.end field

.field public last_modified_ms:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->bundle_checksum:Ljava/lang/String;

    .line 131
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->cap_keys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->build()Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;
    .locals 6

    .line 158
    new-instance v0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->bundle_checksum:Ljava/lang/String;

    .line 160
    iget-wide v2, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->last_modified_ms:J

    .line 161
    iget-object v4, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->cap_keys:Ljava/util/List;

    .line 162
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;-><init>(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bundle_checksum(Ljava/lang/String;)Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;
    .locals 1

    const-string v0, "bundle_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->bundle_checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final cap_keys(Ljava/util/List;)Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;",
            ">;)",
            "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;"
        }
    .end annotation

    const-string v0, "cap_keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 154
    iput-object p1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->cap_keys:Ljava/util/List;

    return-object p0
.end method

.method public final last_modified_ms(J)Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;
    .locals 0

    .line 145
    iput-wide p1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->last_modified_ms:J

    return-object p0
.end method
