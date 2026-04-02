.class public Lcom/sun/jna/platform/unix/X11$XSizeHints;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "flags",
        "x",
        "y",
        "width",
        "height",
        "min_width",
        "min_height",
        "max_width",
        "max_height",
        "width_inc",
        "height_inc",
        "min_aspect",
        "max_aspect",
        "base_width",
        "base_height",
        "win_gravity"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XSizeHints"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/unix/X11$XSizeHints$Aspect;
    }
.end annotation


# instance fields
.field public base_height:I

.field public base_width:I

.field public flags:Lcom/sun/jna/NativeLong;

.field public height:I

.field public height_inc:I

.field public max_aspect:Lcom/sun/jna/platform/unix/X11$XSizeHints$Aspect;

.field public max_height:I

.field public max_width:I

.field public min_aspect:Lcom/sun/jna/platform/unix/X11$XSizeHints$Aspect;

.field public min_height:I

.field public min_width:I

.field public width:I

.field public width_inc:I

.field public win_gravity:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
