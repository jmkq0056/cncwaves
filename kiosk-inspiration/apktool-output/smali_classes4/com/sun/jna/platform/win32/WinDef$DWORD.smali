.class public Lcom/sun/jna/platform/win32/WinDef$DWORD;
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
    name = "DWORD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/jna/IntegerType;",
        "Ljava/lang/Comparable<",
        "Lcom/sun/jna/platform/win32/WinDef$DWORD;",
        ">;"
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 144
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/jna/platform/win32/WinDef$DWORD;)I
    .locals 0

    .line 167
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->compare(Lcom/sun/jna/IntegerType;Lcom/sun/jna/IntegerType;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 125
    check-cast p1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->compareTo(Lcom/sun/jna/platform/win32/WinDef$DWORD;)I

    move-result p1

    return p1
.end method

.method public getHigh()Lcom/sun/jna/platform/win32/WinDef$WORD;
    .locals 5

    .line 162
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->longValue()J

    move-result-wide v1

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$WORD;-><init>(J)V

    return-object v0
.end method

.method public getLow()Lcom/sun/jna/platform/win32/WinDef$WORD;
    .locals 5

    .line 153
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$WORD;-><init>(J)V

    return-object v0
.end method
