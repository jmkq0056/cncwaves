.class public interface abstract Lcom/stripe/offlinemode/cipher/OfflineEntityCipher;
.super Ljava/lang/Object;
.source "OfflineEntityCipher.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;*>;E::",
        "Lcom/stripe/offlinemode/storage/OfflineEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008f\u0018\u0000*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u00020\u0005J\u0015\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u00028\u00012\u0006\u0010\n\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u000b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000c\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/cipher/OfflineEntityCipher;",
        "M",
        "Lcom/squareup/wire/Message;",
        "E",
        "Lcom/stripe/offlinemode/storage/OfflineEntity;",
        "",
        "decrypt",
        "encrypted",
        "(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;",
        "encrypt",
        "toEncrypt",
        "(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;",
        "offlinemode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/offlinemode/cipher/OfflineCipherException;
        }
    .end annotation
.end method

.method public abstract encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/offlinemode/cipher/OfflineCipherException;
        }
    .end annotation
.end method
