.class public interface abstract Lcom/sun/jna/platform/win32/COM/IEnumMoniker;
.super Ljava/lang/Object;
.source "IEnumMoniker.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IUnknown;


# static fields
.field public static final IID:Lcom/sun/jna/platform/win32/Guid$IID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    const-string v1, "{00000102-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/IEnumMoniker;->IID:Lcom/sun/jna/platform/win32/Guid$IID;

    return-void
.end method


# virtual methods
.method public abstract Clone(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Next(Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Reset()Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Skip(Lcom/sun/jna/platform/win32/WinDef$ULONG;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
