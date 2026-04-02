.class public Lcom/sun/jna/platform/win32/COM/WbemcliUtil;
.super Ljava/lang/Object;
.source "WbemcliUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;,
        Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;,
        Lcom/sun/jna/platform/win32/COM/WbemcliUtil$NamespaceProperty;
    }
.end annotation


# static fields
.field public static final DEFAULT_NAMESPACE:Ljava/lang/String; = "ROOT\\CIMV2"

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/COM/WbemcliUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil;->INSTANCE:Lcom/sun/jna/platform/win32/COM/WbemcliUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectServer(Ljava/lang/String;)Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;
    .locals 17

    .line 523
    invoke-static {}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->create()Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 532
    invoke-virtual/range {v0 .. v7}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->ConnectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemContext;)Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;

    move-result-object v9

    .line 535
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemLocator;->Release()I

    .line 539
    sget-object v8, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x3

    invoke-interface/range {v8 .. v16}, Lcom/sun/jna/platform/win32/Ole32;->CoSetProxyBlanket(Lcom/sun/jna/platform/win32/COM/Unknown;IILcom/sun/jna/platform/win32/WTypes$LPOLESTR;IILcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 541
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->FAILED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v9

    .line 542
    :cond_0
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/COM/Wbemcli$IWbemServices;->Release()I

    .line 543
    new-instance v1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v2, "Could not set proxy blanket."

    invoke-direct {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    throw v1

    .line 525
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v1, "Failed to create WbemLocator object."

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasNamespace(Ljava/lang/String;)Z
    .locals 4

    .line 485
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ROOT\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 489
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;

    const-string v1, "__NAMESPACE"

    const-class v2, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$NamespaceProperty;

    const-string v3, "ROOT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 490
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiQuery;->execute()Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 491
    :goto_0
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->getResultCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 492
    sget-object v3, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$NamespaceProperty;->NAME:Lcom/sun/jna/platform/win32/COM/WbemcliUtil$NamespaceProperty;

    invoke-virtual {v0, v3, v2}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->getValue(Ljava/lang/Enum;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
