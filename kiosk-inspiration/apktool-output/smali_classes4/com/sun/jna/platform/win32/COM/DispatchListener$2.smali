.class Lcom/sun/jna/platform/win32/COM/DispatchListener$2;
.super Ljava/lang/Object;
.source "DispatchListener.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/DispatchVTable$AddRefCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/DispatchListener;->initVTable(Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/DispatchListener;

.field final synthetic val$callback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener$2;->this$0:Lcom/sun/jna/platform/win32/COM/DispatchListener;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener$2;->val$callback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/sun/jna/Pointer;)I
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener$2;->val$callback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/COM/IDispatchCallback;->AddRef()I

    move-result p1

    return p1
.end method
