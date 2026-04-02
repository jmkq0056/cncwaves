.class public Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;
.super Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;
.source "COMLateBindingObject.java"


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/IDispatch;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;-><init>(Lcom/sun/jna/platform/win32/COM/IDispatch;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Guid$CLSID;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;-><init>(Lcom/sun/jna/platform/win32/Guid$CLSID;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected getAutomationProperty(Ljava/lang/String;)Lcom/sun/jna/platform/win32/COM/IDispatch;
    .locals 2

    .line 85
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x2

    .line 86
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 88
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-object p1
.end method

.method protected getAutomationProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;)Lcom/sun/jna/platform/win32/COM/IDispatch;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    new-instance p2, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v0, 0x2

    .line 121
    invoke-virtual {p0, v0, p2, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 123
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-object p1
.end method

.method protected getAutomationProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/COM/IDispatch;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    new-instance p2, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v0, 0x2

    .line 142
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 144
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-object p1
.end method

.method protected getAutomationProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/IDispatch;)Lcom/sun/jna/platform/win32/COM/IDispatch;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    new-instance p2, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v0, 0x2

    .line 161
    invoke-virtual {p0, v0, p2, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 163
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-object p1
.end method

.method protected getAutomationProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/COM/IDispatch;
    .locals 2

    .line 101
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x2

    .line 102
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 104
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-object p1
.end method

.method protected getBooleanProperty(Ljava/lang/String;)Z
    .locals 2

    .line 174
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x2

    .line 175
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 177
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected getDateProperty(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 188
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x2

    .line 189
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 191
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->dateValue()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected getIntProperty(Ljava/lang/String;)I
    .locals 2

    .line 202
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x2

    .line 203
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 205
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->intValue()I

    move-result p1

    return p1
.end method

.method protected getShortProperty(Ljava/lang/String;)S
    .locals 2

    .line 216
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x2

    .line 217
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 219
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->shortValue()S

    move-result p1

    return p1
.end method

.method protected getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x2

    .line 231
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 233
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->stringValue()Ljava/lang/String;

    move-result-object p1

    .line 235
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/OleAuto;->VariantClear(Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method protected invoke(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 2

    .line 248
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x1

    .line 249
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object v0
.end method

.method protected invoke(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 2

    .line 264
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x1

    .line 265
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object v0
.end method

.method protected invoke(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 2

    const/4 v0, 0x2

    .line 298
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->invoke(Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object p1

    return-object p1
.end method

.method protected invoke(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 2

    const/4 v0, 0x3

    .line 316
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->invoke(Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object p1

    return-object p1
.end method

.method protected invoke(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 2

    const/4 v0, 0x4

    .line 336
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->invoke(Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object p1

    return-object p1
.end method

.method protected invoke(Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 2

    .line 280
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x1

    .line 281
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object v0
.end method

.method protected invokeNoReply(Ljava/lang/String;)V
    .locals 2

    .line 424
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x1

    .line 425
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 6

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v3

    const/4 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v3

    const/4 p2, 0x2

    new-array v5, p2, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 p2, 0x0

    aput-object p3, v5, p2

    const/4 p2, 0x1

    aput-object p4, v5, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/IDispatch;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    .line 374
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 383
    new-array v6, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    const/4 p3, 0x1

    aput-object p4, v6, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/IDispatch;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    .line 413
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 2

    const/4 v0, 0x2

    .line 452
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->invokeNoReply(Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)V

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 2

    const/4 v0, 0x3

    .line 469
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->invokeNoReply(Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)V

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 2

    const/4 v0, 0x4

    .line 488
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->invokeNoReply(Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)V

    return-void
.end method

.method protected invokeNoReply(Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 2

    .line 437
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x1

    .line 438
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;I)V
    .locals 2

    .line 544
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(I)V

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    .line 600
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v3

    const/4 v1, 0x4

    move-object v0, p0

    move-object v4, p1

    move-object v5, p3

    .line 599
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/Dispatch;)V
    .locals 2

    .line 524
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/platform/win32/COM/Dispatch;)V

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/IDispatch;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/platform/win32/COM/IDispatch;)V

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    .line 589
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 580
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 568
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    .line 512
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Ljava/util/Date;)V

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;S)V
    .locals 2

    .line 556
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(S)V

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Z)V
    .locals 2

    .line 500
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Z)V

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method

.method public toVariant()Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 2

    .line 609
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMLateBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/platform/win32/COM/IDispatch;)V

    return-object v0
.end method
