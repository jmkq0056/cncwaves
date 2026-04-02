.class public Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "Wbemcli.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/Wbemcli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IWbemClassObject"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public Get(Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6

    .line 121
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x4

    .line 120
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public Get(Ljava/lang/String;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v2, p1

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lcom/sun/jna/WString;

    invoke-direct {v0, p1}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    :goto_0
    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->Get(Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public GetNames(Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x7

    .line 135
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetNames(Ljava/lang/String;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Lcom/sun/jna/WString;

    invoke-direct {v0, p1}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->GetNames(Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public GetNames(Ljava/lang/String;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;)[Ljava/lang/String;
    .locals 1

    .line 140
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 141
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;->GetNames(Ljava/lang/String;ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 142
    new-instance p1, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sun/jna/platform/win32/OaIdlUtil;->toPrimitiveArray(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 143
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 144
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    .line 145
    aget-object v0, p1, p3

    check-cast v0, Ljava/lang/String;

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method
