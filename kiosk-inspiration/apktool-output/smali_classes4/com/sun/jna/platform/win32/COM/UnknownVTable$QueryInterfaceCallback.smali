.class public interface abstract Lcom/sun/jna/platform/win32/COM/UnknownVTable$QueryInterfaceCallback;
.super Ljava/lang/Object;
.source "UnknownVTable.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary$StdCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/UnknownVTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryInterfaceCallback"
.end annotation


# virtual methods
.method public abstract invoke(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
