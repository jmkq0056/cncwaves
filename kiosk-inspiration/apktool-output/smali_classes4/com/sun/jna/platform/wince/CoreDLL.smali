.class public interface abstract Lcom/sun/jna/platform/wince/CoreDLL;
.super Ljava/lang/Object;
.source "CoreDLL.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinNT;
.implements Lcom/sun/jna/Library;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/wince/CoreDLL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-class v0, Lcom/sun/jna/platform/wince/CoreDLL;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->UNICODE_OPTIONS:Ljava/util/Map;

    const-string v2, "coredll"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/wince/CoreDLL;

    sput-object v0, Lcom/sun/jna/platform/wince/CoreDLL;->INSTANCE:Lcom/sun/jna/platform/wince/CoreDLL;

    return-void
.end method
