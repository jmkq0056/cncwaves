.class public interface abstract Lcom/sun/jna/platform/unix/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/unix/Resource$Rlimit;
    }
.end annotation


# static fields
.field public static final RLIMIT_AS:I = 0x9

.field public static final RLIMIT_CORE:I = 0x4

.field public static final RLIMIT_CPU:I = 0x0

.field public static final RLIMIT_DATA:I = 0x2

.field public static final RLIMIT_FSIZE:I = 0x1

.field public static final RLIMIT_LOCKS:I = 0xa

.field public static final RLIMIT_MEMLOCK:I = 0x8

.field public static final RLIMIT_MSGQUEUE:I = 0xc

.field public static final RLIMIT_NICE:I = 0xd

.field public static final RLIMIT_NLIMITS:I = 0x10

.field public static final RLIMIT_NOFILE:I = 0x7

.field public static final RLIMIT_NPROC:I = 0x6

.field public static final RLIMIT_RSS:I = 0x5

.field public static final RLIMIT_RTPRIO:I = 0xe

.field public static final RLIMIT_RTTIME:I = 0xf

.field public static final RLIMIT_SIGPENDING:I = 0xb

.field public static final RLIMIT_STACK:I = 0x3


# virtual methods
.method public abstract getrlimit(ILcom/sun/jna/platform/unix/Resource$Rlimit;)I
.end method

.method public abstract setrlimit(ILcom/sun/jna/platform/unix/Resource$Rlimit;)I
.end method
