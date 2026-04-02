.class public Lcom/sun/jna/platform/mac/MacFileUtils;
.super Lcom/sun/jna/platform/FileUtils;
.source "MacFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sun/jna/platform/FileUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public hasTrash()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveToTrash([Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 74
    new-instance v5, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;

    invoke-direct {v5}, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;-><init>()V

    .line 75
    sget-object v6, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;->INSTANCE:Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v5, v9}, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;->FSPathMakeRefWithOptions(Ljava/lang/String;ILcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;Lcom/sun/jna/ptr/ByteByReference;)I

    move-result v6

    .line 78
    const-string v7, ")"

    if-eqz v6, :cond_0

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (FSRef: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :cond_0
    sget-object v6, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;->INSTANCE:Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;

    invoke-interface {v6, v5, v9, v2}, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;->FSMoveObjectToTrashSync(Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 88
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The following files could not be trashed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
