.class public interface abstract Lcom/sun/jna/platform/win32/PowrProf;
.super Ljava/lang/Object;
.source "PowrProf.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/PowrProf$POWER_INFORMATION_LEVEL;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/PowrProf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "PowrProf"

    const-class v1, Lcom/sun/jna/platform/win32/PowrProf;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/PowrProf;

    sput-object v0, Lcom/sun/jna/platform/win32/PowrProf;->INSTANCE:Lcom/sun/jna/platform/win32/PowrProf;

    return-void
.end method


# virtual methods
.method public abstract CallNtPowerInformation(ILcom/sun/jna/Pointer;ILcom/sun/jna/Pointer;I)I
.end method
