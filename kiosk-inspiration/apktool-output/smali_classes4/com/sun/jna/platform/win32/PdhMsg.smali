.class public interface abstract Lcom/sun/jna/platform/win32/PdhMsg;
.super Ljava/lang/Object;
.source "PdhMsg.java"


# static fields
.field public static final PDH_ACCESS_DENIED:I = -0x3ffff425

.field public static final PDH_ASYNC_QUERY_TIMEOUT:I = -0x7ffff825

.field public static final PDH_BINARY_LOG_CORRUPT:I = -0x3ffff409

.field public static final PDH_CALC_NEGATIVE_DENOMINATOR:I = -0x7ffff82a

.field public static final PDH_CALC_NEGATIVE_TIMEBASE:I = -0x7ffff829

.field public static final PDH_CALC_NEGATIVE_VALUE:I = -0x7ffff828

.field public static final PDH_CANNOT_CONNECT_MACHINE:I = -0x3ffff43d

.field public static final PDH_CANNOT_CONNECT_WMI_SERVER:I = -0x3ffff418

.field public static final PDH_CANNOT_READ_NAME_STRINGS:I = -0x3ffff438

.field public static final PDH_CANNOT_SET_DEFAULT_REALTIME_DATASOURCE:I = -0x7ffff824

.field public static final PDH_COUNTER_ALREADY_IN_QUERY:I = -0x3ffff40a

.field public static final PDH_CSTATUS_BAD_COUNTERNAME:I = -0x3ffff440

.field public static final PDH_CSTATUS_INVALID_DATA:I = -0x3ffff446

.field public static final PDH_CSTATUS_ITEM_NOT_VALIDATED:I = -0x7ffff82d

.field public static final PDH_CSTATUS_NEW_DATA:I = 0x1

.field public static final PDH_CSTATUS_NO_COUNTER:I = -0x3ffff447

.field public static final PDH_CSTATUS_NO_COUNTERNAME:I = -0x3ffff441

.field public static final PDH_CSTATUS_NO_INSTANCE:I = -0x7ffff82f

.field public static final PDH_CSTATUS_NO_MACHINE:I = -0x7ffff830

.field public static final PDH_CSTATUS_NO_OBJECT:I = -0x3ffff448

.field public static final PDH_CSTATUS_VALID_DATA:I = 0x0

.field public static final PDH_DATA_SOURCE_IS_LOG_FILE:I = -0x3ffff432

.field public static final PDH_DATA_SOURCE_IS_REAL_TIME:I = -0x3ffff431

.field public static final PDH_DIALOG_CANCELLED:I = -0x7ffff827

.field public static final PDH_END_OF_LOG_FILE:I = -0x7ffff826

.field public static final PDH_ENTRY_NOT_IN_LOG_FILE:I = -0x3ffff433

.field public static final PDH_FILE_ALREADY_EXISTS:I = -0x3ffff42e

.field public static final PDH_FILE_NOT_FOUND:I = -0x3ffff42f

.field public static final PDH_FUNCTION_NOT_FOUND:I = -0x3ffff442

.field public static final PDH_INCORRECT_APPEND_TIME:I = -0x3ffff405

.field public static final PDH_INSUFFICIENT_BUFFER:I = -0x3ffff43e

.field public static final PDH_INVALID_ARGUMENT:I = -0x3ffff443

.field public static final PDH_INVALID_BUFFER:I = -0x3ffff43f

.field public static final PDH_INVALID_DATA:I = -0x3ffff43a

.field public static final PDH_INVALID_DATASOURCE:I = -0x3ffff423

.field public static final PDH_INVALID_HANDLE:I = -0x3ffff444

.field public static final PDH_INVALID_INSTANCE:I = -0x3ffff43b

.field public static final PDH_INVALID_PATH:I = -0x3ffff43c

.field public static final PDH_INVALID_SQLDB:I = -0x3ffff422

.field public static final PDH_INVALID_SQL_LOG_FORMAT:I = -0x3ffff40b

.field public static final PDH_LOGSVC_NOT_OPENED:I = -0x3ffff427

.field public static final PDH_LOGSVC_QUERY_NOT_FOUND:I = -0x3ffff428

.field public static final PDH_LOG_FILE_CREATE_ERROR:I = -0x3ffff437

.field public static final PDH_LOG_FILE_OPEN_ERROR:I = -0x3ffff436

.field public static final PDH_LOG_FILE_TOO_SMALL:I = -0x3ffff424

.field public static final PDH_LOG_SAMPLE_TOO_SMALL:I = -0x3ffff408

.field public static final PDH_LOG_TYPE_NOT_FOUND:I = -0x3ffff435

.field public static final PDH_MEMORY_ALLOCATION_FAILURE:I = -0x3ffff445

.field public static final PDH_MORE_DATA:I = -0x7ffff82e

.field public static final PDH_NOT_IMPLEMENTED:I = -0x3ffff42d

.field public static final PDH_NO_COUNTERS:I = -0x3ffff421

.field public static final PDH_NO_DATA:I = -0x7ffff82b

.field public static final PDH_NO_DIALOG_DATA:I = -0x3ffff439

.field public static final PDH_NO_MORE_DATA:I = -0x3ffff434

.field public static final PDH_OS_EARLIER_VERSION:I = -0x3ffff406

.field public static final PDH_OS_LATER_VERSION:I = -0x3ffff407

.field public static final PDH_PLA_COLLECTION_ALREADY_RUNNING:I = -0x3ffff417

.field public static final PDH_PLA_COLLECTION_NOT_FOUND:I = -0x3ffff415

.field public static final PDH_PLA_ERROR_ALREADY_EXISTS:I = -0x3ffff412

.field public static final PDH_PLA_ERROR_FILEPATH:I = -0x3ffff410

.field public static final PDH_PLA_ERROR_NAME_TOO_LONG:I = -0x3ffff40c

.field public static final PDH_PLA_ERROR_NOSTART:I = -0x3ffff413

.field public static final PDH_PLA_ERROR_SCHEDULE_ELAPSED:I = -0x3ffff414

.field public static final PDH_PLA_ERROR_SCHEDULE_OVERLAP:I = -0x3ffff416

.field public static final PDH_PLA_ERROR_TYPE_MISMATCH:I = -0x3ffff411

.field public static final PDH_PLA_SERVICE_ERROR:I = -0x3ffff40f

.field public static final PDH_PLA_VALIDATION_ERROR:I = -0x3ffff40e

.field public static final PDH_PLA_VALIDATION_WARNING:I = -0x7ffff40d

.field public static final PDH_QUERY_PERF_DATA_TIMEOUT:I = -0x3ffff402

.field public static final PDH_RETRY:I = -0x7ffff82c

.field public static final PDH_SQL_ALLOCCON_FAILED:I = -0x3ffff41f

.field public static final PDH_SQL_ALLOC_FAILED:I = -0x3ffff420

.field public static final PDH_SQL_ALTER_DETAIL_FAILED:I = -0x3ffff403

.field public static final PDH_SQL_BIND_FAILED:I = -0x3ffff419

.field public static final PDH_SQL_CONNECT_FAILED:I = -0x3ffff41a

.field public static final PDH_SQL_EXEC_DIRECT_FAILED:I = -0x3ffff41e

.field public static final PDH_SQL_FETCH_FAILED:I = -0x3ffff41d

.field public static final PDH_SQL_ROWCOUNT_FAILED:I = -0x3ffff41c

.field public static final PDH_STRING_NOT_FOUND:I = -0x3ffff42c

.field public static final PDH_UNABLE_MAP_NAME_FILES:I = -0x7ffff42b

.field public static final PDH_UNABLE_READ_LOG_HEADER:I = -0x3ffff430

.field public static final PDH_UNKNOWN_LOGSVC_COMMAND:I = -0x3ffff429

.field public static final PDH_UNKNOWN_LOG_FORMAT:I = -0x3ffff42a

.field public static final PDH_UNMATCHED_APPEND_COUNTER:I = -0x3ffff404

.field public static final PDH_WBEM_ERROR:I = -0x3ffff426
