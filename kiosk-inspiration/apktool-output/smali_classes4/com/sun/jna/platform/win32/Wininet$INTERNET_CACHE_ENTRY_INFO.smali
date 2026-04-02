.class public Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;
.super Lcom/sun/jna/Structure;
.source "Wininet.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwStructSize",
        "lpszSourceUrlName",
        "lpszLocalFileName",
        "CacheEntryType",
        "dwUseCount",
        "dwHitRate",
        "dwSizeLow",
        "dwSizeHigh",
        "LastModifiedTime",
        "ExpireTime",
        "LastAccessTime",
        "LastSyncTime",
        "lpHeaderInfo",
        "dwHeaderInfoSize",
        "lpszFileExtension",
        "u",
        "additional"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Wininet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INTERNET_CACHE_ENTRY_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO$UNION;
    }
.end annotation


# instance fields
.field public CacheEntryType:I

.field public ExpireTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public LastAccessTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public LastModifiedTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public LastSyncTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public additional:[B

.field public dwHeaderInfoSize:I

.field public dwHitRate:I

.field public dwSizeHigh:I

.field public dwSizeLow:I

.field public dwStructSize:I

.field public dwUseCount:I

.field public lpHeaderInfo:Lcom/sun/jna/Pointer;

.field public lpszFileExtension:Lcom/sun/jna/Pointer;

.field public lpszLocalFileName:Lcom/sun/jna/Pointer;

.field public lpszSourceUrlName:Lcom/sun/jna/Pointer;

.field public u:Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO$UNION;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 341
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;->additional:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;->lpszLocalFileName:Lcom/sun/jna/Pointer;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;->lpszLocalFileName:Lcom/sun/jna/Pointer;

    invoke-virtual {v4, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;->lpszSourceUrlName:Lcom/sun/jna/Pointer;

    if-nez v1, :cond_1

    const-string v1, "null"

    goto :goto_1

    .line 370
    :cond_1
    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
