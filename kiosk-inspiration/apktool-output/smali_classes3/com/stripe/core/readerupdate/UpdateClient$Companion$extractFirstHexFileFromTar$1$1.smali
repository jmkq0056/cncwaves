.class final Lcom/stripe/core/readerupdate/UpdateClient$Companion$extractFirstHexFileFromTar$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdateClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/UpdateClient$Companion;->extractFirstHexFileFromTar(Ljava/io/InputStream;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/kamranzafar/jtar/TarEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/kamranzafar/jtar/TarEntry;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $tarInputStream:Lorg/kamranzafar/jtar/TarInputStream;


# direct methods
.method constructor <init>(Lorg/kamranzafar/jtar/TarInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateClient$Companion$extractFirstHexFileFromTar$1$1;->$tarInputStream:Lorg/kamranzafar/jtar/TarInputStream;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/UpdateClient$Companion$extractFirstHexFileFromTar$1$1;->invoke()Lorg/kamranzafar/jtar/TarEntry;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/kamranzafar/jtar/TarEntry;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateClient$Companion$extractFirstHexFileFromTar$1$1;->$tarInputStream:Lorg/kamranzafar/jtar/TarInputStream;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarInputStream;->getNextEntry()Lorg/kamranzafar/jtar/TarEntry;

    move-result-object v0

    return-object v0
.end method
