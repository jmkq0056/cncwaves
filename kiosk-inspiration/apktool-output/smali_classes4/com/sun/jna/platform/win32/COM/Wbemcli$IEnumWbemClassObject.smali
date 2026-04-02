.class public Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "Wbemcli.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/Wbemcli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IEnumWbemClassObject"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public Next(II[Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x4

    .line 166
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public Next(II)[Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;
    .locals 4

    .line 171
    new-array v0, p2, [Lcom/sun/jna/Pointer;

    .line 172
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 173
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IEnumWbemClassObject;->Next(II[Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 174
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 175
    invoke-virtual {v1}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    new-array p1, p1, [Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;

    const/4 p2, 0x0

    .line 176
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 177
    new-instance v2, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;

    aget-object v3, v0, p2

    invoke-direct {v2, v3}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemClassObject;-><init>(Lcom/sun/jna/Pointer;)V

    aput-object v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
