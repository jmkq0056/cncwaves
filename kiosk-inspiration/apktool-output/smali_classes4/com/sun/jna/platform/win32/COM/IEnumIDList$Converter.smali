.class public Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter;
.super Ljava/lang/Object;
.source "IEnumIDList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/IEnumIDList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Converter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PointerToIEnumIDList(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/COM/IEnumIDList;
    .locals 8

    .line 200
    invoke-virtual {p0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v2

    const/4 v0, 0x7

    .line 202
    new-array v5, v0, [Lcom/sun/jna/Pointer;

    const/4 v6, 0x0

    const/4 v7, 0x7

    const-wide/16 v3, 0x0

    .line 203
    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->read(J[Lcom/sun/jna/Pointer;II)V

    .line 204
    new-instance v0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;

    invoke-direct {v0, v5, p0}, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;-><init>([Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)V

    return-object v0
.end method
