.class public Lcom/sun/jna/platform/win32/WinDef$WORD;
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
    name = "WORD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/jna/IntegerType;",
        "Ljava/lang/Comparable<",
        "Lcom/sun/jna/platform/win32/WinDef$WORD;",
        ">;"
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$WORD;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/jna/platform/win32/WinDef$WORD;)I
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$WORD;->compare(Lcom/sun/jna/IntegerType;Lcom/sun/jna/IntegerType;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$WORD;->compareTo(Lcom/sun/jna/platform/win32/WinDef$WORD;)I

    move-result p1

    return p1
.end method
