.class public Lcom/sun/jna/platform/unix/X11$Xrender$XRenderDirectFormat;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "red",
        "redMask",
        "green",
        "greenMask",
        "blue",
        "blueMask",
        "alpha",
        "alphaMask"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11$Xrender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XRenderDirectFormat"
.end annotation


# instance fields
.field public alpha:S

.field public alphaMask:S

.field public blue:S

.field public blueMask:S

.field public green:S

.field public greenMask:S

.field public red:S

.field public redMask:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
