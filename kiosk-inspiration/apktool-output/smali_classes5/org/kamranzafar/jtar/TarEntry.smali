.class public Lorg/kamranzafar/jtar/TarEntry;
.super Ljava/lang/Object;
.source "TarEntry.java"


# instance fields
.field protected file:Ljava/io/File;

.field protected header:Lorg/kamranzafar/jtar/TarHeader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    .line 33
    new-instance v0, Lorg/kamranzafar/jtar/TarHeader;

    invoke-direct {v0}, Lorg/kamranzafar/jtar/TarHeader;-><init>()V

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/kamranzafar/jtar/TarEntry;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    .line 39
    invoke-virtual {p0, p2}, Lorg/kamranzafar/jtar/TarEntry;->extractTarHeader(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/kamranzafar/jtar/TarHeader;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    .line 58
    iput-object p1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/kamranzafar/jtar/TarEntry;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lorg/kamranzafar/jtar/TarEntry;->parseTarHeader([B)V

    return-void
.end method


# virtual methods
.method public computeCheckSum([B)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 186
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 187
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public equals(Lorg/kamranzafar/jtar/TarEntry;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object p1, p1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public extractTarHeader(Ljava/lang/String;)V
    .locals 8

    .line 173
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/kamranzafar/jtar/PermissionUtils;->permissions(Ljava/io/File;)I

    move-result v7

    .line 174
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lorg/kamranzafar/jtar/TarHeader;->createHeader(Ljava/lang/String;JJZI)Lorg/kamranzafar/jtar/TarHeader;

    move-result-object p1

    iput-object p1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v0, v0, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/kamranzafar/jtar/TarHeader;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    return-object v0
.end method

.method public getModTime()Ljava/util/Date;
    .locals 5

    .line 132
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-wide v1, v1, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v1, v1, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v1, v1, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v2, v2, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-wide v0, v0, Lorg/kamranzafar/jtar/TarHeader;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v0, v0, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDescendent(Lorg/kamranzafar/jtar/TarEntry;)Z
    .locals 1

    .line 66
    iget-object p1, p1, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object p1, p1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDirectory()Z
    .locals 3

    .line 153
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    if-eqz v0, :cond_2

    .line 157
    iget-byte v0, v0, Lorg/kamranzafar/jtar/TarHeader;->linkFlag:B

    const/16 v1, 0x35

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public parseTarHeader([B)V
    .locals 7

    .line 242
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p1, v1, v2}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 245
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v1, 0x8

    invoke-static {p1, v2, v1}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lorg/kamranzafar/jtar/TarHeader;->mode:I

    .line 248
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v3, 0x6c

    invoke-static {p1, v3, v1}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    .line 251
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v3, 0x74

    invoke-static {p1, v3, v1}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    .line 254
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v3, 0x7c

    const/16 v4, 0xc

    invoke-static {p1, v3, v4}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v5

    iput-wide v5, v0, Lorg/kamranzafar/jtar/TarHeader;->size:J

    .line 257
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v3, 0x88

    invoke-static {p1, v3, v4}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    .line 260
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v3, 0x94

    invoke-static {p1, v3, v1}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lorg/kamranzafar/jtar/TarHeader;->checkSum:I

    .line 263
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v3, 0x9c

    aget-byte v3, p1, v3

    iput-byte v3, v0, Lorg/kamranzafar/jtar/TarHeader;->linkFlag:B

    .line 265
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v3, 0x9d

    invoke-static {p1, v3, v2}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/kamranzafar/jtar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    .line 268
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v2, 0x101

    invoke-static {p1, v2, v1}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/kamranzafar/jtar/TarHeader;->magic:Ljava/lang/StringBuffer;

    .line 271
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v2, 0x109

    const/16 v3, 0x20

    invoke-static {p1, v2, v3}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 274
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v2, 0x129

    invoke-static {p1, v2, v3}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 277
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v2, 0x149

    invoke-static {p1, v2, v1}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lorg/kamranzafar/jtar/TarHeader;->devMajor:I

    .line 280
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v2, 0x151

    invoke-static {p1, v2, v1}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lorg/kamranzafar/jtar/TarHeader;->devMinor:I

    .line 283
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v1, 0x9b

    const/16 v2, 0x159

    invoke-static {p1, v2, v1}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, v0, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    return-void
.end method

.method public setGroupId(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iput p1, v0, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    return-void
.end method

.method public setIds(II)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lorg/kamranzafar/jtar/TarEntry;->setUserId(I)V

    .line 120
    invoke-virtual {p0, p2}, Lorg/kamranzafar/jtar/TarEntry;->setGroupId(I)V

    return-void
.end method

.method public setModTime(J)V
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    iput-wide p1, v0, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .locals 5

    .line 128
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    return-void
.end method

.method public setSize(J)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iput-wide p1, v0, Lorg/kamranzafar/jtar/TarHeader;->size:J

    return-void
.end method

.method public setUserId(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iput p1, v0, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    return-void
.end method

.method public writeEntryHeader([B)V
    .locals 8

    .line 201
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, p1, v1, v2}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 202
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v3, v3, Lorg/kamranzafar/jtar/TarHeader;->mode:I

    int-to-long v3, v3

    const/16 v5, 0x8

    invoke-static {v3, v4, p1, v0, v5}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 203
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v3, v3, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0, v5}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 204
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v3, v3, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0, v5}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 206
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-wide v3, v3, Lorg/kamranzafar/jtar/TarHeader;->size:J

    const/16 v6, 0xc

    .line 208
    invoke-static {v3, v4, p1, v0, v6}, Lorg/kamranzafar/jtar/Octal;->getLongOctalBytes(J[BII)I

    move-result v0

    .line 209
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-wide v3, v3, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    invoke-static {v3, v4, p1, v0, v6}, Lorg/kamranzafar/jtar/Octal;->getLongOctalBytes(J[BII)I

    move-result v0

    move v4, v0

    move v3, v1

    :goto_0
    const/16 v6, 0x20

    if-ge v3, v5, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 213
    aput-byte v6, p1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v4, 0x1

    .line 215
    iget-object v7, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-byte v7, v7, Lorg/kamranzafar/jtar/TarHeader;->linkFlag:B

    aput-byte v7, p1, v4

    .line 217
    iget-object v4, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v4, v4, Lorg/kamranzafar/jtar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    invoke-static {v4, p1, v3, v2}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v2

    .line 218
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v3, v3, Lorg/kamranzafar/jtar/TarHeader;->magic:Ljava/lang/StringBuffer;

    invoke-static {v3, p1, v2, v5}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v2

    .line 219
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v3, v3, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    invoke-static {v3, p1, v2, v6}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v2

    .line 220
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v3, v3, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    invoke-static {v3, p1, v2, v6}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v2

    .line 221
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v3, v3, Lorg/kamranzafar/jtar/TarHeader;->devMajor:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v2, v5}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v2

    .line 222
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v3, v3, Lorg/kamranzafar/jtar/TarHeader;->devMinor:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v2, v5}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v2

    .line 223
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v3, v3, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    const/16 v4, 0x9b

    invoke-static {v3, p1, v2, v4}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v2

    .line 225
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 226
    aput-byte v1, p1, v2

    move v2, v3

    goto :goto_1

    .line 228
    :cond_1
    invoke-virtual {p0, p1}, Lorg/kamranzafar/jtar/TarEntry;->computeCheckSum([B)J

    move-result-wide v1

    .line 230
    invoke-static {v1, v2, p1, v0, v5}, Lorg/kamranzafar/jtar/Octal;->getCheckSumOctalBytes(J[BII)I

    return-void
.end method
