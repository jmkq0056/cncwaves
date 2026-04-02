.class Lcom/sun/jna/platform/win32/Dxva2$1$1;
.super Lcom/sun/jna/DefaultTypeMapper;
.source "Dxva2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Dxva2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/Dxva2$1;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/Dxva2$1;)V
    .locals 2

    .line 55
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Dxva2$1$1;->this$0:Lcom/sun/jna/platform/win32/Dxva2$1;

    invoke-direct {p0}, Lcom/sun/jna/DefaultTypeMapper;-><init>()V

    .line 57
    const-class p1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_POSITION_TYPE;

    new-instance v0, Lcom/sun/jna/platform/EnumConverter;

    const-class v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_POSITION_TYPE;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Dxva2$1$1;->addTypeConverter(Ljava/lang/Class;Lcom/sun/jna/TypeConverter;)V

    .line 58
    const-class p1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    new-instance v0, Lcom/sun/jna/platform/EnumConverter;

    const-class v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Dxva2$1$1;->addTypeConverter(Ljava/lang/Class;Lcom/sun/jna/TypeConverter;)V

    .line 59
    const-class p1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    new-instance v0, Lcom/sun/jna/platform/EnumConverter;

    const-class v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Dxva2$1$1;->addTypeConverter(Ljava/lang/Class;Lcom/sun/jna/TypeConverter;)V

    .line 60
    const-class p1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_DRIVE_TYPE;

    new-instance v0, Lcom/sun/jna/platform/EnumConverter;

    const-class v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_DRIVE_TYPE;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Dxva2$1$1;->addTypeConverter(Ljava/lang/Class;Lcom/sun/jna/TypeConverter;)V

    return-void
.end method
