.class public Lcom/sun/jna/platform/win32/Win32Exception;
.super Lcom/sun/jna/LastErrorException;
.source "Win32Exception.java"


# static fields
.field private static addSuppressedMethod:Ljava/lang/reflect/Method; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _hr:Lcom/sun/jna/platform/win32/WinNT$HRESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 80
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 84
    const-class v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Failed to initialize \'addSuppressed\' method"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 56
    invoke-static {p1}, Lcom/sun/jna/platform/win32/W32Errors;->HRESULT_FROM_WIN32(I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(ILcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method protected constructor <init>(ILcom/sun/jna/platform/win32/WinNT$HRESULT;)V
    .locals 1

    .line 69
    invoke-static {p2}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(ILcom/sun/jna/platform/win32/WinNT$HRESULT;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILcom/sun/jna/platform/win32/WinNT$HRESULT;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p3}, Lcom/sun/jna/LastErrorException;-><init>(ILjava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/sun/jna/platform/win32/Win32Exception;->_hr:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/W32Errors;->HRESULT_CODE(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(ILcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method


# virtual methods
.method addSuppressedReflected(Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    const-string v0, "Failed to call addSuppressedMethod"

    sget-object v1, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHR()Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Win32Exception;->_hr:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object v0
.end method
