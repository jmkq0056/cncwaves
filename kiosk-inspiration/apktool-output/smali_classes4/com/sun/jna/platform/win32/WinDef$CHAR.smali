.class public Lcom/sun/jna/platform/win32/WinDef$CHAR;
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
    name = "CHAR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/jna/IntegerType;",
        "Ljava/lang/Comparable<",
        "Lcom/sun/jna/platform/win32/WinDef$CHAR;",
        ">;"
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1665
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$CHAR;-><init>(J)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    .line 1674
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$CHAR;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1683
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/jna/platform/win32/WinDef$CHAR;)I
    .locals 0

    .line 1688
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$CHAR;->compare(Lcom/sun/jna/IntegerType;Lcom/sun/jna/IntegerType;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1656
    check-cast p1, Lcom/sun/jna/platform/win32/WinDef$CHAR;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$CHAR;->compareTo(Lcom/sun/jna/platform/win32/WinDef$CHAR;)I

    move-result p1

    return p1
.end method
