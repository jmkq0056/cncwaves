.class public Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;
.super Ljava/lang/Object;
.source "TlbImp.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbConst;


# instance fields
.field private cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

.field private comRootDir:Ljava/io/File;

.field private outputDir:Ljava/io/File;

.field private typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    .line 73
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->isTlbId()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    const-string v0, "tlb.id"

    invoke-virtual {p1, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->getRequiredParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    const-string v1, "tlb.major.version"

    .line 76
    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    const-string v2, "tlb.minor.version"

    .line 78
    invoke-virtual {v1, v2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->getIntParam(Ljava/lang/String;)I

    move-result v1

    .line 82
    new-instance v2, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct {v2, p1, v0, v1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    .line 84
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->startCOM2Java()V

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->isTlbFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    const-string v0, "tlb.file"

    invoke-virtual {p1, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->getRequiredParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    .line 90
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->startCOM2Java()V

    return-void

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->showCmdHelp()V

    return-void
.end method

.method private createCOMCoClass(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance p2, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;

    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCoClass;-><init>(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, p2}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->writeTlbClass(Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;)V

    return-void
.end method

.method private createCOMDispInterface(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbDispInterface;-><init>(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->writeTlbClass(Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;)V

    return-void
.end method

.method private createCOMEnum(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbEnum;-><init>(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V

    .line 191
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->writeTlbClass(Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;)V

    return-void
.end method

.method private createCOMInterface(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbInterface;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbInterface;-><init>(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V

    .line 207
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->writeTlbClass(Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;)V

    return-void
.end method

.method private createDir()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    const-string v1, "output.dir"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_jnaCOM_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\myPackage\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    .line 141
    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 144
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->comRootDir:Ljava/io/File;

    goto :goto_0

    .line 146
    :cond_0
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->comRootDir:Ljava/io/File;

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->comRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->comRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->comRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const-string v0, "Output directory sucessfully created."

    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->logInfo(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output directory NOT sucessfully created to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->comRootDir:Ljava/io/File;

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "myPackage."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 1

    .line 240
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private writeTextFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->comRootDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 171
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method private writeTlbClass(Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->getClassBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->writeTextFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public startCOM2Java()V
    .locals 6

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->createDir()V

    .line 103
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->cmdlineArgs:Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbCmdlineArgs;->getBindingMode()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getTypeInfoCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    .line 107
    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-virtual {v3, v2}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getTypeInfoType(I)Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;

    move-result-object v3

    .line 109
    iget v4, v3, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    if-nez v4, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct {p0, v2, v3, v4}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->createCOMEnum(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V

    goto :goto_1

    .line 111
    :cond_0
    iget v4, v3, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 112
    const-string v3, "\'TKIND_RECORD\' objects are currently not supported!"

    invoke-static {v3}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->logInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_1
    iget v4, v3, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 114
    const-string v3, "\'TKIND_MODULE\' objects are currently not supported!"

    invoke-static {v3}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->logInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_2
    iget v4, v3, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 116
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct {p0, v2, v3, v4}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->createCOMInterface(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V

    goto :goto_1

    .line 118
    :cond_3
    iget v4, v3, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 119
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct {p0, v2, v3, v4}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->createCOMDispInterface(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;)V

    goto :goto_1

    .line 121
    :cond_4
    iget v4, v3, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 122
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->createCOMCoClass(ILjava/lang/String;Lcom/sun/jna/platform/win32/COM/TypeLibUtil;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_5
    iget v4, v3, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 125
    const-string v3, "\'TKIND_ALIAS\' objects are currently not supported!"

    invoke-static {v3}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->logInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_6
    iget v3, v3, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 127
    const-string v3, "\'TKIND_UNION\' objects are currently not supported!"

    invoke-static {v3}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->logInfo(Ljava/lang/String;)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " files sucessfully written to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->comRootDir:Ljava/io/File;

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/tlb/TlbImp;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
