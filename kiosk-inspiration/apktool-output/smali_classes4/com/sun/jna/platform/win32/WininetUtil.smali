.class public Lcom/sun/jna/platform/win32/WininetUtil;
.super Ljava/lang/Object;
.source "WininetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCache()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    .line 60
    :try_start_0
    new-instance v3, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v3}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 65
    sget-object v4, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    invoke-interface {v4, v2, v2, v3}, Lcom/sun/jna/platform/win32/Wininet;->FindFirstUrlCacheEntry(Ljava/lang/String;Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v4
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 66
    :try_start_1
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v5
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x103

    if-ne v5, v6, :cond_0

    if-eqz v4, :cond_e

    .line 123
    sget-object v0, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    invoke-interface {v0, v4}, Lcom/sun/jna/platform/win32/Wininet;->FindCloseUrlCache(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    goto/16 :goto_b

    :cond_0
    const/16 v7, 0x7a

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    :try_start_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v5}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 75
    :cond_2
    :goto_0
    new-instance v5, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;

    invoke-virtual {v3}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v8

    invoke-direct {v5, v8}, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;-><init>(I)V

    .line 76
    sget-object v8, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    invoke-interface {v8, v2, v5, v3}, Lcom/sun/jna/platform/win32/Wininet;->FindFirstUrlCacheEntry(Ljava/lang/String;Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v3
    :try_end_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_b

    .line 82
    :try_start_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_1
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 90
    sget-object v5, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    invoke-interface {v5, v3, v2, v4}, Lcom/sun/jna/platform/win32/Wininet;->FindNextUrlCacheEntry(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 93
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v5

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_5

    if-ne v5, v7, :cond_4

    goto :goto_2

    .line 97
    :cond_4
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v5}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 101
    :cond_5
    :goto_2
    new-instance v5, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;

    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v8

    invoke-direct {v5, v8}, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;-><init>(I)V

    .line 102
    sget-object v8, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    invoke-interface {v8, v3, v5, v4}, Lcom/sun/jna/platform/win32/Wininet;->FindNextUrlCacheEntry(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 105
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 115
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;

    .line 116
    iget-object v5, v4, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;->lpszSourceUrlName:Lcom/sun/jna/Pointer;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v4, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;->lpszLocalFileName:Lcom/sun/jna/Pointer;

    if-nez v8, :cond_6

    const-string v4, ""

    goto :goto_5

    :cond_6
    iget-object v4, v4, Lcom/sun/jna/platform/win32/Wininet$INTERNET_CACHE_ENTRY_INFO;->lpszLocalFileName:Lcom/sun/jna/Pointer;

    invoke-virtual {v4, v6, v7}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_d

    .line 123
    sget-object v0, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    invoke-interface {v0, v3}, Lcom/sun/jna/platform/win32/Wininet;->FindCloseUrlCache(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    goto :goto_a

    :cond_8
    if-eqz v4, :cond_a

    if-ne v4, v7, :cond_9

    goto :goto_6

    .line 109
    :cond_9
    :try_start_4
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 112
    :cond_a
    :goto_6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    .line 79
    :cond_b
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_4
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_9

    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v2, :cond_c

    .line 123
    sget-object v1, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/win32/Wininet;->FindCloseUrlCache(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 131
    :cond_c
    throw v0

    :catch_2
    move-exception v0

    move-object v3, v2

    :goto_8
    move-object v2, v0

    :goto_9
    if-eqz v3, :cond_d

    .line 123
    sget-object v0, Lcom/sun/jna/platform/win32/Wininet;->INSTANCE:Lcom/sun/jna/platform/win32/Wininet;

    invoke-interface {v0, v3}, Lcom/sun/jna/platform/win32/Wininet;->FindCloseUrlCache(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 125
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 126
    invoke-virtual {v0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    move-object v2, v0

    :cond_d
    :goto_a
    if-nez v2, :cond_f

    :cond_e
    :goto_b
    return-object v1

    .line 133
    :cond_f
    throw v2
.end method
