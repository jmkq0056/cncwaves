.class public final Lcom/stripe/bbpos/bbdevice001/SerialPort;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaa000:Ljava/io/FileInputStream;

.field private aaa001:Ljava/io/FileOutputStream;

.field public mFd:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "SmartPOS_SerialPort-1.2.0"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice001/aaa000zz;->aaa000()Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice001/aaa000zz;->aaa000()Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    if-eq v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice001/aaa000zz;->aaa000()Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice001/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_2

    .line 16
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice001/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice001/SerialPort;->aaa000:Ljava/io/FileInputStream;

    .line 17
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice001/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice001/SerialPort;->aaa001:Ljava/io/FileOutputStream;

    return-void

    .line 18
    :cond_2
    const-string p1, "SerialPort"

    const-string p2, "native open returns null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method private static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public native close()V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice001/SerialPort;->aaa000:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice001/SerialPort;->aaa001:Ljava/io/FileOutputStream;

    return-object v0
.end method
