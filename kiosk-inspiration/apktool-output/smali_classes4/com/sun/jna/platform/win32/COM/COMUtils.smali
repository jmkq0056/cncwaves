.class public abstract Lcom/sun/jna/platform/win32/COM/COMUtils;
.super Ljava/lang/Object;
.source "COMUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;
    }
.end annotation


# static fields
.field public static final E_UNEXPECTED:I = -0x7fff0001

.field public static final S_FALSE:I = 0x1

.field public static final S_OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FAILED(I)Z
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static FAILED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->FAILED(I)Z

    move-result p0

    return p0
.end method

.method public static SUCCEEDED(I)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static SUCCEEDED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->SUCCEEDED(I)Z

    move-result p0

    return p0
.end method

.method public static checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V
    .locals 4

    .line 109
    const-string v0, ")"

    const-string v1, "(HRESULT: "

    invoke-static {p0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->FAILED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/jna/LastErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    new-instance v1, Lcom/sun/jna/platform/win32/COM/COMException;

    invoke-direct {v1, v0, p0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    throw v1
.end method

.method public static checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;Lcom/sun/jna/ptr/IntByReference;)V
    .locals 12

    .line 141
    invoke-static {p0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->FAILED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object v5, p2

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 157
    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/sun/jna/LastErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    const-string p2, "(HRESULT: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    .line 167
    iget-object p2, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->wCode:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 168
    iget-object v2, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->scode:Lcom/sun/jna/platform/win32/WinDef$SCODE;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$SCODE;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 169
    iget-object v3, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->dwHelpContext:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 171
    iget-object v4, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrSource:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrSource:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 173
    const-string v6, "\nSource:      "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 176
    :goto_1
    iget-object v6, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrDescription:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    if-eqz v6, :cond_2

    .line 177
    iget-object v6, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrDescription:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 178
    const-string v7, "\nDescription: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 181
    :goto_2
    iget-object v7, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrHelpFile:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    if-eqz v7, :cond_3

    .line 182
    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrHelpFile:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v11, p2

    move-object v8, v1

    move-object v9, v2

    move-object v7, v3

    move-object v10, v4

    goto :goto_3

    :cond_4
    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 186
    :goto_3
    new-instance v2, Lcom/sun/jna/platform/win32/COM/COMInvokeException;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    invoke-direct/range {v2 .. v11}, Lcom/sun/jna/platform/win32/COM/COMInvokeException;-><init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v2

    :cond_5
    if-eqz p1, :cond_8

    .line 200
    iget-object p0, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrSource:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    if-eqz p0, :cond_6

    .line 201
    sget-object p0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    iget-object p2, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrSource:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-interface {p0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 203
    :cond_6
    iget-object p0, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrDescription:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    if-eqz p0, :cond_7

    .line 204
    sget-object p0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    iget-object p2, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrDescription:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-interface {p0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 206
    :cond_7
    iget-object p0, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrHelpFile:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    if-eqz p0, :cond_8

    .line 207
    sget-object p0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;->bstrHelpFile:Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    :cond_8
    return-void
.end method

.method public static comIsInitialized()Z
    .locals 5

    .line 294
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sun/jna/platform/win32/Ole32;->CoInitializeEx(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 295
    sget-object v1, Lcom/sun/jna/platform/win32/W32Errors;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Ole32;->CoUninitialize()V

    return v2

    .line 299
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/win32/W32Errors;->S_FALSE:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 303
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Ole32;->CoUninitialize()V

    return v3

    .line 305
    :cond_1
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v1

    const v4, -0x7ffefefa

    if-ne v1, v4, :cond_2

    return v3

    .line 311
    :cond_2
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return v2
.end method

.method public static getAllCOMInfoOnSystem()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 223
    new-instance v1, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    :try_start_0
    sget-object v3, Lcom/sun/jna/platform/win32/WinReg;->HKEY_CLASSES_ROOT:Lcom/sun/jna/platform/win32/WinReg$HKEY;

    const-string v4, "CLSID"

    const v5, 0x20019

    invoke-static {v3, v4, v5}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v3

    .line 232
    invoke-static {v3, v5}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryQueryInfoKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;

    move-result-object v3

    const/4 v4, 0x0

    move v6, v4

    .line 235
    :goto_0
    iget-object v7, v3, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcSubKeys:Lcom/sun/jna/ptr/IntByReference;

    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 237
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v7

    .line 236
    invoke-static {v7, v6}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryRegEnumKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;

    move-result-object v7

    .line 238
    iget-object v7, v7, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpName:[C

    invoke-static {v7}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v7

    .line 240
    new-instance v8, Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;

    invoke-direct {v8, v7}, Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v9

    invoke-static {v9, v7, v5}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v7

    .line 244
    invoke-static {v7, v5}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryQueryInfoKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;

    move-result-object v7

    move v9, v4

    .line 247
    :goto_1
    iget-object v10, v7, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcSubKeys:Lcom/sun/jna/ptr/IntByReference;

    invoke-virtual {v10}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 249
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v10

    .line 248
    invoke-static {v10, v9}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryRegEnumKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;

    move-result-object v10

    .line 250
    iget-object v10, v10, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpName:[C

    invoke-static {v10}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v10

    .line 252
    const-string v11, "InprocHandler32"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    .line 254
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v11

    invoke-static {v11, v10, v12}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;->inprocHandler32:Ljava/lang/String;

    goto :goto_2

    .line 256
    :cond_0
    const-string v11, "InprocServer32"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 258
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v11

    invoke-static {v11, v10, v12}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;->inprocServer32:Ljava/lang/String;

    goto :goto_2

    .line 260
    :cond_1
    const-string v11, "LocalServer32"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 262
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v11

    invoke-static {v11, v10, v12}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;->localServer32:Ljava/lang/String;

    goto :goto_2

    .line 264
    :cond_2
    const-string v11, "ProgID"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 266
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v11

    invoke-static {v11, v10, v12}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;->progID:Ljava/lang/String;

    goto :goto_2

    .line 268
    :cond_3
    const-string v11, "TypeLib"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 270
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v11

    invoke-static {v11, v10, v12}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/sun/jna/platform/win32/COM/COMUtils$COMInfo;->typeLib:Ljava/lang/String;

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 275
    :cond_5
    sget-object v7, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    .line 276
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 279
    :cond_6
    sget-object v3, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    .line 280
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    return-object v2

    :catchall_0
    move-exception v2

    .line 279
    sget-object v3, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    .line 280
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    .line 281
    throw v2
.end method
