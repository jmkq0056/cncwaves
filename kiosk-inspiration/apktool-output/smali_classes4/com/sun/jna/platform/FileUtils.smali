.class public abstract Lcom/sun/jna/platform/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/FileUtils$DefaultFileUtils;,
        Lcom/sun/jna/platform/FileUtils$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/jna/platform/FileUtils;
    .locals 1

    .line 65
    sget-object v0, Lcom/sun/jna/platform/FileUtils$Holder;->INSTANCE:Lcom/sun/jna/platform/FileUtils;

    return-object v0
.end method


# virtual methods
.method public hasTrash()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract moveToTrash([Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
