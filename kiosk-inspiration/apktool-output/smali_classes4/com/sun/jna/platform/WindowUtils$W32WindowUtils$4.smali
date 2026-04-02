.class Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$4;
.super Ljava/lang/Object;
.source "WindowUtils.java"

# interfaces
.implements Lcom/sun/jna/platform/RasterRangesUtils$RangesOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;->setMask(Ljava/awt/Component;Ljava/awt/image/Raster;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

.field final synthetic val$region:Lcom/sun/jna/platform/win32/WinDef$HRGN;

.field final synthetic val$tempRgn:Lcom/sun/jna/platform/win32/WinDef$HRGN;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;Lcom/sun/jna/platform/win32/WinDef$HRGN;Lcom/sun/jna/platform/win32/WinDef$HRGN;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$4;->this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    iput-object p2, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$4;->val$tempRgn:Lcom/sun/jna/platform/win32/WinDef$HRGN;

    iput-object p3, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$4;->val$region:Lcom/sun/jna/platform/win32/WinDef$HRGN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public outputRange(IIII)Z
    .locals 6

    .line 1088
    sget-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    .line 1089
    iget-object v1, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$4;->val$tempRgn:Lcom/sun/jna/platform/win32/WinDef$HRGN;

    add-int v4, p1, p3

    add-int v5, p2, p4

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/GDI32;->SetRectRgn(Lcom/sun/jna/platform/win32/WinDef$HRGN;IIII)Z

    .line 1090
    iget-object p1, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$4;->val$region:Lcom/sun/jna/platform/win32/WinDef$HRGN;

    iget-object p2, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$4;->val$tempRgn:Lcom/sun/jna/platform/win32/WinDef$HRGN;

    const/4 p3, 0x2

    invoke-interface {v0, p1, p1, p2, p3}, Lcom/sun/jna/platform/win32/GDI32;->CombineRgn(Lcom/sun/jna/platform/win32/WinDef$HRGN;Lcom/sun/jna/platform/win32/WinDef$HRGN;Lcom/sun/jna/platform/win32/WinDef$HRGN;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
