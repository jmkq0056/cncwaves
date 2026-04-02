.class public Lcom/sun/jna/platform/win32/GDI32Util;
.super Ljava/lang/Object;
.source "GDI32Util.java"


# static fields
.field private static final SCREENSHOT_BAND_MASKS:[I

.field private static final SCREENSHOT_COLOR_MODEL:Ljava/awt/image/DirectColorModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Ljava/awt/image/DirectColorModel;

    const v1, 0xff00

    const/16 v2, 0xff

    const/16 v3, 0x18

    const/high16 v4, 0xff0000

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    sput-object v0, Lcom/sun/jna/platform/win32/GDI32Util;->SCREENSHOT_COLOR_MODEL:Ljava/awt/image/DirectColorModel;

    .line 57
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v1

    .line 58
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v2

    .line 59
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v0

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/GDI32Util;->SCREENSHOT_BAND_MASKS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenshot(Lcom/sun/jna/platform/win32/WinDef$HWND;)Ljava/awt/image/BufferedImage;
    .locals 17

    move-object/from16 v1, p0

    .line 76
    const-string v2, "Device context did not release properly."

    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$RECT;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$RECT;-><init>()V

    .line 77
    sget-object v3, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v3, v1, v0}, Lcom/sun/jna/platform/win32/User32;->GetWindowRect(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$RECT;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 80
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$RECT;->toRectangle()Ljava/awt/Rectangle;

    move-result-object v0

    .line 81
    iget v4, v0, Ljava/awt/Rectangle;->width:I

    .line 82
    iget v5, v0, Ljava/awt/Rectangle;->height:I

    if-eqz v4, :cond_1b

    if-eqz v5, :cond_1b

    .line 88
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/User32;->GetDC(Lcom/sun/jna/platform/win32/WinDef$HWND;)Lcom/sun/jna/platform/win32/WinDef$HDC;

    move-result-object v6

    if-eqz v6, :cond_1a

    const/4 v13, 0x0

    .line 108
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v0, v6}, Lcom/sun/jna/platform/win32/GDI32;->CreateCompatibleDC(Lcom/sun/jna/platform/win32/WinDef$HDC;)Lcom/sun/jna/platform/win32/WinDef$HDC;

    move-result-object v3
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-eqz v3, :cond_b

    .line 113
    :try_start_1
    sget-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v0, v6, v4, v5}, Lcom/sun/jna/platform/win32/GDI32;->CreateCompatibleBitmap(Lcom/sun/jna/platform/win32/WinDef$HDC;II)Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

    move-result-object v14
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-eqz v14, :cond_a

    .line 118
    :try_start_2
    sget-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v0, v3, v14}, Lcom/sun/jna/platform/win32/GDI32;->SelectObject(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v15
    :try_end_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v15, :cond_9

    move v7, v4

    move-object v4, v3

    .line 124
    :try_start_3
    sget-object v3, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;
    :try_end_3
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v11, 0x0

    const v12, 0xcc0020

    move v8, v5

    const/4 v5, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_4
    invoke-interface/range {v3 .. v12}, Lcom/sun/jna/platform/win32/GDI32;->BitBlt(Lcom/sun/jna/platform/win32/WinDef$HDC;IIIILcom/sun/jna/platform/win32/WinDef$HDC;III)Z

    move-result v0

    move v3, v7

    if-eqz v0, :cond_8

    .line 128
    new-instance v11, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;

    invoke-direct {v11}, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;-><init>()V

    .line 129
    iget-object v0, v11, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    iput v3, v0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biWidth:I

    .line 130
    iget-object v0, v11, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    neg-int v5, v8

    iput v5, v0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biHeight:I

    .line 131
    iget-object v0, v11, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    const/4 v5, 0x1

    iput-short v5, v0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biPlanes:S

    .line 132
    iget-object v0, v11, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    const/16 v5, 0x20

    iput-short v5, v0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biBitCount:S

    .line 133
    iget-object v0, v11, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    const/4 v5, 0x0

    iput v5, v0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biCompression:I

    .line 135
    new-instance v10, Lcom/sun/jna/Memory;

    mul-int v0, v3, v8

    mul-int/lit8 v6, v0, 0x4

    int-to-long v6, v6

    invoke-direct {v10, v6, v7}, Lcom/sun/jna/Memory;-><init>(J)V

    move v6, v5

    .line 136
    sget-object v5, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;
    :try_end_4
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v7, v6

    move-object v6, v9

    move v9, v8

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v16, v14

    move v14, v7

    move-object/from16 v7, v16

    :try_start_5
    invoke-interface/range {v5 .. v12}, Lcom/sun/jna/platform/win32/GDI32;->GetDIBits(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$HBITMAP;IILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;I)I

    move-result v5
    :try_end_5
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v8, v10

    move-object v10, v6

    move-object v6, v8

    move v8, v9

    move-object v9, v7

    if-eqz v5, :cond_7

    const/16 v7, 0x57

    if-eq v5, v7, :cond_7

    move v7, v3

    .line 143
    :try_start_6
    new-instance v3, Ljava/awt/image/DataBufferInt;

    const-wide/16 v11, 0x0

    invoke-virtual {v6, v11, v12, v0}, Lcom/sun/jna/Memory;->getIntArray(JI)[I

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/awt/image/DataBufferInt;-><init>([II)V
    :try_end_6
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v4

    move v4, v7

    .line 144
    :try_start_7
    sget-object v7, Lcom/sun/jna/platform/win32/GDI32Util;->SCREENSHOT_BAND_MASKS:[I
    :try_end_7
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v6, v5

    move v5, v8

    const/4 v8, 0x0

    move-object v11, v6

    move v6, v4

    :try_start_8
    invoke-static/range {v3 .. v8}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    .line 146
    new-instance v3, Ljava/awt/image/BufferedImage;

    sget-object v4, Lcom/sun/jna/platform/win32/GDI32Util;->SCREENSHOT_COLOR_MODEL:Ljava/awt/image/DirectColorModel;

    invoke-direct {v3, v4, v0, v14, v13}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    :try_end_8
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v15, :cond_1

    .line 153
    sget-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v0, v11, v15}, Lcom/sun/jna/platform/win32/GDI32;->SelectObject(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v4, Lcom/sun/jna/platform/win32/WinGDI;->HGDI_ERROR:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v4, v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    new-instance v13, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    invoke-direct {v13, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    :cond_1
    if-eqz v9, :cond_3

    .line 165
    sget-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v0, v9}, Lcom/sun/jna/platform/win32/GDI32;->DeleteObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    if-eqz v13, :cond_2

    .line 168
    invoke-virtual {v0, v13}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :cond_2
    move-object v13, v0

    :cond_3
    if-eqz v11, :cond_5

    .line 176
    sget-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v0, v11}, Lcom/sun/jna/platform/win32/GDI32;->DeleteDC(Lcom/sun/jna/platform/win32/WinDef$HDC;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 177
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    if-eqz v13, :cond_4

    .line 179
    invoke-virtual {v0, v13}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :cond_4
    move-object v13, v0

    :cond_5
    if-eqz v10, :cond_18

    .line 186
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v0, v1, v10}, Lcom/sun/jna/platform/win32/User32;->ReleaseDC(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;)I

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_f

    .line 187
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v11, v5

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v11, v5

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v11, v4

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v11, v4

    goto/16 :goto_5

    :cond_7
    move-object v11, v4

    .line 139
    :try_start_9
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v11, v4

    move-object v10, v6

    move-object v9, v7

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v11, v4

    move-object v10, v6

    move-object v9, v7

    goto :goto_5

    :cond_8
    move-object v11, v4

    move-object v10, v9

    move-object v9, v14

    .line 125
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    :catchall_3
    move-exception v0

    move-object v11, v4

    move-object v10, v9

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v11, v4

    move-object v10, v9

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v11, v4

    move-object v10, v6

    :goto_0
    move-object v9, v14

    :goto_1
    move-object v3, v11

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object v11, v4

    move-object v10, v6

    :goto_2
    move-object v9, v14

    :goto_3
    move-object v3, v11

    goto/16 :goto_d

    :cond_9
    move-object v11, v3

    move-object v10, v6

    move-object v9, v14

    .line 120
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_9
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    :goto_4
    move-object v14, v9

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_5
    move-object v14, v9

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v11, v3

    move-object v10, v6

    move-object v9, v14

    :goto_6
    move-object v15, v13

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v11, v3

    move-object v10, v6

    move-object v9, v14

    :goto_7
    move-object v15, v13

    goto/16 :goto_d

    :cond_a
    move-object v11, v3

    move-object v10, v6

    move-object v9, v14

    .line 115
    :try_start_a
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_a
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v0

    move-object v14, v9

    move-object v3, v11

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v14, v9

    move-object v3, v11

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object v11, v3

    move-object v10, v6

    :goto_8
    move-object v14, v13

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v11, v3

    move-object v10, v6

    :goto_9
    move-object v14, v13

    goto/16 :goto_c

    :cond_b
    move-object v11, v3

    move-object v10, v6

    .line 110
    :try_start_b
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_b
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :catchall_9
    move-exception v0

    move-object v3, v11

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v3, v11

    goto :goto_9

    :catchall_a
    move-exception v0

    move-object v10, v6

    move-object v3, v13

    move-object v14, v3

    :goto_a
    move-object v15, v14

    :goto_b
    if-eqz v15, :cond_d

    .line 153
    sget-object v4, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v4, v3, v15}, Lcom/sun/jna/platform/win32/GDI32;->SelectObject(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 155
    sget-object v5, Lcom/sun/jna/platform/win32/WinGDI;->HGDI_ERROR:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v5, v4}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 156
    :cond_c
    new-instance v13, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v13, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    :cond_d
    if-eqz v14, :cond_f

    .line 165
    sget-object v4, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v4, v14}, Lcom/sun/jna/platform/win32/GDI32;->DeleteObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 166
    new-instance v4, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    if-eqz v13, :cond_e

    .line 168
    invoke-virtual {v4, v13}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :cond_e
    move-object v13, v4

    :cond_f
    if-eqz v3, :cond_10

    .line 176
    sget-object v4, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v4, v3}, Lcom/sun/jna/platform/win32/GDI32;->DeleteDC(Lcom/sun/jna/platform/win32/WinDef$HDC;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 177
    new-instance v3, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    if-eqz v13, :cond_10

    .line 179
    invoke-virtual {v3, v13}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :cond_10
    if-eqz v10, :cond_11

    .line 186
    sget-object v3, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v3, v1, v10}, Lcom/sun/jna/platform/win32/User32;->ReleaseDC(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;)I

    move-result v1

    if-nez v1, :cond_11

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_11
    throw v0

    :catch_a
    move-exception v0

    move-object v10, v6

    move-object v3, v13

    move-object v14, v3

    :goto_c
    move-object v15, v14

    :goto_d
    if-eqz v15, :cond_13

    .line 153
    sget-object v4, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v4, v3, v15}, Lcom/sun/jna/platform/win32/GDI32;->SelectObject(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 155
    sget-object v5, Lcom/sun/jna/platform/win32/WinGDI;->HGDI_ERROR:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v5, v4}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 156
    :cond_12
    new-instance v4, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 158
    invoke-virtual {v4, v0}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    move-object v0, v4

    :cond_13
    if-eqz v14, :cond_14

    .line 165
    sget-object v4, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v4, v14}, Lcom/sun/jna/platform/win32/GDI32;->DeleteObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 166
    new-instance v4, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 168
    invoke-virtual {v4, v0}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    move-object v0, v4

    :cond_14
    if-eqz v3, :cond_15

    .line 176
    sget-object v4, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v4, v3}, Lcom/sun/jna/platform/win32/GDI32;->DeleteDC(Lcom/sun/jna/platform/win32/WinDef$HDC;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 177
    new-instance v3, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 179
    invoke-virtual {v3, v0}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    move-object v0, v3

    :cond_15
    if-eqz v10, :cond_17

    .line 186
    sget-object v3, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v3, v1, v10}, Lcom/sun/jna/platform/win32/User32;->ReleaseDC(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;)I

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_e

    .line 187
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_e
    move-object v3, v13

    move-object v13, v0

    :cond_18
    :goto_f
    if-nez v13, :cond_19

    return-object v3

    .line 193
    :cond_19
    throw v13

    .line 90
    :cond_1a
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 85
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window width and/or height were 0 even though GetWindowRect did not appear to fail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1c
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method
