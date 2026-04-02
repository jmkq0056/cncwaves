.class public interface abstract Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetIDsOfNamesCallback;
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
    name = "GetIDsOfNamesCallback"
.end annotation


# virtual methods
.method public abstract invoke(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
