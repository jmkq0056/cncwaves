.class Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;
.super Ljava/lang/Object;
.source "WindowUtils.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinUser$WNDENUMPROC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;->getAllWindows(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

.field final synthetic val$onlyVisibleWindows:Z

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;ZLjava/util/List;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;->this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    iput-boolean p2, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;->val$onlyVisibleWindows:Z

    iput-object p3, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/Pointer;)Z
    .locals 4

    .line 1244
    :try_start_0
    iget-boolean p2, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;->val$onlyVisibleWindows:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    .line 1245
    invoke-interface {p2, p1}, Lcom/sun/jna/platform/win32/User32;->IsWindowVisible(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1247
    :cond_0
    iget-object p2, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;->this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    invoke-virtual {p2, p1}, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;->getWindowTitle(Lcom/sun/jna/platform/win32/WinDef$HWND;)Ljava/lang/String;

    move-result-object p2

    .line 1248
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;->this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;->getProcessFilePath(Lcom/sun/jna/platform/win32/WinDef$HWND;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    iget-object v1, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;->this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    invoke-virtual {v1, p1}, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;->getWindowLocationAndSize(Lcom/sun/jna/platform/win32/WinDef$HWND;)Ljava/awt/Rectangle;

    move-result-object v1

    .line 1250
    iget-object v2, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$5;->val$result:Ljava/util/List;

    new-instance v3, Lcom/sun/jna/platform/DesktopWindow;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/sun/jna/platform/DesktopWindow;-><init>(Lcom/sun/jna/platform/win32/WinDef$HWND;Ljava/lang/String;Ljava/lang/String;Ljava/awt/Rectangle;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
