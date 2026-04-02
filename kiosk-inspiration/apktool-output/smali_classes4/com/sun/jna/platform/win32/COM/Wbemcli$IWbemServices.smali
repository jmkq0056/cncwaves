.class public Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "Wbemcli.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/Wbemcli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IWbemServices"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public ExecQuery(Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/platform/win32/COM/Wbemcli$IWbemContext;)Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;
    .locals 7

    .line 266
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v2

    .line 267
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v3

    .line 269
    :try_start_0
    new-instance v6, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    .line 271
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;->ExecQuery(Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WTypes$BSTR;ILcom/sun/jna/platform/win32/COM/Wbemcli$IWbemContext;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 273
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 275
    new-instance p1, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;-><init>(Lcom/sun/jna/Pointer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 278
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v3}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 277
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 278
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v3}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 279
    throw p1
.end method

.method public ExecQuery(Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WTypes$BSTR;ILcom/sun/jna/platform/win32/COM/Wbemcli$IWbemContext;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6

    .line 262
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0x14

    .line 261
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method
