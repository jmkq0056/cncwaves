.class public Lcom/sun/jna/platform/win32/WinDef$BOOL;
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
    name = "BOOL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/jna/IntegerType;",
        "Ljava/lang/Comparable<",
        "Lcom/sun/jna/platform/win32/WinDef$BOOL;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SIZE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1451
    const-class v0, Lcom/sun/jna/platform/win32/WinDef;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1460
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1478
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1469
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;-><init>(J)V

    return-void
.end method

.method public static compare(Lcom/sun/jna/platform/win32/WinDef$BOOL;Lcom/sun/jna/platform/win32/WinDef$BOOL;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, -0x1

    return p0

    .line 1521
    :cond_2
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public static compare(Lcom/sun/jna/platform/win32/WinDef$BOOL;Z)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1540
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->booleanValue()Z

    move-result p0

    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public static compare(ZZ)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .line 1483
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public compareTo(Lcom/sun/jna/platform/win32/WinDef$BOOL;)I
    .locals 0

    .line 1497
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->compare(Lcom/sun/jna/platform/win32/WinDef$BOOL;Lcom/sun/jna/platform/win32/WinDef$BOOL;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1451
    check-cast p1, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->compareTo(Lcom/sun/jna/platform/win32/WinDef$BOOL;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1492
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
