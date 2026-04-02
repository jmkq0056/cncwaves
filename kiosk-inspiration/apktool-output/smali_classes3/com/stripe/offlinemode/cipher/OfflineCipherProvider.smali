.class public final Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;
.super Ljava/lang/Object;
.source "OfflineCipherProvider.kt"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/cipher/OfflineCipherProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Ljavax/crypto/Cipher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00052\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;",
        "Ljavax/inject/Provider;",
        "Ljavax/crypto/Cipher;",
        "()V",
        "get",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/offlinemode/cipher/OfflineCipherProvider$Companion;

.field public static final TRANSFORMATION:Ljava/lang/String; = "AES/GCM/NoPadding"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/cipher/OfflineCipherProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/cipher/OfflineCipherProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;->Companion:Lcom/stripe/offlinemode/cipher/OfflineCipherProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;->get()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljavax/crypto/Cipher;
    .locals 2

    .line 12
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
