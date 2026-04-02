.class public abstract Lcom/sun/jna/platform/win32/WevtapiUtil;
.super Ljava/lang/Object;
.source "WevtapiUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EvtFormatMessage(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;II[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;I)Ljava/lang/String;
    .locals 10

    .line 141
    new-instance v9, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v9}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 142
    sget-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v9}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtFormatMessage(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;II[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;II[CLcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    .line 143
    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    if-nez p0, :cond_1

    const/16 p0, 0x7a

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {v9}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v7

    new-array v8, v7, [C

    .line 149
    sget-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    invoke-interface/range {v0 .. v9}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtFormatMessage(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;II[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;II[CLcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 154
    invoke-static {v8}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static EvtGetChannelConfigProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I)Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;
    .locals 7

    .line 167
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 168
    sget-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtGetChannelConfigProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IIILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    .line 169
    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    if-nez p0, :cond_1

    const/16 p0, 0x7a

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 174
    :cond_1
    :goto_0
    new-instance v5, Lcom/sun/jna/Memory;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    int-to-long p0, p0

    invoke-direct {v5, p0, p1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 175
    sget-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    invoke-virtual {v5}, Lcom/sun/jna/Memory;->size()J

    move-result-wide p0

    long-to-int v4, p0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtGetChannelConfigProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IIILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 180
    new-instance p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;

    invoke-direct {p0, v5}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;-><init>(Lcom/sun/jna/Pointer;)V

    .line 181
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->read()V

    return-object p0

    .line 178
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static EvtGetExtendedStatus()Ljava/lang/String;
    .locals 4

    .line 46
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 47
    sget-object v1, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtGetExtendedStatus(I[CLcom/sun/jna/ptr/IntByReference;)I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 52
    const-string v0, ""

    return-object v0

    .line 54
    :cond_2
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    new-array v2, v1, [C

    .line 55
    sget-object v3, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    invoke-interface {v3, v1, v2, v0}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtGetExtendedStatus(I[CLcom/sun/jna/ptr/IntByReference;)I

    move-result v0

    if-nez v0, :cond_3

    .line 59
    invoke-static {v2}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_3
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
.end method

.method public static EvtGetPublisherMetadataProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;II)Lcom/sun/jna/Memory;
    .locals 7

    .line 220
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 221
    sget-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtGetPublisherMetadataProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IIILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    .line 223
    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    if-nez p0, :cond_1

    const/16 p0, 0x7a

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 227
    :cond_1
    :goto_0
    new-instance v5, Lcom/sun/jna/Memory;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    int-to-long p0, p0

    invoke-direct {v5, p0, p1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 228
    sget-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    .line 229
    invoke-virtual {v5}, Lcom/sun/jna/Memory;->size()J

    move-result-wide p0

    long-to-int v4, p0

    .line 228
    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtGetPublisherMetadataProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IIILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v5

    .line 231
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static EvtNextPublisherId(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;)Ljava/lang/String;
    .locals 4

    .line 193
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 194
    sget-object v1, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtNextPublisherId(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I[CLcom/sun/jna/ptr/IntByReference;)Z

    move-result v1

    .line 195
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    if-nez v1, :cond_1

    const/16 v1, 0x7a

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 200
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    new-array v2, v1, [C

    .line 201
    sget-object v3, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    invoke-interface {v3, p0, v1, v2, v0}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtNextPublisherId(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I[CLcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 205
    invoke-static {v2}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 203
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static EvtRender(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;ILcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/Memory;
    .locals 8

    .line 86
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 87
    sget-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtRender(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    .line 88
    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    if-nez p0, :cond_1

    const/16 p0, 0x7a

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 92
    :cond_1
    :goto_0
    new-instance v5, Lcom/sun/jna/Memory;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    int-to-long p0, p0

    invoke-direct {v5, p0, p1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 93
    sget-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    invoke-virtual {v5}, Lcom/sun/jna/Memory;->size()J

    move-result-wide p0

    long-to-int v4, p0

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Wevtapi;->EvtRender(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v5

    .line 95
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method
