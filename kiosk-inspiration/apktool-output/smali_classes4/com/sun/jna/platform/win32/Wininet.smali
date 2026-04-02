.class public interface abstract Lcom/sun/jna/platform/win32/Wininet;
.super Ljava/lang/Object;
.source "Wininet.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;
    }
.end annotation


# static fields
.field public static final COOKIE_CACHE_ENTRY:I = 0x100000

.field public static final EDITED_CACHE_ENTRY:I = 0x8

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

.field public static final NORMAL_CACHE_ENTRY:I = 0x1

.field public static final SPARSE_CACHE_ENTRY:I = 0x10000

.field public static final STICKY_CACHE_ENTRY:I = 0x4

.field public static final TRACK_OFFLINE_CACHE_ENTRY:I = 0x10

.field public static final TRACK_ONLINE_CACHE_ENTRY:I = 0x20

.field public static final URLHISTORY_CACHE_ENTRY:I = 0x200000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const-class v0, Lcom/sun/jna/platform/win32/Wininet;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "wininet"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Wininet;

    sput-object v0, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    return-void
.end method


# virtual methods
.method public abstract DeleteUrlCacheEntry(Ljava/lang/String;)Z
.end method

.method public abstract FindCloseUrlCache(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract FindFirstUrlCacheEntry(Ljava/lang/String;Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract FindNextUrlCacheEntry(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;Lcom/sun/jna/ptr/IntByReference;)Z
.end method
