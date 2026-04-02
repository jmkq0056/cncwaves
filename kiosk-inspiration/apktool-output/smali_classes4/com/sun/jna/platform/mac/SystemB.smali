.class public interface abstract Lcom/sun/jna/platform/mac/SystemB;
.super Ljava/lang/Object;
.source "SystemB.java"

# interfaces
.implements Lcom/sun/jna/platform/unix/LibCAPI;
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/mac/SystemB$Timezone;,
        Lcom/sun/jna/platform/mac/SystemB$Timeval;,
        Lcom/sun/jna/platform/mac/SystemB$Group;,
        Lcom/sun/jna/platform/mac/SystemB$Passwd;,
        Lcom/sun/jna/platform/mac/SystemB$IFmsgHdr2;,
        Lcom/sun/jna/platform/mac/SystemB$IFdata64;,
        Lcom/sun/jna/platform/mac/SystemB$IFmsgHdr;,
        Lcom/sun/jna/platform/mac/SystemB$IFdata;,
        Lcom/sun/jna/platform/mac/SystemB$XswUsage;,
        Lcom/sun/jna/platform/mac/SystemB$Statfs;,
        Lcom/sun/jna/platform/mac/SystemB$VnodePathInfo;,
        Lcom/sun/jna/platform/mac/SystemB$VnodeInfoPath;,
        Lcom/sun/jna/platform/mac/SystemB$RUsageInfoV2;,
        Lcom/sun/jna/platform/mac/SystemB$VMMeter;,
        Lcom/sun/jna/platform/mac/SystemB$ProcTaskInfo;,
        Lcom/sun/jna/platform/mac/SystemB$ProcBsdInfo;,
        Lcom/sun/jna/platform/mac/SystemB$ProcTaskAllInfo;,
        Lcom/sun/jna/platform/mac/SystemB$VMStatistics64;,
        Lcom/sun/jna/platform/mac/SystemB$VMStatistics;,
        Lcom/sun/jna/platform/mac/SystemB$HostLoadInfo;,
        Lcom/sun/jna/platform/mac/SystemB$HostCpuLoadInfo;
    }
.end annotation


# static fields
.field public static final CPU_STATE_IDLE:I = 0x2

.field public static final CPU_STATE_MAX:I = 0x4

.field public static final CPU_STATE_NICE:I = 0x3

.field public static final CPU_STATE_SYSTEM:I = 0x1

.field public static final CPU_STATE_USER:I = 0x0

.field public static final HOST_CPU_LOAD_INFO:I = 0x3

.field public static final HOST_LOAD_INFO:I = 0x1

.field public static final HOST_VM_INFO:I = 0x2

.field public static final HOST_VM_INFO64:I = 0x4

.field public static final INSTANCE:Lcom/sun/jna/platform/mac/SystemB;

.field public static final INT_SIZE:I

.field public static final MAXCOMLEN:I = 0x10

.field public static final MAXPATHLEN:I = 0x400

.field public static final MFSTYPENAMELEN:I = 0x10

.field public static final MNAMELEN:I = 0x400

.field public static final MNT_DWAIT:I = 0x100

.field public static final MNT_NOWAIT:I = 0x10

.field public static final MNT_WAIT:I = 0x1

.field public static final PROCESSOR_BASIC_INFO:I = 0x1

.field public static final PROCESSOR_CPU_LOAD_INFO:I = 0x2

.field public static final PROC_ALL_PIDS:I = 0x1

.field public static final PROC_PIDPATHINFO_MAXSIZE:I = 0x1000

.field public static final PROC_PIDTASKALLINFO:I = 0x2

.field public static final PROC_PIDTASKINFO:I = 0x4

.field public static final PROC_PIDTBSDINFO:I = 0x3

.field public static final PROC_PIDVNODEPATHINFO:I = 0x9

.field public static final RUSAGE_INFO_V2:I = 0x2

.field public static final UINT64_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "System"

    const-class v1, Lcom/sun/jna/platform/mac/SystemB;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/mac/SystemB;

    sput-object v0, Lcom/sun/jna/platform/mac/SystemB;->INSTANCE:Lcom/sun/jna/platform/mac/SystemB;

    .line 62
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/sun/jna/platform/mac/SystemB;->UINT64_SIZE:I

    .line 63
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/sun/jna/platform/mac/SystemB;->INT_SIZE:I

    return-void
.end method


# virtual methods
.method public abstract getfsstat64([Lcom/sun/jna/platform/mac/SystemB$Statfs;II)I
.end method

.method public abstract getgrgid(I)Lcom/sun/jna/platform/mac/SystemB$Group;
.end method

.method public abstract getpid()I
.end method

.method public abstract getpwuid(I)Lcom/sun/jna/platform/mac/SystemB$Passwd;
.end method

.method public abstract gettimeofday(Lcom/sun/jna/platform/mac/SystemB$Timeval;Lcom/sun/jna/platform/mac/SystemB$Timezone;)I
.end method

.method public abstract host_page_size(ILcom/sun/jna/ptr/LongByReference;)I
.end method

.method public abstract host_processor_info(IILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract host_statistics(IILcom/sun/jna/Structure;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract host_statistics64(IILcom/sun/jna/Structure;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract mach_host_self()I
.end method

.method public abstract mach_port_deallocate(II)I
.end method

.method public abstract mach_task_self()I
.end method

.method public abstract proc_listpids(II[II)I
.end method

.method public abstract proc_pid_rusage(IILcom/sun/jna/platform/mac/SystemB$RUsageInfoV2;)I
.end method

.method public abstract proc_pidinfo(IIJLcom/sun/jna/Structure;I)I
.end method

.method public abstract proc_pidpath(ILcom/sun/jna/Pointer;I)I
.end method

.method public abstract sysctl([IILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;I)I
.end method

.method public abstract sysctlbyname(Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;I)I
.end method

.method public abstract sysctlnametomib(Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method
