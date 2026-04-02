.class public Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "Wbemcli.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/Wbemcli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IWbemLocator"
.end annotation


# static fields
.field public static final CLSID_WbemLocator:Lcom/sun/jna/platform/win32/Guid$CLSID;

.field public static final IID_IWbemLocator:Lcom/sun/jna/platform/win32/Guid$GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 189
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$CLSID;

    const-string v1, "4590f811-1d3a-11d0-891f-00aa004b2e24"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$CLSID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->CLSID_WbemLocator:Lcom/sun/jna/platform/win32/Guid$CLSID;

    .line 190
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    const-string v1, "dc12a687-737f-11cf-884d-00aa004b2e24"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->IID_IWbemLocator:Lcom/sun/jna/platform/win32/Guid$GUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public static create()Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;
    .locals 6

    .line 200
    new-instance v5, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 202
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    sget-object v1, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->CLSID_WbemLocator:Lcom/sun/jna/platform/win32/Guid$CLSID;

    const/4 v3, 0x1

    sget-object v4, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->IID_IWbemLocator:Lcom/sun/jna/platform/win32/Guid$GUID;

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Ole32;->CoCreateInstance(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->FAILED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0
.end method


# virtual methods
.method public ConnectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemContext;)Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;
    .locals 10

    .line 220
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v2

    .line 221
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v3

    .line 222
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p3}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v4

    .line 223
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p4}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v5

    .line 224
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    move-object/from16 p2, p6

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v7

    .line 226
    new-instance v9, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v9}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    move-object v1, p0

    move v6, p5

    move-object/from16 v8, p7

    .line 229
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->ConnectServer(Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WTypes$BSTR;ILcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemContext;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 232
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 234
    new-instance p1, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;

    invoke-virtual {v9}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;-><init>(Lcom/sun/jna/Pointer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 237
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v3}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 238
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v4}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 239
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v5}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 240
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v7}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 236
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 237
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v3}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 238
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v4}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 239
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v5}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 240
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p2, v7}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 241
    throw p1
.end method

.method public ConnectServer(Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WTypes$BSTR;ILcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemContext;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 9

    .line 214
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 215
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x3

    .line 214
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method
