.class public interface abstract Lcom/sun/jna/platform/win32/Psapi;
.super Ljava/lang/Object;
.source "Psapi.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Psapi$PERFORMANCE_INFORMATION;,
        Lcom/sun/jna/platform/win32/Psapi$MODULEINFO;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Psapi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const-class v0, Lcom/sun/jna/platform/win32/Psapi;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "psapi"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Psapi;

    sput-object v0, Lcom/sun/jna/platform/win32/Psapi;->INSTANCE:Lcom/sun/jna/platform/win32/Psapi;

    return-void
.end method


# virtual methods
.method public abstract EnumProcessModules(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[Lcom/sun/jna/platform/win32/WinDef$HMODULE;ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetModuleFileNameEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;I)I
.end method

.method public abstract GetModuleFileNameExA(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;[BI)I
.end method

.method public abstract GetModuleFileNameExW(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;[CI)I
.end method

.method public abstract GetModuleInformation(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/platform/win32/Psapi$MODULEINFO;I)Z
.end method

.method public abstract GetPerformanceInfo(Lcom/sun/jna/platform/win32/Psapi$PERFORMANCE_INFORMATION;I)Z
.end method

.method public abstract GetProcessImageFileName(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[CI)I
.end method
