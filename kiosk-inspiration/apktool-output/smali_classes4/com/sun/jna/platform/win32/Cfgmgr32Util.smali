.class public abstract Lcom/sun/jna/platform/win32/Cfgmgr32Util;
.super Ljava/lang/Object;
.source "Cfgmgr32Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CM_Get_Device_ID(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;
        }
    .end annotation

    .line 61
    const-string v0, "w32.ascii"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    .line 64
    :goto_0
    new-instance v2, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v2}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 65
    sget-object v3, Lcom/sun/jna/platform/win32/Cfgmgr32;->INSTANCE:Lcom/sun/jna/platform/win32/Cfgmgr32;

    const/4 v4, 0x0

    invoke-interface {v3, v2, p0, v4}, Lcom/sun/jna/platform/win32/Cfgmgr32;->CM_Get_Device_ID_Size(Lcom/sun/jna/ptr/IntByReference;II)I

    move-result v3

    if-nez v3, :cond_5

    .line 71
    new-instance v3, Lcom/sun/jna/Memory;

    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v5

    add-int/2addr v5, v1

    mul-int/2addr v5, v0

    int-to-long v5, v5

    invoke-direct {v3, v5, v6}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 73
    invoke-virtual {v3}, Lcom/sun/jna/Memory;->clear()V

    .line 75
    sget-object v5, Lcom/sun/jna/platform/win32/Cfgmgr32;->INSTANCE:Lcom/sun/jna/platform/win32/Cfgmgr32;

    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v6

    invoke-interface {v5, p0, v3, v6, v4}, Lcom/sun/jna/platform/win32/Cfgmgr32;->CM_Get_Device_ID(ILcom/sun/jna/Pointer;II)I

    move-result v5

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_2

    .line 80
    sget-object v3, Lcom/sun/jna/platform/win32/Cfgmgr32;->INSTANCE:Lcom/sun/jna/platform/win32/Cfgmgr32;

    invoke-interface {v3, v2, p0, v4}, Lcom/sun/jna/platform/win32/Cfgmgr32;->CM_Get_Device_ID_Size(Lcom/sun/jna/ptr/IntByReference;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 84
    new-instance v3, Lcom/sun/jna/Memory;

    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v5

    add-int/2addr v5, v1

    mul-int/2addr v5, v0

    int-to-long v5, v5

    invoke-direct {v3, v5, v6}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 85
    invoke-virtual {v3}, Lcom/sun/jna/Memory;->clear()V

    .line 86
    sget-object v5, Lcom/sun/jna/platform/win32/Cfgmgr32;->INSTANCE:Lcom/sun/jna/platform/win32/Cfgmgr32;

    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-interface {v5, p0, v3, v2, v4}, Lcom/sun/jna/platform/win32/Cfgmgr32;->CM_Get_Device_ID(ILcom/sun/jna/Pointer;II)I

    move-result v5

    goto :goto_1

    .line 82
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;

    invoke-direct {p0, v3}, Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;-><init>(I)V

    throw p0

    :cond_2
    :goto_1
    if-nez v5, :cond_4

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 94
    invoke-virtual {v3, v4, v5}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_3
    invoke-virtual {v3, v4, v5}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_4
    new-instance p0, Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;

    invoke-direct {p0, v5}, Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;-><init>(I)V

    throw p0

    .line 67
    :cond_5
    new-instance p0, Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;

    invoke-direct {p0, v3}, Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;-><init>(I)V

    throw p0
.end method
