.class public final Lcom/stripe/stripeterminal/internal/common/repositories/DefaultSdkStatusRepository;
.super Ljava/lang/Object;
.source "DefaultSdkStatusRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/repositories/DefaultSdkStatusRepository;",
        "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;",
        "embeddedAdapter",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "(Lcom/stripe/stripeterminal/internal/common/Adapter;)V",
        "isEmbedded",
        "",
        "common_publish"
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
.field private final embeddedAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/repositories/DefaultSdkStatusRepository;->embeddedAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-void
.end method


# virtual methods
.method public isEmbedded()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/repositories/DefaultSdkStatusRepository;->embeddedAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
