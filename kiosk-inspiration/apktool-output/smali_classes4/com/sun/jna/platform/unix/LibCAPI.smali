.class public interface abstract Lcom/sun/jna/platform/unix/LibCAPI;
.super Ljava/lang/Object;
.source "LibCAPI.java"

# interfaces
.implements Lcom/sun/jna/platform/unix/Reboot;
.implements Lcom/sun/jna/platform/unix/Resource;


# static fields
.field public static final HOST_NAME_MAX:I = 0xff


# virtual methods
.method public abstract getdomainname([BI)I
.end method

.method public abstract getegid()I
.end method

.method public abstract getenv(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract geteuid()I
.end method

.method public abstract getgid()I
.end method

.method public abstract gethostname([BI)I
.end method

.method public abstract getloadavg([DI)I
.end method

.method public abstract getuid()I
.end method

.method public abstract setdomainname(Ljava/lang/String;I)I
.end method

.method public abstract setegid(I)I
.end method

.method public abstract setenv(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract seteuid(I)I
.end method

.method public abstract setgid(I)I
.end method

.method public abstract sethostname(Ljava/lang/String;I)I
.end method

.method public abstract setuid(I)I
.end method

.method public abstract unsetenv(Ljava/lang/String;)I
.end method
