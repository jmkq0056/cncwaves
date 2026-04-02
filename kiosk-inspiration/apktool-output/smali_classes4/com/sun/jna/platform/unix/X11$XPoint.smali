.class public Lcom/sun/jna/platform/unix/X11$XPoint;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "x",
        "y"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPoint"
.end annotation


# instance fields
.field public x:S

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 638
    invoke-direct {p0, v0, v0}, Lcom/sun/jna/platform/unix/X11$XPoint;-><init>(SS)V

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 640
    iput-short p1, p0, Lcom/sun/jna/platform/unix/X11$XPoint;->x:S

    .line 641
    iput-short p2, p0, Lcom/sun/jna/platform/unix/X11$XPoint;->y:S

    return-void
.end method
