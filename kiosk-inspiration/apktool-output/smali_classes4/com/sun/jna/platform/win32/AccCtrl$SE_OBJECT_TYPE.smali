.class public abstract Lcom/sun/jna/platform/win32/AccCtrl$SE_OBJECT_TYPE;
.super Ljava/lang/Object;
.source "AccCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/AccCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SE_OBJECT_TYPE"
.end annotation


# static fields
.field public static final SE_DS_OBJECT:I = 0x8

.field public static final SE_DS_OBJECT_ALL:I = 0x9

.field public static final SE_FILE_OBJECT:I = 0x1

.field public static final SE_KERNEL_OBJECT:I = 0x6

.field public static final SE_LMSHARE:I = 0x5

.field public static final SE_PRINTER:I = 0x3

.field public static final SE_PROVIDER_DEFINED_OBJECT:I = 0xa

.field public static final SE_REGISTRY_KEY:I = 0x4

.field public static final SE_REGISTRY_WOW64_32KEY:I = 0xc

.field public static final SE_SERVICE:I = 0x2

.field public static final SE_UNKNOWN_OBJECT_TYPE:I = 0x0

.field public static final SE_WINDOW_OBJECT:I = 0x7

.field public static final SE_WMIGUID_OBJECT:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/AccCtrl;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/AccCtrl;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sun/jna/platform/win32/AccCtrl$SE_OBJECT_TYPE;->this$0:Lcom/sun/jna/platform/win32/AccCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
