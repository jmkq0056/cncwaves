.class public interface abstract Lcom/sun/jna/platform/win32/Shlwapi;
.super Ljava/lang/Object;
.source "Shlwapi.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Shlwapi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-class v0, Lcom/sun/jna/platform/win32/Shlwapi;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Shlwapi"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Shlwapi;

    sput-object v0, Lcom/sun/jna/platform/win32/Shlwapi;->INSTANCE:Lcom/sun/jna/platform/win32/Shlwapi;

    return-void
.end method


# virtual methods
.method public abstract PathIsUNC(Ljava/lang/String;)Z
.end method

.method public abstract StrRetToStr(Lcom/sun/jna/platform/win32/ShTypes$STRRET;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
