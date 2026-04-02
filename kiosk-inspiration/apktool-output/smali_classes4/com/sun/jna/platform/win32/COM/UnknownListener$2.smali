.class Lcom/sun/jna/platform/win32/COM/UnknownListener$2;
.super Ljava/lang/Object;
.source "UnknownListener.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/UnknownVTable$AddRefCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/UnknownListener;->initVTable(Lcom/sun/jna/platform/win32/COM/IUnknownCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/UnknownListener;

.field final synthetic val$callback:Lcom/sun/jna/platform/win32/COM/IUnknownCallback;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/UnknownListener;Lcom/sun/jna/platform/win32/COM/IUnknownCallback;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/UnknownListener$2;->this$0:Lcom/sun/jna/platform/win32/COM/UnknownListener;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/UnknownListener$2;->val$callback:Lcom/sun/jna/platform/win32/COM/IUnknownCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/sun/jna/Pointer;)I
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/UnknownListener$2;->val$callback:Lcom/sun/jna/platform/win32/COM/IUnknownCallback;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/COM/IUnknownCallback;->AddRef()I

    move-result p1

    return p1
.end method
