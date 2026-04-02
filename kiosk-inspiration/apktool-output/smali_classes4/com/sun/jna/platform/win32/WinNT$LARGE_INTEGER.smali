.class public Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "u"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LARGE_INTEGER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;,
        Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;,
        Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$ByReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/jna/Structure;",
        "Ljava/lang/Comparable<",
        "Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;",
        ">;"
    }
.end annotation


# instance fields
.field public u:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1208
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1211
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1212
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->u:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;

    return-void
.end method

.method public static compare(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;J)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/sun/jna/IntegerType;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static compare(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;)I
    .locals 2

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

    .line 1273
    :cond_2
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/sun/jna/IntegerType;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;)I
    .locals 0

    .line 1244
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->compare(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1142
    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->compareTo(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;)I

    move-result p1

    return p1
.end method

.method public getHigh()Lcom/sun/jna/platform/win32/WinDef$DWORD;
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->u:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;->lh:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->HighPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-object v0
.end method

.method public getLow()Lcom/sun/jna/platform/win32/WinDef$DWORD;
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->u:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;->lh:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$LowHigh;->LowPart:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 1239
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->u:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;

    iget-wide v0, v0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;->value:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1249
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->u:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$UNION;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
