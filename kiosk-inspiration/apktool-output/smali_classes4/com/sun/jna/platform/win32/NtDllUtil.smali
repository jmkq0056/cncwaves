.class public abstract Lcom/sun/jna/platform/win32/NtDllUtil;
.super Ljava/lang/Object;
.source "NtDllUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyName(Lcom/sun/jna/platform/win32/WinReg$HKEY;)Ljava/lang/String;
    .locals 6

    .line 43
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 44
    sget-object v0, Lcom/sun/jna/platform/win32/NtDll;->INSTANCE:Lcom/sun/jna/platform/win32/NtDll;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/NtDll;->ZwQueryKey(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Structure;ILcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    const v0, -0x3fffffdd    # -2.0000083f

    if-ne p0, v0, :cond_1

    .line 46
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 49
    new-instance v3, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;

    .line 50
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    invoke-direct {v3, p0}, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;-><init>(I)V

    .line 51
    sget-object v0, Lcom/sun/jna/platform/win32/NtDll;->INSTANCE:Lcom/sun/jna/platform/win32/NtDll;

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v4

    .line 51
    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/NtDll;->ZwQueryKey(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Structure;ILcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_0

    .line 56
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 47
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method
