.class public interface abstract Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;
.super Ljava/lang/Object;
.source "MacFileUtils.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/MacFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;

.field public static final kFSFileOperationDefaultOptions:I = 0x0

.field public static final kFSFileOperationsDoNotMoveAcrossVolumes:I = 0x4

.field public static final kFSFileOperationsOverwrite:I = 0x1

.field public static final kFSFileOperationsSkipPreflight:I = 0x8

.field public static final kFSFileOperationsSkipSourcePermissionErrors:I = 0x2

.field public static final kFSPathDefaultOptions:I = 0x0

.field public static final kFSPathMakeRefDoNotFollowLeafSymlink:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, "CoreServices"

    const-class v1, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;

    sput-object v0, Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;->INSTANCE:Lcom/sun/jna/platform/mac/MacFileUtils$FileManager;

    return-void
.end method


# virtual methods
.method public abstract FSMoveObjectToTrashSync(Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;I)I
.end method

.method public abstract FSPathMakeRef(Ljava/lang/String;ILcom/sun/jna/ptr/ByteByReference;)I
.end method

.method public abstract FSPathMakeRefWithOptions(Ljava/lang/String;ILcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;Lcom/sun/jna/ptr/ByteByReference;)I
.end method

.method public abstract FSPathMoveObjectToTrashSync(Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;I)I
.end method

.method public abstract FSRefMakePath(Lcom/sun/jna/platform/mac/MacFileUtils$FileManager$FSRef;[BI)I
.end method
