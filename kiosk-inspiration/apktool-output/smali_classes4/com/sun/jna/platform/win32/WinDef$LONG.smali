.class public Lcom/sun/jna/platform/win32/WinDef$LONG;
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
    name = "LONG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/jna/IntegerType;",
        "Ljava/lang/Comparable<",
        "Lcom/sun/jna/platform/win32/WinDef$LONG;",
        ">;"
    }
.end annotation


# static fields
.field public static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 218
    sget v0, Lcom/sun/jna/Native;->LONG_SIZE:I

    sput v0, Lcom/sun/jna/platform/win32/WinDef$LONG;->SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 224
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 233
    sget v0, Lcom/sun/jna/platform/win32/WinDef$LONG;->SIZE:I

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/jna/IntegerType;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/jna/platform/win32/WinDef$LONG;)I
    .locals 0

    .line 238
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$LONG;->compare(Lcom/sun/jna/IntegerType;Lcom/sun/jna/IntegerType;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 215
    check-cast p1, Lcom/sun/jna/platform/win32/WinDef$LONG;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$LONG;->compareTo(Lcom/sun/jna/platform/win32/WinDef$LONG;)I

    move-result p1

    return p1
.end method
