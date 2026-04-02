.class public abstract Lcom/sun/jna/platform/win32/Ole32Util;
.super Ljava/lang/Object;
.source "Ole32Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateGUID()Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 3

    .line 77
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>()V

    .line 78
    sget-object v1, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/Ole32;->CoCreateGuid(Lcom/sun/jna/platform/win32/Guid$GUID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/sun/jna/platform/win32/W32Errors;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {v1, v2}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGUIDFromString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 2

    .line 44
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>()V

    .line 45
    sget-object v1, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/win32/Ole32;->IIDFromString(Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$GUID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p0

    .line 46
    sget-object v1, Lcom/sun/jna/platform/win32/W32Errors;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStringFromGUID(Lcom/sun/jna/platform/win32/Guid$GUID;)Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Guid$GUID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p0, 0x27

    .line 62
    new-array v1, p0, [C

    .line 63
    sget-object v2, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v2, v0, v1, p0}, Lcom/sun/jna/platform/win32/Ole32;->StringFromGUID2(Lcom/sun/jna/platform/win32/Guid$GUID;[CI)I

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    .line 67
    aput-char v0, v1, p0

    .line 68
    invoke-static {v1}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "StringFromGUID2"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
