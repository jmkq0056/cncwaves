.class public interface abstract Lcom/sun/jna/platform/unix/X11$Xext;
.super Ljava/lang/Object;
.source "X11.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Xext"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/unix/X11$Xext;

.field public static final ShapeBounding:I = 0x0

.field public static final ShapeClip:I = 0x1

.field public static final ShapeInput:I = 0x2

.field public static final ShapeIntersect:I = 0x2

.field public static final ShapeInvert:I = 0x4

.field public static final ShapeSet:I = 0x0

.field public static final ShapeSubtract:I = 0x3

.field public static final ShapeUnion:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 290
    const-string v0, "Xext"

    const-class v1, Lcom/sun/jna/platform/unix/X11$Xext;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/unix/X11$Xext;

    sput-object v0, Lcom/sun/jna/platform/unix/X11$Xext;->INSTANCE:Lcom/sun/jna/platform/unix/X11$Xext;

    return-void
.end method


# virtual methods
.method public abstract XShapeCombineMask(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;IIILcom/sun/jna/platform/unix/X11$Pixmap;I)V
.end method
