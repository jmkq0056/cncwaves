.class public Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;
.super Lcom/sun/jna/Structure;
.source "Ntifs.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "SubstituteNameOffset",
        "SubstituteNameLength",
        "PrintNameOffset",
        "PrintNameLength",
        "Flags",
        "PathBuffer"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ntifs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SymbolicLinkReparseBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer$ByReference;
    }
.end annotation


# instance fields
.field public Flags:I

.field public PathBuffer:[C

.field public PrintNameLength:S

.field public PrintNameOffset:S

.field public SubstituteNameLength:S

.field public SubstituteNameOffset:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    const/4 v0, 0x0

    .line 67
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameOffset:S

    .line 73
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameLength:S

    .line 79
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameOffset:S

    .line 85
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameLength:S

    .line 93
    iput v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->Flags:I

    const/16 v0, 0x2000

    .line 104
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PathBuffer:[C

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 115
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 67
    iput-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameOffset:S

    .line 73
    iput-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameLength:S

    .line 79
    iput-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameOffset:S

    .line 85
    iput-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameLength:S

    .line 93
    iput v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->Flags:I

    const/16 p1, 0x2000

    .line 104
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PathBuffer:[C

    .line 116
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->read()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameOffset:S

    .line 73
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameLength:S

    .line 79
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameOffset:S

    .line 85
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameLength:S

    .line 93
    iput v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->Flags:I

    const/16 v1, 0x2000

    .line 104
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PathBuffer:[C

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PathBuffer:[C

    .line 123
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameOffset:S

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameLength:S

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameOffset:S

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameLength:S

    .line 127
    iput p3, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->Flags:I

    .line 128
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->write()V

    return-void
.end method

.method public constructor <init>(SSSSILjava/lang/String;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x2000

    .line 104
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PathBuffer:[C

    .line 133
    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameOffset:S

    .line 134
    iput-short p2, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameLength:S

    .line 135
    iput-short p3, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameOffset:S

    .line 136
    iput-short p4, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameLength:S

    .line 137
    iput p5, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->Flags:I

    .line 138
    invoke-virtual {p6}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PathBuffer:[C

    .line 139
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->write()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 107
    const-class v0, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getPrintName()Ljava/lang/String;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PathBuffer:[C

    iget-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameOffset:S

    div-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PrintNameLength:S

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubstituteName()Ljava/lang/String;
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->PathBuffer:[C

    iget-short v1, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameOffset:S

    div-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->SubstituteNameLength:S

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
