.class public abstract Lcom/sun/jna/platform/win32/Secur32Util;
.super Ljava/lang/Object;
.source "Secur32Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Secur32Util$SecurityPackage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecurityPackages()[Lcom/sun/jna/platform/win32/Secur32Util$SecurityPackage;
    .locals 9

    .line 93
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 94
    new-instance v1, Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;-><init>()V

    .line 95
    sget-object v2, Lcom/sun/jna/platform/win32/Secur32;->INSTANCE:Lcom/sun/jna/platform/win32/Secur32;

    invoke-interface {v2, v0, v1}, Lcom/sun/jna/platform/win32/Secur32;->EnumerateSecurityPackages(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;)I

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;->toArray(I)[Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo$ByReference;

    move-result-object v2

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    array-length v0, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    aget-object v6, v2, v5

    .line 102
    new-instance v7, Lcom/sun/jna/platform/win32/Secur32Util$SecurityPackage;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/Secur32Util$SecurityPackage;-><init>()V

    .line 103
    iget-object v8, v6, Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo;->Name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/jna/platform/win32/Secur32Util$SecurityPackage;->name:Ljava/lang/String;

    .line 104
    iget-object v6, v6, Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo;->Comment:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/sun/jna/platform/win32/Secur32Util$SecurityPackage;->comment:Ljava/lang/String;

    .line 105
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Secur32;->INSTANCE:Lcom/sun/jna/platform/win32/Secur32;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;->pPkgInfo:Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo$ByReference;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo$ByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Secur32;->FreeContextBuffer(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    new-array v0, v4, [Lcom/sun/jna/platform/win32/Secur32Util$SecurityPackage;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/Secur32Util$SecurityPackage;

    return-object v0

    .line 109
    :cond_1
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1

    .line 97
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static getUserNameEx(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x80

    .line 61
    new-array v1, v0, [C

    .line 62
    new-instance v2, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v2, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 63
    sget-object v0, Lcom/sun/jna/platform/win32/Secur32;->INSTANCE:Lcom/sun/jna/platform/win32/Secur32;

    invoke-interface {v0, p0, v1, v2}, Lcom/sun/jna/platform/win32/Secur32;->GetUserNameEx(I[CLcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    const/16 v1, 0xea

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    .line 77
    sget-object v0, Lcom/sun/jna/platform/win32/Secur32;->INSTANCE:Lcom/sun/jna/platform/win32/Secur32;

    invoke-interface {v0, p0, v1, v2}, Lcom/sun/jna/platform/win32/Secur32;->GetUserNameEx(I[CLcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 84
    invoke-static {v1}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method
