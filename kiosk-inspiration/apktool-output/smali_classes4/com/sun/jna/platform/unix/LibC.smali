.class public interface abstract Lcom/sun/jna/platform/unix/LibC;
.super Ljava/lang/Object;
.source "LibC.java"

# interfaces
.implements Lcom/sun/jna/platform/unix/LibCAPI;
.implements Lcom/sun/jna/Library;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/unix/LibC;

.field public static final NAME:Ljava/lang/String; = "c"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "c"

    const-class v1, Lcom/sun/jna/platform/unix/LibC;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/unix/LibC;

    sput-object v0, Lcom/sun/jna/platform/unix/LibC;->INSTANCE:Lcom/sun/jna/platform/unix/LibC;

    return-void
.end method
