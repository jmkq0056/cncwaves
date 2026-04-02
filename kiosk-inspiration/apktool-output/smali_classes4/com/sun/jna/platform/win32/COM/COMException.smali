.class public Lcom/sun/jna/platform/win32/COM/COMException;
.super Ljava/lang/RuntimeException;
.source "COMException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final hresult:Lcom/sun/jna/platform/win32/WinNT$HRESULT;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 42
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 52
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/COMException;->hresult:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMException;->hresult:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getHresult()Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMException;->hresult:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object v0
.end method

.method public matchesErrorCode(I)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMException;->hresult:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
