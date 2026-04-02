.class public Lcom/sun/jna/platform/unix/X11$XRectangle;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "x",
        "y",
        "width",
        "height"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XRectangle"
.end annotation


# instance fields
.field public height:S

.field public width:S

.field public x:S

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 650
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/sun/jna/platform/unix/X11$XRectangle;-><init>(SSSS)V

    return-void
.end method

.method public constructor <init>(SSSS)V
    .locals 0

    .line 651
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 652
    iput-short p1, p0, Lcom/sun/jna/platform/unix/X11$XRectangle;->x:S

    iput-short p2, p0, Lcom/sun/jna/platform/unix/X11$XRectangle;->y:S

    .line 653
    iput-short p3, p0, Lcom/sun/jna/platform/unix/X11$XRectangle;->width:S

    iput-short p4, p0, Lcom/sun/jna/platform/unix/X11$XRectangle;->height:S

    return-void
.end method
