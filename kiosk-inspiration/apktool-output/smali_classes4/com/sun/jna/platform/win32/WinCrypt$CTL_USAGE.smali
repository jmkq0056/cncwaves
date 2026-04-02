.class public Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cUsageIdentifier",
        "rgpszUsageIdentifier"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTL_USAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE$ByReference;
    }
.end annotation


# instance fields
.field public cUsageIdentifier:I

.field public rgpszUsageIdentifier:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public getRgpszUsageIdentier()[Ljava/lang/String;
    .locals 4

    .line 338
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;->cUsageIdentifier:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 339
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;->rgpszUsageIdentifier:Lcom/sun/jna/Pointer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/jna/Pointer;->getStringArray(JI)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRgpszUsageIdentier([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 346
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;->cUsageIdentifier:I

    .line 351
    new-instance v0, Lcom/sun/jna/StringArray;

    invoke-direct {v0, p1}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;->rgpszUsageIdentifier:Lcom/sun/jna/Pointer;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 347
    iput p1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;->cUsageIdentifier:I

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;->rgpszUsageIdentifier:Lcom/sun/jna/Pointer;

    return-void
.end method
