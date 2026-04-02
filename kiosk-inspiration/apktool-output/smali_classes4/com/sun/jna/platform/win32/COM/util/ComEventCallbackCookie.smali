.class public Lcom/sun/jna/platform/win32/COM/util/ComEventCallbackCookie;
.super Ljava/lang/Object;
.source "ComEventCallbackCookie.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;


# instance fields
.field value:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ComEventCallbackCookie;->value:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComEventCallbackCookie;->value:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-object v0
.end method
