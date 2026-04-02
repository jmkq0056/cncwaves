.class Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/bbpos/bbdevice/ccc029zz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa005zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aaa002zz"
.end annotation


# instance fields
.field final synthetic aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;


# direct methods
.method public static synthetic $r8$lambda$XgbatmbL9-KD-rBVfziXys7BDKE(Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqOS_ocKNyixU43z0K80AnseW24(Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa003()V

    return-void
.end method

.method public static synthetic $r8$lambda$mfwBisH_bEHsaZdiIS0CznlJNuA(Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa002()V

    return-void
.end method

.method private constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa005zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa005zz;Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa000zz;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa005zz;)V

    return-void
.end method

.method private synthetic aaa000(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa005zz;)Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;->onReturnBarcode(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic aaa002()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa005zz;I)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa005zz;)Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;->onBarcodeReaderConnected()V

    return-void
.end method

.method private synthetic aaa003()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa005zz;)Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;->onBarcodeReaderDisconnected()V

    return-void
.end method


# virtual methods
.method public aaa000()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa005zz;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz$$ExternalSyntheticLambda2;-><init>(Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public aaa001()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa005zz;I)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa005zz;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReturnBarcode(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa005zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa005zz;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
