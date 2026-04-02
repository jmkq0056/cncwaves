.class public interface abstract Lcom/sun/jna/platform/unix/Reboot;
.super Ljava/lang/Object;
.source "Reboot.java"


# static fields
.field public static final RB_AUTOBOOT:I = 0x1234567

.field public static final RB_DISABLE_CAD:I = 0x0

.field public static final RB_ENABLE_CAD:I = -0x76543211

.field public static final RB_HALT_SYSTEM:I = -0x3210fedd

.field public static final RB_KEXEC:I = 0x45584543

.field public static final RB_POWER_OFF:I = 0x4321fedc

.field public static final RB_SW_SUSPEND:I = -0x2fff031e


# virtual methods
.method public abstract reboot(I)I
.end method
