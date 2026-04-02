.class public interface abstract Lcom/sun/jna/platform/unix/X11$Xrender;
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
    name = "Xrender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/unix/X11$Xrender$XRenderPictFormat;,
        Lcom/sun/jna/platform/unix/X11$Xrender$PictFormat;,
        Lcom/sun/jna/platform/unix/X11$Xrender$XRenderDirectFormat;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/unix/X11$Xrender;

.field public static final PictTypeDirect:I = 0x1

.field public static final PictTypeIndexed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 308
    const-string v0, "Xrender"

    const-class v1, Lcom/sun/jna/platform/unix/X11$Xrender;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/unix/X11$Xrender;

    sput-object v0, Lcom/sun/jna/platform/unix/X11$Xrender;->INSTANCE:Lcom/sun/jna/platform/unix/X11$Xrender;

    return-void
.end method


# virtual methods
.method public abstract XRenderFindVisualFormat(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Visual;)Lcom/sun/jna/platform/unix/X11$Xrender$XRenderPictFormat;
.end method
