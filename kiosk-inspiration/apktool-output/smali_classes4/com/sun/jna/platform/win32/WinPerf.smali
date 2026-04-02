.class public interface abstract Lcom/sun/jna/platform/win32/WinPerf;
.super Ljava/lang/Object;
.source "WinPerf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinPerf$PERF_COUNTER_BLOCK;,
        Lcom/sun/jna/platform/win32/WinPerf$PERF_COUNTER_DEFINITION;,
        Lcom/sun/jna/platform/win32/WinPerf$PERF_OBJECT_TYPE;,
        Lcom/sun/jna/platform/win32/WinPerf$PERF_INSTANCE_DEFINITION;,
        Lcom/sun/jna/platform/win32/WinPerf$PERF_DATA_BLOCK;
    }
.end annotation


# static fields
.field public static final PERF_100NSEC_MULTI_TIMER:I = 0x22510500

.field public static final PERF_100NSEC_MULTI_TIMER_INV:I = 0x23510500

.field public static final PERF_100NSEC_TIMER:I = 0x20510500

.field public static final PERF_100NSEC_TIMER_INV:I = 0x21510500

.field public static final PERF_AVERAGE_BASE:I = 0x40030402

.field public static final PERF_AVERAGE_BULK:I = 0x40020500

.field public static final PERF_AVERAGE_TIMER:I = 0x30020400

.field public static final PERF_COUNTER_100NS_QUEUELEN_TYPE:I = 0x550500

.field public static final PERF_COUNTER_BASE:I = 0x30000

.field public static final PERF_COUNTER_BULK_COUNT:I = 0x10410500

.field public static final PERF_COUNTER_COUNTER:I = 0x10410400

.field public static final PERF_COUNTER_DELTA:I = 0x400400

.field public static final PERF_COUNTER_ELAPSED:I = 0x40000

.field public static final PERF_COUNTER_FRACTION:I = 0x20000

.field public static final PERF_COUNTER_HISTOGRAM:I = 0x60000

.field public static final PERF_COUNTER_HISTOGRAM_TYPE:I = -0x80000000

.field public static final PERF_COUNTER_LARGE_DELTA:I = 0x400500

.field public static final PERF_COUNTER_LARGE_QUEUELEN_TYPE:I = 0x450500

.field public static final PERF_COUNTER_LARGE_RAWCOUNT:I = 0x10100

.field public static final PERF_COUNTER_LARGE_RAWCOUNT_HEX:I = 0x100

.field public static final PERF_COUNTER_MULTI_BASE:I = 0x42030500

.field public static final PERF_COUNTER_MULTI_TIMER:I = 0x22410500

.field public static final PERF_COUNTER_MULTI_TIMER_INV:I = 0x23410500

.field public static final PERF_COUNTER_NODATA:I = 0x40000200

.field public static final PERF_COUNTER_OBJ_TIME_QUEUELEN_TYPE:I = 0x650500

.field public static final PERF_COUNTER_PRECISION:I = 0x70000

.field public static final PERF_COUNTER_QUEUELEN:I = 0x50000

.field public static final PERF_COUNTER_QUEUELEN_TYPE:I = 0x450400

.field public static final PERF_COUNTER_RATE:I = 0x10000

.field public static final PERF_COUNTER_RAWCOUNT:I = 0x10000

.field public static final PERF_COUNTER_RAWCOUNT_HEX:I = 0x0

.field public static final PERF_COUNTER_TEXT:I = 0xb00

.field public static final PERF_COUNTER_TIMER:I = 0x20410500

.field public static final PERF_COUNTER_TIMER_INV:I = 0x21410500

.field public static final PERF_COUNTER_VALUE:I = 0x0

.field public static final PERF_DELTA_BASE:I = 0x800000

.field public static final PERF_DELTA_COUNTER:I = 0x400000

.field public static final PERF_DETAIL_ADVANCED:I = 0xc8

.field public static final PERF_DETAIL_EXPERT:I = 0x12c

.field public static final PERF_DETAIL_NOVICE:I = 0x64

.field public static final PERF_DETAIL_WIZARD:I = 0x190

.field public static final PERF_DISPLAY_NOSHOW:I = 0x40000000

.field public static final PERF_DISPLAY_NO_SUFFIX:I = 0x0

.field public static final PERF_DISPLAY_PERCENT:I = 0x20000000

.field public static final PERF_DISPLAY_PER_SEC:I = 0x10000000

.field public static final PERF_DISPLAY_SECONDS:I = 0x30000000

.field public static final PERF_ELAPSED_TIME:I = 0x30240500

.field public static final PERF_INVERSE_COUNTER:I = 0x1000000

.field public static final PERF_LARGE_RAW_BASE:I = 0x40030500

.field public static final PERF_LARGE_RAW_FRACTION:I = 0x20020500

.field public static final PERF_MULTI_COUNTER:I = 0x2000000

.field public static final PERF_NO_INSTANCES:I = -0x1

.field public static final PERF_NO_UNIQUE_ID:I = -0x1

.field public static final PERF_NUMBER_DECIMAL:I = 0x10000

.field public static final PERF_NUMBER_DEC_1000:I = 0x20000

.field public static final PERF_NUMBER_HEX:I = 0x0

.field public static final PERF_OBJECT_TIMER:I = 0x200000

.field public static final PERF_OBJ_TIME_TIMER:I = 0x20610500

.field public static final PERF_PRECISION_100NS_TIMER:I = 0x20570500

.field public static final PERF_PRECISION_OBJECT_TIMER:I = 0x20670500

.field public static final PERF_PRECISION_SYSTEM_TIMER:I = 0x20470500

.field public static final PERF_PRECISION_TIMESTAMP:I = 0x40030500

.field public static final PERF_QUERY_COSTLY:I = -0x7ffffffe

.field public static final PERF_QUERY_GLOBAL:I = -0x7fffffff

.field public static final PERF_QUERY_OBJECTS:I = -0x80000000

.field public static final PERF_RAW_BASE:I = 0x40030403

.field public static final PERF_RAW_FRACTION:I = 0x20020400

.field public static final PERF_SAMPLE_BASE:I = 0x40030401

.field public static final PERF_SAMPLE_COUNTER:I = 0x410400

.field public static final PERF_SAMPLE_FRACTION:I = 0x20c20400

.field public static final PERF_SIZE_DWORD:I = 0x0

.field public static final PERF_SIZE_LARGE:I = 0x100

.field public static final PERF_SIZE_VARIABLE_LEN:I = 0x300

.field public static final PERF_SIZE_ZERO:I = 0x200

.field public static final PERF_TEXT_ASCII:I = 0x10000

.field public static final PERF_TEXT_UNICODE:I = 0x0

.field public static final PERF_TIMER_100NS:I = 0x100000

.field public static final PERF_TIMER_TICK:I = 0x0

.field public static final PERF_TYPE_COUNTER:I = 0x400

.field public static final PERF_TYPE_NUMBER:I = 0x0

.field public static final PERF_TYPE_TEXT:I = 0x800

.field public static final PERF_TYPE_ZERO:I = 0xc00
