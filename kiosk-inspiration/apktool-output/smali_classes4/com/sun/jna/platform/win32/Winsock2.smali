.class public interface abstract Lcom/sun/jna/platform/win32/Winsock2;
.super Ljava/lang/Object;
.source "Winsock2.java"

# interfaces
.implements Lcom/sun/jna/Library;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Winsock2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const-class v0, Lcom/sun/jna/platform/win32/Winsock2;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->ASCII_OPTIONS:Ljava/util/Map;

    const-string v2, "ws2_32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Winsock2;

    sput-object v0, Lcom/sun/jna/platform/win32/Winsock2;->INSTANCE:Lcom/sun/jna/platform/win32/Winsock2;

    return-void
.end method


# virtual methods
.method public abstract gethostname([BI)I
.end method
