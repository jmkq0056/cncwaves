.class public Lcom/sun/jna/platform/win32/WinBase$FILETIME;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwLowDateTime",
        "dwHighDateTime"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FILETIME"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$FILETIME$ByReference;
    }
.end annotation


# static fields
.field private static final EPOCH_DIFF:J = 0xa9730b66800L


# instance fields
.field public dwHighDateTime:I

.field public dwLowDateTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 833
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 838
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;)V
    .locals 1

    .line 828
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 829
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getHigh()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dwHighDateTime:I

    .line 830
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getLow()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dwLowDateTime:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 6

    .line 818
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 819
    invoke-static {p1}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v0

    const/16 p1, 0x20

    shr-long v2, v0, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p1, v2

    .line 820
    iput p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dwHighDateTime:I

    and-long/2addr v0, v4

    long-to-int p1, v0

    .line 821
    iput p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dwLowDateTime:I

    return-void
.end method

.method public static dateToFileTime(Ljava/util/Date;)J
    .locals 4

    .line 879
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0xa9730b66800L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static filetimeToDate(II)Ljava/util/Date;
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    .line 865
    div-long/2addr p0, v0

    const-wide v0, 0xa9730b66800L

    sub-long/2addr p0, v0

    .line 867
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public toDWordLong()Lcom/sun/jna/platform/win32/WinDef$DWORDLONG;
    .locals 7

    .line 910
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORDLONG;

    iget v1, p0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dwHighDateTime:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, p0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dwLowDateTime:I

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORDLONG;-><init>(J)V

    return-object v0
.end method

.method public toDate()Ljava/util/Date;
    .locals 2

    .line 889
    iget v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dwHighDateTime:I

    iget v1, p0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->dwLowDateTime:I

    invoke-static {v0, v1}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->filetimeToDate(II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sun/jna/Structure;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->toDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTime()J
    .locals 2

    .line 899
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method
