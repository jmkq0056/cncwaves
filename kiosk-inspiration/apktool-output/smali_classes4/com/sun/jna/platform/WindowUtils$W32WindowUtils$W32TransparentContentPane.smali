.class Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;
.super Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "W32TransparentContentPane"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bitmapSize:Ljava/awt/Dimension;

.field private hBitmap:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

.field private memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;

.field private pbits:Lcom/sun/jna/Pointer;

.field final synthetic this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;Ljava/awt/Container;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    .line 842
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;-><init>(Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;Ljava/awt/Container;)V

    return-void
.end method

.method private disposeBackingStore()V
    .locals 3

    .line 845
    sget-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    .line 846
    iget-object v1, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->hBitmap:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 847
    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/GDI32;->DeleteObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 848
    iput-object v2, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->hBitmap:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;

    if-eqz v1, :cond_1

    .line 851
    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/GDI32;->DeleteDC(Lcom/sun/jna/platform/win32/WinDef$HDC;)Z

    .line 852
    iput-object v2, p0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;

    :cond_1
    return-void
.end method


# virtual methods
.method protected paintDirect(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 870
    invoke-static {v1}, Ljavax/swing/SwingUtilities;->getWindowAncestor(Ljava/awt/Component;)Ljava/awt/Window;

    move-result-object v2

    .line 871
    sget-object v3, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    .line 872
    sget-object v10, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    .line 873
    iget v4, v0, Ljava/awt/Rectangle;->x:I

    .line 874
    iget v5, v0, Ljava/awt/Rectangle;->y:I

    .line 875
    invoke-static {v1, v4, v5, v2}, Ljavax/swing/SwingUtilities;->convertPoint(Ljava/awt/Component;IILjava/awt/Component;)Ljava/awt/Point;

    move-result-object v11

    .line 876
    iget v12, v0, Ljava/awt/Rectangle;->width:I

    .line 877
    iget v0, v0, Ljava/awt/Rectangle;->height:I

    .line 878
    invoke-virtual {v2}, Ljava/awt/Window;->getWidth()I

    move-result v13

    .line 879
    invoke-virtual {v2}, Ljava/awt/Window;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    .line 880
    invoke-interface {v10, v15}, Lcom/sun/jna/platform/win32/User32;->GetDC(Lcom/sun/jna/platform/win32/WinDef$HWND;)Lcom/sun/jna/platform/win32/WinDef$HDC;

    move-result-object v4

    .line 883
    :try_start_0
    iget-object v5, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v5, :cond_0

    .line 884
    :try_start_1
    invoke-interface {v3, v4}, Lcom/sun/jna/platform/win32/GDI32;->CreateCompatibleDC(Lcom/sun/jna/platform/win32/WinDef$HDC;)Lcom/sun/jna/platform/win32/WinDef$HDC;

    move-result-object v5

    iput-object v5, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v4

    move-object v4, v10

    move-object v11, v15

    goto/16 :goto_9

    .line 886
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->hBitmap:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v5

    iget-object v9, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->bitmapSize:Ljava/awt/Dimension;

    invoke-virtual {v5, v9}, Ljava/awt/Dimension;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v17, v4

    move/from16 v18, v7

    const/4 v15, 0x4

    goto :goto_2

    .line 887
    :cond_2
    :goto_1
    :try_start_4
    iget-object v5, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->hBitmap:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-eqz v5, :cond_3

    .line 888
    :try_start_5
    invoke-interface {v3, v5}, Lcom/sun/jna/platform/win32/GDI32;->DeleteObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 889
    iput-object v15, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->hBitmap:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 891
    :cond_3
    :try_start_6
    new-instance v5, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;-><init>()V

    .line 892
    iget-object v9, v5, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    iput v13, v9, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biWidth:I

    .line 893
    iget-object v9, v5, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    iput v14, v9, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biHeight:I

    .line 894
    iget-object v9, v5, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    iput-short v8, v9, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biPlanes:S

    .line 895
    iget-object v9, v5, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    const/16 p2, 0x4

    const/16 v6, 0x20

    iput-short v6, v9, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biBitCount:S

    .line 896
    iget-object v6, v5, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    iput v7, v6, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biCompression:I

    .line 897
    iget-object v6, v5, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    mul-int v9, v13, v14

    mul-int/lit8 v9, v9, 0x4

    iput v9, v6, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biSizeImage:I

    move v6, v7

    .line 898
    new-instance v7, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object v9, v4

    .line 899
    :try_start_7
    iget-object v4, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move/from16 v16, v8

    const/4 v8, 0x0

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v18, v6

    const/4 v6, 0x0

    move/from16 v15, p2

    :try_start_8
    invoke-interface/range {v3 .. v9}, Lcom/sun/jna/platform/win32/GDI32;->CreateDIBSection(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;ILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

    move-result-object v4

    iput-object v4, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->hBitmap:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

    .line 902
    invoke-virtual {v7}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v4

    iput-object v4, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->pbits:Lcom/sun/jna/Pointer;

    .line 903
    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4, v13, v14}, Ljava/awt/Dimension;-><init>(II)V

    iput-object v4, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->bitmapSize:Ljava/awt/Dimension;

    .line 905
    :goto_2
    iget-object v4, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;

    iget-object v5, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->hBitmap:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

    invoke-interface {v3, v4, v5}, Lcom/sun/jna/platform/win32/GDI32;->SelectObject(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 906
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getData()Ljava/awt/image/Raster;

    move-result-object v5

    .line 907
    new-array v6, v15, [I

    .line 908
    new-array v7, v12, [I

    move/from16 v8, v18

    :goto_3
    if-ge v8, v0, :cond_5

    move/from16 v9, v18

    const/16 p1, 0x2

    :goto_4
    if-ge v9, v12, :cond_4

    .line 911
    invoke-virtual {v5, v9, v8, v6}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    const/16 v16, 0x3

    move/from16 v20, v15

    .line 912
    aget v15, v6, v16

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    move/from16 v16, v0

    .line 913
    aget v0, v6, p1

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v8

    const/16 v19, 0x1

    .line 914
    aget v8, v6, v19

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    move/from16 v22, v0

    .line 915
    aget v0, v6, v18

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int v15, v15, v22

    or-int/2addr v8, v15

    or-int/2addr v0, v8

    .line 916
    aput v0, v7, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v16

    move/from16 v15, v20

    move/from16 v8, v21

    goto :goto_4

    :cond_4
    move/from16 v16, v0

    move/from16 v21, v8

    move/from16 v20, v15

    const/16 v19, 0x1

    .line 918
    iget v0, v11, Ljava/awt/Point;->y:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    add-int v0, v0, v21

    sub-int v0, v14, v0

    add-int/lit8 v0, v0, -0x1

    move-object v8, v4

    .line 919
    :try_start_a
    iget-object v4, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->pbits:Lcom/sun/jna/Pointer;

    mul-int/2addr v0, v13

    iget v9, v11, Ljava/awt/Point;->x:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x4

    move-object v15, v4

    move-object v9, v5

    int-to-long v4, v0

    move-object/from16 v22, v8

    const/4 v8, 0x0

    move-object/from16 p1, v9

    move v9, v12

    move/from16 v0, v19

    move-object v12, v6

    move-wide v5, v4

    move-object v4, v15

    move-object/from16 v15, v22

    :try_start_b
    invoke-virtual/range {v4 .. v9}, Lcom/sun/jna/Pointer;->write(J[III)V

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v5, p1

    move-object v6, v12

    move-object v4, v15

    move/from16 v0, v16

    move/from16 v15, v20

    move v12, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v15, v8

    goto/16 :goto_5

    :cond_5
    move-object v15, v4

    const/16 p1, 0x2

    const/4 v0, 0x1

    .line 921
    new-instance v8, Lcom/sun/jna/platform/win32/WinUser$SIZE;

    invoke-direct {v8}, Lcom/sun/jna/platform/win32/WinUser$SIZE;-><init>()V

    .line 922
    invoke-virtual {v2}, Ljava/awt/Window;->getWidth()I

    move-result v4

    iput v4, v8, Lcom/sun/jna/platform/win32/WinUser$SIZE;->cx:I

    .line 923
    invoke-virtual {v2}, Ljava/awt/Window;->getHeight()I

    move-result v4

    iput v4, v8, Lcom/sun/jna/platform/win32/WinUser$SIZE;->cy:I

    .line 924
    new-instance v7, Lcom/sun/jna/platform/win32/WinDef$POINT;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/WinDef$POINT;-><init>()V

    .line 925
    invoke-virtual {v2}, Ljava/awt/Window;->getX()I

    move-result v4

    iput v4, v7, Lcom/sun/jna/platform/win32/WinDef$POINT;->x:I

    .line 926
    invoke-virtual {v2}, Ljava/awt/Window;->getY()I

    move-result v4

    iput v4, v7, Lcom/sun/jna/platform/win32/WinDef$POINT;->y:I

    .line 927
    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$POINT;

    invoke-direct {v4}, Lcom/sun/jna/platform/win32/WinDef$POINT;-><init>()V

    .line 928
    new-instance v12, Lcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;

    invoke-direct {v12}, Lcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;-><init>()V

    .line 929
    iget-object v5, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    invoke-static {v5, v2}, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;->access$400(Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;Ljava/awt/Component;)Lcom/sun/jna/platform/win32/WinDef$HWND;

    move-result-object v5

    .line 931
    new-instance v6, Lcom/sun/jna/ptr/ByteByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/ByteByReference;-><init>()V

    .line 932
    new-instance v9, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v9}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 933
    iget-object v11, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->this$0:Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    invoke-static {v11, v2}, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;->access$700(Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;Ljava/awt/Window;)B

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v11, 0x0

    .line 936
    :try_start_c
    invoke-interface {v10, v5, v11, v6, v9}, Lcom/sun/jna/platform/win32/User32;->GetLayeredWindowAttributes(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/ByteByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 937
    invoke-virtual {v9}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_6

    .line 938
    invoke-virtual {v6}, Lcom/sun/jna/ptr/ByteByReference;->getValue()B

    move-result v2
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 943
    :catch_0
    :cond_6
    :try_start_d
    iput-byte v2, v12, Lcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;->SourceConstantAlpha:B

    .line 944
    iput-byte v0, v12, Lcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;->AlphaFormat:B

    .line 945
    iget-object v9, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/4 v11, 0x0

    const/4 v13, 0x2

    move-object v6, v10

    move-object v10, v4

    move-object v4, v6

    move-object/from16 v6, v17

    :try_start_e
    invoke-interface/range {v4 .. v13}, Lcom/sun/jna/platform/win32/User32;->UpdateLayeredWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$POINT;Lcom/sun/jna/platform/win32/WinUser$SIZE;Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$POINT;ILcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;I)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v11, 0x0

    .line 948
    invoke-interface {v4, v11, v6}, Lcom/sun/jna/platform/win32/User32;->ReleaseDC(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;)I

    .line 949
    iget-object v0, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;

    if-eqz v0, :cond_7

    if-eqz v15, :cond_7

    .line 950
    invoke-interface {v3, v0, v15}, Lcom/sun/jna/platform/win32/GDI32;->SelectObject(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    :cond_7
    return-void

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v15, v4

    :goto_5
    move-object v4, v10

    move-object/from16 v6, v17

    :goto_6
    const/4 v11, 0x0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v4, v10

    move-object/from16 v6, v17

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v6, v9

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v6, v4

    :goto_7
    move-object v4, v10

    :goto_8
    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 948
    :goto_9
    invoke-interface {v4, v11, v6}, Lcom/sun/jna/platform/win32/User32;->ReleaseDC(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;)I

    .line 949
    iget-object v2, v1, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->memDC:Lcom/sun/jna/platform/win32/WinDef$HDC;

    if-eqz v2, :cond_8

    if-eqz v15, :cond_8

    .line 950
    invoke-interface {v3, v2, v15}, Lcom/sun/jna/platform/win32/GDI32;->SelectObject(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 952
    :cond_8
    throw v0
.end method

.method public removeNotify()V
    .locals 0

    .line 857
    invoke-super {p0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->removeNotify()V

    .line 858
    invoke-direct {p0}, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->disposeBackingStore()V

    return-void
.end method

.method public setTransparent(Z)V
    .locals 0

    .line 862
    invoke-super {p0, p1}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->setTransparent(Z)V

    if-nez p1, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils$W32TransparentContentPane;->disposeBackingStore()V

    :cond_0
    return-void
.end method
