.class public Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "wYear",
        "wMonth",
        "wDayOfWeek",
        "wDay",
        "wHour",
        "wMinute",
        "wSecond",
        "wMilliseconds"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYSTEMTIME"
.end annotation


# instance fields
.field public wDay:S

.field public wDayOfWeek:S

.field public wHour:S

.field public wMilliseconds:S

.field public wMinute:S

.field public wMonth:S

.field public wSecond:S

.field public wYear:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 964
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 971
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 972
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 973
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 974
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->fromCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 977
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 978
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->fromCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 968
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;-><init>(J)V

    return-void
.end method


# virtual methods
.method public fromCalendar(Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x1

    .line 982
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wYear:S

    const/4 v1, 0x2

    .line 983
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMonth:S

    const/4 v1, 0x5

    .line 984
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wDay:S

    const/16 v1, 0xb

    .line 985
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wHour:S

    const/16 v1, 0xc

    .line 986
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMinute:S

    const/16 v1, 0xd

    .line 987
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wSecond:S

    const/16 v1, 0xe

    .line 988
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMilliseconds:S

    const/4 v1, 0x7

    .line 989
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wDayOfWeek:S

    return-void
.end method

.method public toCalendar()Ljava/util/Calendar;
    .locals 3

    .line 993
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 994
    iget-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wYear:S

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 995
    iget-short v1, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMonth:S

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 996
    iget-short v2, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wDay:S

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 997
    iget-short v2, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wHour:S

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 998
    iget-short v2, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMinute:S

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 999
    iget-short v2, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wSecond:S

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 1000
    iget-short v2, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMilliseconds:S

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1007
    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wYear:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMonth:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wDay:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wHour:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMinute:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wSecond:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->wMilliseconds:S

    if-nez v0, :cond_0

    .line 1010
    invoke-super {p0}, Lcom/sun/jna/Structure;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1013
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 1014
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->toCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 1015
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
