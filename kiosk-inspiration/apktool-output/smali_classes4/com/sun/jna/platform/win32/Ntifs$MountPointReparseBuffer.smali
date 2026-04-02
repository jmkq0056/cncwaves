.class public Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;
.super Lcom/sun/jna/Structure;
.source "Ntifs.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "SubstituteNameOffset",
        "SubstituteNameLength",
        "PrintNameOffset",
        "PrintNameLength",
        "PathBuffer"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ntifs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MountPointReparseBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer$ByReference;
    }
.end annotation


# instance fields
.field public PathBuffer:[C

.field public PrintNameLength:S

.field public PrintNameOffset:S

.field public SubstituteNameLength:S

.field public SubstituteNameOffset:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 209
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    const/4 v0, 0x0

    .line 173
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameOffset:S

    .line 179
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameLength:S

    .line 185
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameOffset:S

    .line 191
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameLength:S

    const/16 v0, 0x2000

    .line 202
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PathBuffer:[C

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 213
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 173
    iput-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameOffset:S

    .line 179
    iput-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameLength:S

    .line 185
    iput-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameOffset:S

    .line 191
    iput-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameLength:S

    const/16 p1, 0x2000

    .line 202
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PathBuffer:[C

    .line 214
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->read()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 218
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameOffset:S

    .line 179
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameLength:S

    .line 185
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameOffset:S

    .line 191
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameLength:S

    const/16 v1, 0x2000

    .line 202
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PathBuffer:[C

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PathBuffer:[C

    .line 221
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameOffset:S

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameLength:S

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameOffset:S

    .line 224
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameLength:S

    .line 225
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->write()V

    return-void
.end method

.method public constructor <init>(SSSSLjava/lang/String;)V
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x2000

    .line 202
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PathBuffer:[C

    .line 230
    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameOffset:S

    .line 231
    iput-short p2, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->SubstituteNameLength:S

    .line 232
    iput-short p3, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameOffset:S

    .line 233
    iput-short p4, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PrintNameLength:S

    .line 234
    invoke-virtual {p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->PathBuffer:[C

    .line 235
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;->write()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 205
    const-class v0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
