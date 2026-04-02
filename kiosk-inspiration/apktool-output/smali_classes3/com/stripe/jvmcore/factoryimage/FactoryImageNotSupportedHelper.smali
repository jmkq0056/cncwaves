.class public final Lcom/stripe/jvmcore/factoryimage/FactoryImageNotSupportedHelper;
.super Ljava/lang/Object;
.source "FactoryImageHelper.kt"

# interfaces
.implements Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/jvmcore/factoryimage/FactoryImageNotSupportedHelper;",
        "Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;",
        "()V",
        "isFactoryImage",
        "",
        "()Z",
        "factoryimage"
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
.field private final isFactoryImage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFactoryImage()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/stripe/jvmcore/factoryimage/FactoryImageNotSupportedHelper;->isFactoryImage:Z

    return v0
.end method
