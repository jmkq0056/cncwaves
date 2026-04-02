.class public Lcom/sun/jna/platform/win32/WinDef$LONGLONG;
.super Lcom/sun/jna/IntegerType;
.source "WinDef.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LONGLONG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/jna/IntegerType;",
        "Ljava/lang/Comparable<",
        "Lcom/sun/jna/platform/win32/WinDef$LONGLONG;",
        ">;"
    }
.end annotation


# static fields
.field public static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 289
    sget v0, Lcom/sun/jna/Native;->LONG_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sun/jna/platform/win32/WinDef$LONGLONG;->SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 295
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$LONGLONG;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 304
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/jna/platform/win32/WinDef$LONGLONG;)I
    .locals 0

    .line 309
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$LONGLONG;->compare(Lcom/sun/jna/IntegerType;Lcom/sun/jna/IntegerType;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 286
    check-cast p1, Lcom/sun/jna/platform/win32/WinDef$LONGLONG;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$LONGLONG;->compareTo(Lcom/sun/jna/platform/win32/WinDef$LONGLONG;)I

    move-result p1

    return p1
.end method
