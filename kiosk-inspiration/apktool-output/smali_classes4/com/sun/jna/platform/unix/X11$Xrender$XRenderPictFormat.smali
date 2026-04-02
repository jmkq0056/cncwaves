.class public Lcom/sun/jna/platform/unix/X11$Xrender$XRenderPictFormat;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "id",
        "type",
        "depth",
        "direct",
        "colormap"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11$Xrender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XRenderPictFormat"
.end annotation


# instance fields
.field public colormap:Lcom/sun/jna/platform/unix/X11$Colormap;

.field public depth:I

.field public direct:Lcom/sun/jna/platform/unix/X11$Xrender$XRenderDirectFormat;

.field public id:Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
