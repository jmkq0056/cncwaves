.class public abstract Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_CACHE_TYPE;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PROCESSOR_CACHE_TYPE"
.end annotation


# static fields
.field public static CacheData:I = 0x2

.field public static CacheInstruction:I = 0x1

.field public static CacheTrace:I = 0x3

.field public static CacheUnified:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
