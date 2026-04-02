.class public interface abstract Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetTypeInfoCallback;
.super Ljava/lang/Object;
.source "DispatchVTable.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary$StdCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/DispatchVTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetTypeInfoCallback"
.end annotation


# virtual methods
.method public abstract invoke(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
