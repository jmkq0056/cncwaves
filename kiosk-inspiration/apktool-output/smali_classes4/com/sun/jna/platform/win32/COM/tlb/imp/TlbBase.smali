.class public abstract Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;
.super Ljava/lang/Object;
.source "TlbBase.java"


# static fields
.field public static final CR:Ljava/lang/String; = "\n"

.field public static final CRCR:Ljava/lang/String; = "\n\n"

.field public static IDISPATCH_METHODS:[Ljava/lang/String; = null

.field public static IUNKNOWN_METHODS:[Ljava/lang/String; = null

.field public static final TAB:Ljava/lang/String; = "\t"

.field public static final TABTAB:Ljava/lang/String; = "\t\t"


# instance fields
.field protected bindingMode:Ljava/lang/String;

.field protected classBuffer:Ljava/lang/StringBuffer;

.field protected content:Ljava/lang/String;

.field protected filename:Ljava/lang/String;

.field protected index:I

.field protected name:Ljava/lang/String;

.field protected templateBuffer:Ljava/lang/StringBuffer;

.field protected typeInfoUtil:Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

.field protected typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 80
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "QueryInterface"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AddRef"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Release"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->IUNKNOWN_METHODS:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 84
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GetTypeInfoCount"

    aput-object v2, v1, v3

    const-string v2, "GetTypeInfo"

    aput-object v2, v1, v4

    const-string v2, "GetIDsOfNames"

    aput-object v2, v1, v5

    const-string v2, "Invoke"

    aput-object v2, v1, v0

    sput-object v1, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->IDISPATCH_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 1

    .line 90
    const-string v0, "dispid"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->content:Ljava/lang/String;

    .line 75
    const-string v0, "DefaultFilename"

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->filename:Ljava/lang/String;

    .line 77
    const-string v0, "DefaultName"

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->name:Ljava/lang/String;

    .line 94
    iput p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->index:I

    .line 95
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->typeLibUtil:Lcom/sun/jna/platform/win32/COM/TypeLibUtil;

    .line 96
    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->typeInfoUtil:Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

    .line 97
    iput-object p4, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->bindingMode:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->getClassTemplate()Ljava/lang/String;

    move-result-object p1

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->readTemplateFile(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->templateBuffer:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->classBuffer:Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private getTime()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createClassName(Ljava/lang/String;)V
    .locals 1

    .line 255
    const-string v0, "classname"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createContent(Ljava/lang/String;)V
    .locals 1

    .line 144
    const-string v0, "content"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createPackageName(Ljava/lang/String;)V
    .locals 1

    .line 245
    const-string v0, "packagename"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getClassBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->classBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method protected abstract getClassTemplate()Ljava/lang/String;
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected isDispIdMode()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->bindingMode:Ljava/lang/String;

    const-string v1, "dispid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isReservedMethod(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 266
    :goto_0
    sget-object v2, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->IUNKNOWN_METHODS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 267
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 271
    :goto_1
    sget-object v2, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->IDISPATCH_METHODS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 272
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method protected isVTableMode()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->bindingMode:Ljava/lang/String;

    const-string v1, "vtable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 1

    .line 115
    const-string v0, "ERROR"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logInfo(Ljava/lang/String;)V
    .locals 1

    .line 125
    const-string v0, "INFO"

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected readTemplateFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->templateBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 208
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 209
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->templateBuffer:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 216
    :cond_1
    throw p1
.end method

.method protected replaceVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 228
    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    .line 231
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\$\\{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\\}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 232
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->classBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 236
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 241
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->classBuffer:Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    .line 148
    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".java"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->filename:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;->name:Ljava/lang/String;

    return-void
.end method
