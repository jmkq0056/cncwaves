.class public Lcom/sun/jna/platform/win32/WinDef$UINT;
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
    name = "UINT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/jna/IntegerType;",
        "Ljava/lang/Comparable<",
        "Lcom/sun/jna/platform/win32/WinDef$UINT;",
        ">;"
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1302
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 1312
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/jna/platform/win32/WinDef$UINT;)I
    .locals 0

    .line 1317
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$UINT;->compare(Lcom/sun/jna/IntegerType;Lcom/sun/jna/IntegerType;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1293
    check-cast p1, Lcom/sun/jna/platform/win32/WinDef$UINT;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$UINT;->compareTo(Lcom/sun/jna/platform/win32/WinDef$UINT;)I

    move-result p1

    return p1
.end method
