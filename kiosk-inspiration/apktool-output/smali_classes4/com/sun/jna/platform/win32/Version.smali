.class public interface abstract Lcom/sun/jna/platform/win32/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const-class v0, Lcom/sun/jna/platform/win32/Version;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "version"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Version;

    sput-object v0, Lcom/sun/jna/platform/win32/Version;->INSTANCE:Lcom/sun/jna/platform/win32/Version;

    return-void
.end method


# virtual methods
.method public abstract GetFileVersionInfo(Ljava/lang/String;IILcom/sun/jna/Pointer;)Z
.end method

.method public abstract GetFileVersionInfoSize(Ljava/lang/String;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract VerQueryValue(Lcom/sun/jna/Pointer;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method
