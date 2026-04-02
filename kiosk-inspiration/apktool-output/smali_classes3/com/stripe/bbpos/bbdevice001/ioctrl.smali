.class public Lcom/stripe/bbpos/bbdevice001/ioctrl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "SmartPOS-1.2.0"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native IsAW9523Valid()I
.end method

.method public native IsSTM8Valid()I
.end method

.method public native MTgpioWrite(II)I
.end method

.method public native P1000BootOnOff(I)I
.end method

.method public native P1000PowerOnOff(I)I
.end method

.method public native SysfsRead(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native SysfsWrite(Ljava/lang/String;I)I
.end method
