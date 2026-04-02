.class interface abstract Lcom/sun/jna/platform/mac/XAttr;
.super Ljava/lang/Object;
.source "XAttr.java"

# interfaces
.implements Lcom/sun/jna/Library;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/mac/XAttr;

.field public static final XATTR_CREATE:I = 0x2

.field public static final XATTR_FINDERINFO_NAME:Ljava/lang/String; = "com.apple.FinderInfo"

.field public static final XATTR_MAXNAMELEN:I = 0x7f

.field public static final XATTR_NODEFAULT:I = 0x10

.field public static final XATTR_NOFOLLOW:I = 0x1

.field public static final XATTR_NOSECURITY:I = 0x8

.field public static final XATTR_REPLACE:I = 0x4

.field public static final XATTR_RESOURCEFORK_NAME:Ljava/lang/String; = "com.apple.ResourceFork"

.field public static final XATTR_SHOWCOMPRESSION:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 37
    const-class v1, Lcom/sun/jna/platform/mac/XAttr;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/mac/XAttr;

    sput-object v0, Lcom/sun/jna/platform/mac/XAttr;->INSTANCE:Lcom/sun/jna/platform/mac/XAttr;

    return-void
.end method


# virtual methods
.method public abstract getxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;JII)J
.end method

.method public abstract listxattr(Ljava/lang/String;Lcom/sun/jna/Pointer;JI)J
.end method

.method public abstract removexattr(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract setxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;JII)I
.end method
