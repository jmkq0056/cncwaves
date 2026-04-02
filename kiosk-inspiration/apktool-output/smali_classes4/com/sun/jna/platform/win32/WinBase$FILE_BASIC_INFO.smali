.class public Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "CreationTime",
        "LastAccessTime",
        "LastWriteTime",
        "ChangeTime",
        "FileAttributes"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FILE_BASIC_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO$ByReference;
    }
.end annotation


# instance fields
.field public ChangeTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public CreationTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public FileAttributes:I

.field public LastAccessTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public LastWriteTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 274
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 275
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->read()V

    .line 277
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->CreationTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->CreationTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 278
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->LastAccessTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->LastAccessTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 279
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->LastWriteTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->LastWriteTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 280
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->ChangeTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->getValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->ChangeTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;I)V
    .locals 3

    .line 287
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 288
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->toTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->CreationTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 289
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->toTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->LastAccessTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 290
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {p3}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->toTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->LastWriteTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 291
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-virtual {p4}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->toTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->ChangeTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 292
    iput p5, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->FileAttributes:I

    .line 293
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->write()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;I)V
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->CreationTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 302
    iput-object p2, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->LastAccessTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 303
    iput-object p3, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->LastWriteTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 304
    iput-object p4, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->ChangeTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 305
    iput p5, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->FileAttributes:I

    .line 306
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;->write()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 266
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
