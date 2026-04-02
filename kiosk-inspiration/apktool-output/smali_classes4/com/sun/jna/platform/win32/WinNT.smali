.class public interface abstract Lcom/sun/jna/platform/win32/WinNT;
.super Ljava/lang/Object;
.source "WinNT.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinError;
.implements Lcom/sun/jna/platform/win32/WinDef;
.implements Lcom/sun/jna/platform/win32/WinBase;
.implements Lcom/sun/jna/platform/win32/BaseTSD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinNT$IO_COUNTERS;,
        Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;,
        Lcom/sun/jna/platform/win32/WinNT$SECURITY_QUALITY_OF_SERVICE;,
        Lcom/sun/jna/platform/win32/WinNT$MEMORY_BASIC_INFORMATION;,
        Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_CAPABILITIES;,
        Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_POLICY;,
        Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_LEVEL;,
        Lcom/sun/jna/platform/win32/WinNT$POWER_ACTION_POLICY;,
        Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_INFORMATION;,
        Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_POWER_INFORMATION;,
        Lcom/sun/jna/platform/win32/WinNT$BATTERY_REPORTING_SCALE;,
        Lcom/sun/jna/platform/win32/WinNT$SYSTEM_BATTERY_STATE;,
        Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_STATE;,
        Lcom/sun/jna/platform/win32/WinNT$POWER_ACTION;,
        Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_CACHE_TYPE;,
        Lcom/sun/jna/platform/win32/WinNT$CACHE_DESCRIPTOR;,
        Lcom/sun/jna/platform/win32/WinNT$LOGICAL_PROCESSOR_RELATIONSHIP;,
        Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_GROUP_INFO;,
        Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;,
        Lcom/sun/jna/platform/win32/WinNT$GROUP_RELATIONSHIP;,
        Lcom/sun/jna/platform/win32/WinNT$CACHE_RELATIONSHIP;,
        Lcom/sun/jna/platform/win32/WinNT$NUMA_NODE_RELATIONSHIP;,
        Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;,
        Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;,
        Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;,
        Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;,
        Lcom/sun/jna/platform/win32/WinNT$OVERLAPPED_COMPLETION_ROUTINE;,
        Lcom/sun/jna/platform/win32/WinNT$ACCESS_DENIED_ACE;,
        Lcom/sun/jna/platform/win32/WinNT$ACCESS_ALLOWED_ACE;,
        Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;,
        Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;,
        Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;,
        Lcom/sun/jna/platform/win32/WinNT$PACLByReference;,
        Lcom/sun/jna/platform/win32/WinNT$ACL;,
        Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;,
        Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;,
        Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;,
        Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFO;,
        Lcom/sun/jna/platform/win32/WinNT$WELL_KNOWN_SID_TYPE;,
        Lcom/sun/jna/platform/win32/WinNT$HRESULT;,
        Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;,
        Lcom/sun/jna/platform/win32/WinNT$HANDLE;,
        Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;,
        Lcom/sun/jna/platform/win32/WinNT$LUID;,
        Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;,
        Lcom/sun/jna/platform/win32/WinNT$SID_NAME_USE;,
        Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;,
        Lcom/sun/jna/platform/win32/WinNT$PRIVILEGE_SET;,
        Lcom/sun/jna/platform/win32/WinNT$TOKEN_GROUPS;,
        Lcom/sun/jna/platform/win32/WinNT$TOKEN_USER;,
        Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;,
        Lcom/sun/jna/platform/win32/WinNT$PSID;,
        Lcom/sun/jna/platform/win32/WinNT$TOKEN_OWNER;,
        Lcom/sun/jna/platform/win32/WinNT$SID_AND_ATTRIBUTES;,
        Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;,
        Lcom/sun/jna/platform/win32/WinNT$TOKEN_TYPE;,
        Lcom/sun/jna/platform/win32/WinNT$TOKEN_INFORMATION_CLASS;,
        Lcom/sun/jna/platform/win32/WinNT$SECURITY_IMPERSONATION_LEVEL;
    }
.end annotation


# static fields
.field public static final ACCESS_ALLOWED_ACE_TYPE:B = 0x0t

.field public static final ACCESS_ALLOWED_CALLBACK_ACE_TYPE:B = 0x9t

.field public static final ACCESS_ALLOWED_CALLBACK_OBJECT_ACE_TYPE:B = 0xbt

.field public static final ACCESS_ALLOWED_COMPOUND_ACE_TYPE:B = 0x4t

.field public static final ACCESS_ALLOWED_OBJECT_ACE_TYPE:B = 0x5t

.field public static final ACCESS_DENIED_ACE_TYPE:B = 0x1t

.field public static final ACCESS_DENIED_CALLBACK_ACE_TYPE:B = 0xat

.field public static final ACCESS_DENIED_CALLBACK_OBJECT_ACE_TYPE:B = 0xct

.field public static final ACCESS_DENIED_OBJECT_ACE_TYPE:B = 0x6t

.field public static final ACCESS_SYSTEM_SECURITY:I = 0x1000000

.field public static final ACL_REVISION:I = 0x2

.field public static final ACL_REVISION1:I = 0x1

.field public static final ACL_REVISION2:I = 0x2

.field public static final ACL_REVISION3:I = 0x3

.field public static final ACL_REVISION4:I = 0x4

.field public static final ACL_REVISION_DS:I = 0x4

.field public static final BOOLEAN_FALSE:B = 0x0t

.field public static final BOOLEAN_TRUE:B = 0x1t

.field public static final CACHE_FULLY_ASSOCIATIVE:B = -0x1t

.field public static final COMPRESSION_ENGINE_HIBER:I = 0x200

.field public static final COMPRESSION_ENGINE_MAXIMUM:I = 0x100

.field public static final COMPRESSION_ENGINE_STANDARD:I = 0x0

.field public static final COMPRESSION_FORMAT_DEFAULT:I = 0x1

.field public static final COMPRESSION_FORMAT_LZNT1:I = 0x2

.field public static final COMPRESSION_FORMAT_NONE:I = 0x0

.field public static final COMPRESSION_FORMAT_XPRESS:I = 0x3

.field public static final COMPRESSION_FORMAT_XPRESS_HUFF:I = 0x4

.field public static final CONTAINER_INHERIT_ACE:B = 0x2t

.field public static final CREATE_ALWAYS:I = 0x2

.field public static final CREATE_NEW:I = 0x1

.field public static final DACL_SECURITY_INFORMATION:I = 0x4

.field public static final DDD_EXACT_MATCH_ON_REMOVE:I = 0x4

.field public static final DDD_NO_BROADCAST_SYSTEM:I = 0x8

.field public static final DDD_RAW_TARGET_PATH:I = 0x1

.field public static final DDD_REMOVE_DEFINITION:I = 0x2

.field public static final DELETE:I = 0x10000

.field public static final EVENTLOG_AUDIT_FAILURE:I = 0x10

.field public static final EVENTLOG_AUDIT_SUCCESS:I = 0x8

.field public static final EVENTLOG_BACKWARDS_READ:I = 0x8

.field public static final EVENTLOG_ERROR_TYPE:I = 0x1

.field public static final EVENTLOG_FORWARDS_READ:I = 0x4

.field public static final EVENTLOG_INFORMATION_TYPE:I = 0x4

.field public static final EVENTLOG_SEEK_READ:I = 0x2

.field public static final EVENTLOG_SEQUENTIAL_READ:I = 0x1

.field public static final EVENTLOG_SUCCESS:I = 0x0

.field public static final EVENTLOG_WARNING_TYPE:I = 0x2

.field public static final EVENT_ALL_ACCESS:I = 0x1f0003

.field public static final EVENT_MODIFY_STATE:I = 0x2

.field public static final FILE_ACTION_ADDED:I = 0x1

.field public static final FILE_ACTION_MODIFIED:I = 0x3

.field public static final FILE_ACTION_REMOVED:I = 0x2

.field public static final FILE_ACTION_RENAMED_NEW_NAME:I = 0x5

.field public static final FILE_ACTION_RENAMED_OLD_NAME:I = 0x4

.field public static final FILE_ADD_FILE:I = 0x2

.field public static final FILE_ADD_SUBDIRECTORY:I = 0x4

.field public static final FILE_ALL_ACCESS:I = 0x1f01ff

.field public static final FILE_APPEND_DATA:I = 0x4

.field public static final FILE_ATTRIBUTE_ARCHIVE:I = 0x20

.field public static final FILE_ATTRIBUTE_COMPRESSED:I = 0x800

.field public static final FILE_ATTRIBUTE_DEVICE:I = 0x40

.field public static final FILE_ATTRIBUTE_DIRECTORY:I = 0x10

.field public static final FILE_ATTRIBUTE_ENCRYPTED:I = 0x4000

.field public static final FILE_ATTRIBUTE_HIDDEN:I = 0x2

.field public static final FILE_ATTRIBUTE_NORMAL:I = 0x80

.field public static final FILE_ATTRIBUTE_NOT_CONTENT_INDEXED:I = 0x2000

.field public static final FILE_ATTRIBUTE_OFFLINE:I = 0x1000

.field public static final FILE_ATTRIBUTE_READONLY:I = 0x1

.field public static final FILE_ATTRIBUTE_REPARSE_POINT:I = 0x400

.field public static final FILE_ATTRIBUTE_SPARSE_FILE:I = 0x200

.field public static final FILE_ATTRIBUTE_SYSTEM:I = 0x4

.field public static final FILE_ATTRIBUTE_TEMPORARY:I = 0x100

.field public static final FILE_ATTRIBUTE_VIRTUAL:I = 0x10000

.field public static final FILE_CASE_PRESERVED_NAMES:I = 0x2

.field public static final FILE_CASE_SENSITIVE_SEARCH:I = 0x1

.field public static final FILE_CREATE_PIPE_INSTANCE:I = 0x4

.field public static final FILE_DELETE_CHILD:I = 0x40

.field public static final FILE_EXECUTE:I = 0x20

.field public static final FILE_FILE_COMPRESSION:I = 0x10

.field public static final FILE_FLAG_BACKUP_SEMANTICS:I = 0x2000000

.field public static final FILE_FLAG_DELETE_ON_CLOSE:I = 0x4000000

.field public static final FILE_FLAG_NO_BUFFERING:I = 0x20000000

.field public static final FILE_FLAG_OPEN_NO_RECALL:I = 0x100000

.field public static final FILE_FLAG_OPEN_REPARSE_POINT:I = 0x200000

.field public static final FILE_FLAG_OVERLAPPED:I = 0x40000000

.field public static final FILE_FLAG_POSIX_SEMANTICS:I = 0x1000000

.field public static final FILE_FLAG_RANDOM_ACCESS:I = 0x10000000

.field public static final FILE_FLAG_SEQUENTIAL_SCAN:I = 0x8000000

.field public static final FILE_FLAG_WRITE_THROUGH:I = -0x80000000

.field public static final FILE_GENERIC_EXECUTE:I = 0x1200a0

.field public static final FILE_GENERIC_READ:I = 0x120089

.field public static final FILE_GENERIC_WRITE:I = 0x120116

.field public static final FILE_LIST_DIRECTORY:I = 0x1

.field public static final FILE_NAMED_STREAMS:I = 0x40000

.field public static final FILE_NOTIFY_CHANGE_ATTRIBUTES:I = 0x4

.field public static final FILE_NOTIFY_CHANGE_CREATION:I = 0x40

.field public static final FILE_NOTIFY_CHANGE_DIR_NAME:I = 0x2

.field public static final FILE_NOTIFY_CHANGE_FILE_NAME:I = 0x1

.field public static final FILE_NOTIFY_CHANGE_LAST_ACCESS:I = 0x20

.field public static final FILE_NOTIFY_CHANGE_LAST_WRITE:I = 0x10

.field public static final FILE_NOTIFY_CHANGE_NAME:I = 0x3

.field public static final FILE_NOTIFY_CHANGE_SECURITY:I = 0x100

.field public static final FILE_NOTIFY_CHANGE_SIZE:I = 0x8

.field public static final FILE_PERSISTENT_ACLS:I = 0x8

.field public static final FILE_READ_ATTRIBUTES:I = 0x80

.field public static final FILE_READ_DATA:I = 0x1

.field public static final FILE_READ_EA:I = 0x8

.field public static final FILE_READ_ONLY_VOLUME:I = 0x80000

.field public static final FILE_SEQUENTIAL_WRITE_ONCE:I = 0x100000

.field public static final FILE_SHARE_DELETE:I = 0x4

.field public static final FILE_SHARE_READ:I = 0x1

.field public static final FILE_SHARE_WRITE:I = 0x2

.field public static final FILE_SUPPORTS_ENCRYPTION:I = 0x20000

.field public static final FILE_SUPPORTS_EXTENDED_ATTRIBUTES:I = 0x800000

.field public static final FILE_SUPPORTS_HARD_LINKS:I = 0x400000

.field public static final FILE_SUPPORTS_OBJECT_IDS:I = 0x10000

.field public static final FILE_SUPPORTS_OPEN_BY_FILE_ID:I = 0x1000000

.field public static final FILE_SUPPORTS_REMOTE_STORAGE:I = 0x100

.field public static final FILE_SUPPORTS_REPARSE_POINTS:I = 0x80

.field public static final FILE_SUPPORTS_SPARSE_FILES:I = 0x40

.field public static final FILE_SUPPORTS_TRANSACTIONS:I = 0x200000

.field public static final FILE_SUPPORTS_USN_JOURNAL:I = 0x2000000

.field public static final FILE_TRAVERSE:I = 0x20

.field public static final FILE_TYPE_CHAR:I = 0x2

.field public static final FILE_TYPE_DISK:I = 0x1

.field public static final FILE_TYPE_PIPE:I = 0x3

.field public static final FILE_TYPE_REMOTE:I = 0x8000

.field public static final FILE_TYPE_UNKNOWN:I = 0x0

.field public static final FILE_UNICODE_ON_DISK:I = 0x4

.field public static final FILE_VOLUME_IS_COMPRESSED:I = 0x8000

.field public static final FILE_VOLUME_QUOTAS:I = 0x20

.field public static final FILE_WRITE_ATTRIBUTES:I = 0x100

.field public static final FILE_WRITE_DATA:I = 0x2

.field public static final FILE_WRITE_EA:I = 0x10

.field public static final GENERIC_ALL:I = 0x10000000

.field public static final GENERIC_EXECUTE:I = 0x20000000

.field public static final GENERIC_READ:I = -0x80000000

.field public static final GENERIC_WRITE:I = 0x40000000

.field public static final GROUP_SECURITY_INFORMATION:I = 0x2

.field public static final INHERITED_ACE:B = 0x10t

.field public static final INHERIT_ONLY_ACE:B = 0x8t

.field public static final IO_REPARSE_TAG_CSV:I = -0x7ffffff7

.field public static final IO_REPARSE_TAG_DFS:I = -0x7ffffff6

.field public static final IO_REPARSE_TAG_DFSR:I = -0x7fffffee

.field public static final IO_REPARSE_TAG_HSM:I = -0x3ffffffc

.field public static final IO_REPARSE_TAG_HSM2:I = -0x7ffffffa

.field public static final IO_REPARSE_TAG_MOUNT_POINT:I = -0x5ffffffd

.field public static final IO_REPARSE_TAG_SIS:I = -0x7ffffff9

.field public static final IO_REPARSE_TAG_SYMLINK:I = -0x5ffffff4

.field public static final IO_REPARSE_TAG_WIM:I = -0x7ffffff8

.field public static final KEY_ALL_ACCESS:I = 0xf003f

.field public static final KEY_CREATE_LINK:I = 0x20

.field public static final KEY_CREATE_SUB_KEY:I = 0x4

.field public static final KEY_ENUMERATE_SUB_KEYS:I = 0x8

.field public static final KEY_EXECUTE:I = 0x20019

.field public static final KEY_NOTIFY:I = 0x10

.field public static final KEY_QUERY_VALUE:I = 0x1

.field public static final KEY_READ:I = 0x20019

.field public static final KEY_SET_VALUE:I = 0x2

.field public static final KEY_WOW64_32KEY:I = 0x200

.field public static final KEY_WOW64_64KEY:I = 0x100

.field public static final KEY_WOW64_RES:I = 0x300

.field public static final KEY_WRITE:I = 0x20006

.field public static final LABEL_SECURITY_INFORMATION:I = 0x10

.field public static final LANG_AFRIKAANS:I = 0x36

.field public static final LANG_ALBANIAN:I = 0x1c

.field public static final LANG_ARABIC:I = 0x1

.field public static final LANG_ARMENIAN:I = 0x2b

.field public static final LANG_ASSAMESE:I = 0x4d

.field public static final LANG_AZERI:I = 0x2c

.field public static final LANG_BASQUE:I = 0x2d

.field public static final LANG_BELARUSIAN:I = 0x23

.field public static final LANG_BENGALI:I = 0x45

.field public static final LANG_BULGARIAN:I = 0x2

.field public static final LANG_CATALAN:I = 0x3

.field public static final LANG_CHINESE:I = 0x4

.field public static final LANG_CROATIAN:I = 0x1a

.field public static final LANG_CZECH:I = 0x5

.field public static final LANG_DANISH:I = 0x6

.field public static final LANG_DIVEHI:I = 0x65

.field public static final LANG_DUTCH:I = 0x13

.field public static final LANG_ENGLISH:I = 0x9

.field public static final LANG_ESTONIAN:I = 0x25

.field public static final LANG_FAEROESE:I = 0x38

.field public static final LANG_FARSI:I = 0x29

.field public static final LANG_FINNISH:I = 0xb

.field public static final LANG_FRENCH:I = 0xc

.field public static final LANG_GALICIAN:I = 0x56

.field public static final LANG_GEORGIAN:I = 0x37

.field public static final LANG_GERMAN:I = 0x7

.field public static final LANG_GREEK:I = 0x8

.field public static final LANG_GUJARATI:I = 0x47

.field public static final LANG_HEBREW:I = 0xd

.field public static final LANG_HINDI:I = 0x39

.field public static final LANG_HUNGARIAN:I = 0xe

.field public static final LANG_ICELANDIC:I = 0xf

.field public static final LANG_INDONESIAN:I = 0x21

.field public static final LANG_INVARIANT:I = 0x7f

.field public static final LANG_ITALIAN:I = 0x10

.field public static final LANG_JAPANESE:I = 0x11

.field public static final LANG_KANNADA:I = 0x4b

.field public static final LANG_KASHMIRI:I = 0x60

.field public static final LANG_KAZAK:I = 0x3f

.field public static final LANG_KONKANI:I = 0x57

.field public static final LANG_KOREAN:I = 0x12

.field public static final LANG_KYRGYZ:I = 0x40

.field public static final LANG_LATVIAN:I = 0x26

.field public static final LANG_LITHUANIAN:I = 0x27

.field public static final LANG_MACEDONIAN:I = 0x2f

.field public static final LANG_MALAY:I = 0x3e

.field public static final LANG_MALAYALAM:I = 0x4c

.field public static final LANG_MANIPURI:I = 0x58

.field public static final LANG_MARATHI:I = 0x4e

.field public static final LANG_MONGOLIAN:I = 0x50

.field public static final LANG_NEPALI:I = 0x61

.field public static final LANG_NEUTRAL:I = 0x0

.field public static final LANG_NORWEGIAN:I = 0x14

.field public static final LANG_ORIYA:I = 0x48

.field public static final LANG_POLISH:I = 0x15

.field public static final LANG_PORTUGUESE:I = 0x16

.field public static final LANG_PUNJABI:I = 0x46

.field public static final LANG_ROMANIAN:I = 0x18

.field public static final LANG_RUSSIAN:I = 0x19

.field public static final LANG_SANSKRIT:I = 0x4f

.field public static final LANG_SERBIAN:I = 0x1a

.field public static final LANG_SINDHI:I = 0x59

.field public static final LANG_SLOVAK:I = 0x1b

.field public static final LANG_SLOVENIAN:I = 0x24

.field public static final LANG_SPANISH:I = 0xa

.field public static final LANG_SWAHILI:I = 0x41

.field public static final LANG_SWEDISH:I = 0x1d

.field public static final LANG_SYRIAC:I = 0x5a

.field public static final LANG_SYSTEM_DEFAULT:I

.field public static final LANG_TAMIL:I = 0x49

.field public static final LANG_TATAR:I = 0x44

.field public static final LANG_TELUGU:I = 0x4a

.field public static final LANG_THAI:I = 0x1e

.field public static final LANG_TURKISH:I = 0x1f

.field public static final LANG_UKRAINIAN:I = 0x22

.field public static final LANG_URDU:I = 0x20

.field public static final LANG_USER_DEFAULT:I

.field public static final LANG_UZBEK:I = 0x43

.field public static final LANG_VIETNAMESE:I = 0x2a

.field public static final LOCALE_INVARIANT:Lcom/sun/jna/platform/win32/WinDef$LCID;

.field public static final LOCALE_NEUTRAL:Lcom/sun/jna/platform/win32/WinDef$LCID;

.field public static final LOCALE_SYSTEM_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

.field public static final LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

.field public static final LTP_PC_SMT:I = 0x1

.field public static final MAXBYTE:I = 0xff

.field public static final MAXCHAR:I = 0x7f

.field public static final MAXDWORD:I = -0x1

.field public static final MAXLONG:I = 0x7fffffff

.field public static final MAXSHORT:I = 0x7fff

.field public static final MAXWORD:I = 0xffff

.field public static final MAX_ACL_REVISION:I = 0x4

.field public static final MEM_COALESCE_PLACEHOLDERS:I = 0x1

.field public static final MEM_COMMIT:I = 0x1000

.field public static final MEM_DECOMMIT:I = 0x4000

.field public static final MEM_FREE:I = 0x10000

.field public static final MEM_IMAGE:I = 0x1000000

.field public static final MEM_LARGE_PAGES:I = 0x20000000

.field public static final MEM_MAPPED:I = 0x40000

.field public static final MEM_PHYSICAL:I = 0x400000

.field public static final MEM_PRESERVE_PLACEHOLDER:I = 0x2

.field public static final MEM_PRIVATE:I = 0x20000

.field public static final MEM_RELEASE:I = 0x8000

.field public static final MEM_RESERVE:I = 0x2000

.field public static final MEM_RESET:I = 0x80000

.field public static final MEM_RESET_UNDO:I = 0x1000000

.field public static final MEM_TOP_DOWN:I = 0x100000

.field public static final MINCHAR:I = 0x80

.field public static final MINLONG:I = -0x80000000

.field public static final MINSHORT:I = 0x8000

.field public static final MIN_ACL_REVISION:I = 0x2

.field public static final MUTANT_ALL_ACCESS:I = 0x1f0001

.field public static final MUTANT_QUERY_STATE:I = 0x1

.field public static final NLS_VALID_LOCALE_MASK:I = 0xfffff

.field public static final NO_PROPAGATE_INHERIT_ACE:B = 0x4t

.field public static final NUM_DISCHARGE_POLICIES:I = 0x4

.field public static final OBJECT_INHERIT_ACE:B = 0x1t

.field public static final OPEN_ALWAYS:I = 0x4

.field public static final OPEN_EXISTING:I = 0x3

.field public static final OWNER_SECURITY_INFORMATION:I = 0x1

.field public static final PAGE_EXECUTE:I = 0x10

.field public static final PAGE_EXECUTE_READ:I = 0x20

.field public static final PAGE_EXECUTE_READWRITE:I = 0x40

.field public static final PAGE_GUARD:I = 0x100

.field public static final PAGE_NOACCESS:I = 0x1

.field public static final PAGE_READONLY:I = 0x2

.field public static final PAGE_READWRITE:I = 0x4

.field public static final PAGE_WRITECOPY:I = 0x8

.field public static final PROCESS_ALL_ACCESS:I = 0x1f1ffb

.field public static final PROCESS_CREATE_PROCESS:I = 0x80

.field public static final PROCESS_CREATE_THREAD:I = 0x2

.field public static final PROCESS_DUP_HANDLE:I = 0x40

.field public static final PROCESS_NAME_NATIVE:I = 0x1

.field public static final PROCESS_QUERY_INFORMATION:I = 0x400

.field public static final PROCESS_QUERY_LIMITED_INFORMATION:I = 0x1000

.field public static final PROCESS_SET_INFORMATION:I = 0x200

.field public static final PROCESS_SET_QUOTA:I = 0x100

.field public static final PROCESS_SUSPEND_RESUME:I = 0x800

.field public static final PROCESS_SYNCHRONIZE:I = 0x100000

.field public static final PROCESS_TERMINATE:I = 0x1

.field public static final PROCESS_VM_OPERATION:I = 0x8

.field public static final PROCESS_VM_READ:I = 0x10

.field public static final PROCESS_VM_WRITE:I = 0x20

.field public static final PROTECTED_DACL_SECURITY_INFORMATION:I = -0x80000000

.field public static final PROTECTED_SACL_SECURITY_INFORMATION:I = 0x40000000

.field public static final READ_CONTROL:I = 0x20000

.field public static final REG_APP_HIVE:I = 0x10

.field public static final REG_BINARY:I = 0x3

.field public static final REG_CREATED_NEW_KEY:I = 0x1

.field public static final REG_DWORD:I = 0x4

.field public static final REG_DWORD_BIG_ENDIAN:I = 0x5

.field public static final REG_DWORD_LITTLE_ENDIAN:I = 0x4

.field public static final REG_EXPAND_SZ:I = 0x2

.field public static final REG_FORCE_RESTORE:I = 0x8

.field public static final REG_FORCE_UNLOAD:I = 0x1

.field public static final REG_FULL_RESOURCE_DESCRIPTOR:I = 0x9

.field public static final REG_HIVE_EXACT_FILE_GROWTH:I = 0x80

.field public static final REG_HIVE_NO_RM:I = 0x100

.field public static final REG_HIVE_SINGLE_LOG:I = 0x200

.field public static final REG_LATEST_FORMAT:I = 0x2

.field public static final REG_LEGAL_CHANGE_FILTER:I = 0xf

.field public static final REG_LEGAL_OPTION:I = 0xf

.field public static final REG_LINK:I = 0x6

.field public static final REG_MULTI_SZ:I = 0x7

.field public static final REG_NONE:I = 0x0

.field public static final REG_NOTIFY_CHANGE_ATTRIBUTES:I = 0x2

.field public static final REG_NOTIFY_CHANGE_LAST_SET:I = 0x4

.field public static final REG_NOTIFY_CHANGE_NAME:I = 0x1

.field public static final REG_NOTIFY_CHANGE_SECURITY:I = 0x8

.field public static final REG_NO_COMPRESSION:I = 0x4

.field public static final REG_NO_LAZY_FLUSH:I = 0x4

.field public static final REG_OPENED_EXISTING_KEY:I = 0x2

.field public static final REG_OPTION_BACKUP_RESTORE:I = 0x4

.field public static final REG_OPTION_CREATE_LINK:I = 0x2

.field public static final REG_OPTION_NON_VOLATILE:I = 0x0

.field public static final REG_OPTION_OPEN_LINK:I = 0x8

.field public static final REG_OPTION_RESERVED:I = 0x0

.field public static final REG_OPTION_VOLATILE:I = 0x1

.field public static final REG_PROCESS_PRIVATE:I = 0x20

.field public static final REG_QWORD:I = 0xb

.field public static final REG_QWORD_LITTLE_ENDIAN:I = 0xb

.field public static final REG_REFRESH_HIVE:I = 0x2

.field public static final REG_RESOURCE_LIST:I = 0x8

.field public static final REG_RESOURCE_REQUIREMENTS_LIST:I = 0xa

.field public static final REG_STANDARD_FORMAT:I = 0x1

.field public static final REG_START_JOURNAL:I = 0x40

.field public static final REG_SZ:I = 0x1

.field public static final REG_WHOLE_HIVE_VOLATILE:I = 0x1

.field public static final SACL_SECURITY_INFORMATION:I = 0x8

.field public static final SECTION_EXTEND_SIZE:I = 0x10

.field public static final SECTION_MAP_EXECUTE:I = 0x8

.field public static final SECTION_MAP_READ:I = 0x4

.field public static final SECTION_MAP_WRITE:I = 0x2

.field public static final SECTION_QUERY:I = 0x1

.field public static final SECURITY_DESCRIPTOR_REVISION:I = 0x1

.field public static final SECURITY_DYNAMIC_TRACKING:B = 0x1t

.field public static final SECURITY_MAX_SID_SIZE:I = 0x44

.field public static final SECURITY_STATIC_TRACKING:B = 0x0t

.field public static final SERVICE_ADAPTER:I = 0x4

.field public static final SERVICE_AUTO_START:I = 0x2

.field public static final SERVICE_BOOT_START:I = 0x0

.field public static final SERVICE_DEMAND_START:I = 0x3

.field public static final SERVICE_DISABLED:I = 0x4

.field public static final SERVICE_DRIVER:I = 0xb

.field public static final SERVICE_ERROR_CRITICAL:I = 0x3

.field public static final SERVICE_ERROR_IGNORE:I = 0x0

.field public static final SERVICE_ERROR_NORMAL:I = 0x1

.field public static final SERVICE_ERROR_SEVERE:I = 0x2

.field public static final SERVICE_FILE_SYSTEM_DRIVER:I = 0x2

.field public static final SERVICE_INTERACTIVE_PROCESS:I = 0x100

.field public static final SERVICE_KERNEL_DRIVER:I = 0x1

.field public static final SERVICE_RECOGNIZER_DRIVER:I = 0x8

.field public static final SERVICE_SYSTEM_START:I = 0x1

.field public static final SERVICE_TYPE_ALL:I = 0x13f

.field public static final SERVICE_WIN32:I = 0x30

.field public static final SERVICE_WIN32_OWN_PROCESS:I = 0x10

.field public static final SERVICE_WIN32_SHARE_PROCESS:I = 0x20

.field public static final SE_ASSIGNPRIMARYTOKEN_NAME:Ljava/lang/String; = "SeAssignPrimaryTokenPrivilege"

.field public static final SE_AUDIT_NAME:Ljava/lang/String; = "SeAuditPrivilege"

.field public static final SE_BACKUP_NAME:Ljava/lang/String; = "SeBackupPrivilege"

.field public static final SE_CHANGE_NOTIFY_NAME:Ljava/lang/String; = "SeChangeNotifyPrivilege"

.field public static final SE_CREATE_GLOBAL_NAME:Ljava/lang/String; = "SeCreateGlobalPrivilege"

.field public static final SE_CREATE_PAGEFILE_NAME:Ljava/lang/String; = "SeCreatePagefilePrivilege"

.field public static final SE_CREATE_PERMANENT_NAME:Ljava/lang/String; = "SeCreatePermanentPrivilege"

.field public static final SE_CREATE_TOKEN_NAME:Ljava/lang/String; = "SeCreateTokenPrivilege"

.field public static final SE_DACL_AUTO_INHERITED:I = 0x400

.field public static final SE_DACL_AUTO_INHERIT_REQ:I = 0x100

.field public static final SE_DACL_DEFAULTED:I = 0x8

.field public static final SE_DACL_PRESENT:I = 0x4

.field public static final SE_DACL_PROTECTED:I = 0x1000

.field public static final SE_DEBUG_NAME:Ljava/lang/String; = "SeDebugPrivilege"

.field public static final SE_ENABLE_DELEGATION_NAME:Ljava/lang/String; = "SeEnableDelegationPrivilege"

.field public static final SE_GROUP_DEFAULTED:I = 0x2

.field public static final SE_IMPERSONATE_NAME:Ljava/lang/String; = "SeImpersonatePrivilege"

.field public static final SE_INCREASE_QUOTA_NAME:Ljava/lang/String; = "SeIncreaseQuotaPrivilege"

.field public static final SE_INC_BASE_PRIORITY_NAME:Ljava/lang/String; = "SeIncreaseBasePriorityPrivilege"

.field public static final SE_LOAD_DRIVER_NAME:Ljava/lang/String; = "SeLoadDriverPrivilege"

.field public static final SE_LOCK_MEMORY_NAME:Ljava/lang/String; = "SeLockMemoryPrivilege"

.field public static final SE_MACHINE_ACCOUNT_NAME:Ljava/lang/String; = "SeMachineAccountPrivilege"

.field public static final SE_MANAGE_VOLUME_NAME:Ljava/lang/String; = "SeManageVolumePrivilege"

.field public static final SE_OWNER_DEFAULTED:I = 0x1

.field public static final SE_PRIVILEGE_ENABLED:I = 0x2

.field public static final SE_PRIVILEGE_ENABLED_BY_DEFAULT:I = 0x1

.field public static final SE_PRIVILEGE_REMOVED:I = 0x4

.field public static final SE_PRIVILEGE_USED_FOR_ACCESS:I = -0x80000000

.field public static final SE_PROF_SINGLE_PROCESS_NAME:Ljava/lang/String; = "SeProfileSingleProcessPrivilege"

.field public static final SE_REMOTE_SHUTDOWN_NAME:Ljava/lang/String; = "SeRemoteShutdownPrivilege"

.field public static final SE_RESTORE_NAME:Ljava/lang/String; = "SeRestorePrivilege"

.field public static final SE_RM_CONTROL_VALID:I = 0x4000

.field public static final SE_SACL_AUTO_INHERITED:I = 0x800

.field public static final SE_SACL_AUTO_INHERIT_REQ:I = 0x200

.field public static final SE_SACL_DEFAULTED:I = 0x20

.field public static final SE_SACL_PRESENT:I = 0x10

.field public static final SE_SACL_PROTECTED:I = 0x2000

.field public static final SE_SECURITY_NAME:Ljava/lang/String; = "SeSecurityPrivilege"

.field public static final SE_SELF_RELATIVE:I = 0x8000

.field public static final SE_SHUTDOWN_NAME:Ljava/lang/String; = "SeShutdownPrivilege"

.field public static final SE_SYNC_AGENT_NAME:Ljava/lang/String; = "SeSyncAgentPrivilege"

.field public static final SE_SYSTEMTIME_NAME:Ljava/lang/String; = "SeSystemtimePrivilege"

.field public static final SE_SYSTEM_ENVIRONMENT_NAME:Ljava/lang/String; = "SeSystemEnvironmentPrivilege"

.field public static final SE_SYSTEM_PROFILE_NAME:Ljava/lang/String; = "SeSystemProfilePrivilege"

.field public static final SE_TAKE_OWNERSHIP_NAME:Ljava/lang/String; = "SeTakeOwnershipPrivilege"

.field public static final SE_TCB_NAME:Ljava/lang/String; = "SeTcbPrivilege"

.field public static final SE_UNDOCK_NAME:Ljava/lang/String; = "SeUndockPrivilege"

.field public static final SE_UNSOLICITED_INPUT_NAME:Ljava/lang/String; = "SeUnsolicitedInputPrivilege"

.field public static final SID_MAX_SUB_AUTHORITIES:I = 0xf

.field public static final SID_RECOMMENDED_SUB_AUTHORITIES:I = 0x1

.field public static final SID_REVISION:I = 0x1

.field public static final SORT_CHINESE_BIG5:I = 0x0

.field public static final SORT_CHINESE_BOPOMOFO:I = 0x3

.field public static final SORT_CHINESE_PRC:I = 0x2

.field public static final SORT_CHINESE_PRCP:I = 0x0

.field public static final SORT_CHINESE_UNICODE:I = 0x1

.field public static final SORT_DEFAULT:I = 0x0

.field public static final SORT_GEORGIAN_MODERN:I = 0x1

.field public static final SORT_GEORGIAN_TRADITIONAL:I = 0x0

.field public static final SORT_GERMAN_PHONE_BOOK:I = 0x1

.field public static final SORT_HUNGARIAN_DEFAULT:I = 0x0

.field public static final SORT_HUNGARIAN_TECHNICAL:I = 0x1

.field public static final SORT_JAPANESE_UNICODE:I = 0x1

.field public static final SORT_JAPANESE_XJIS:I = 0x0

.field public static final SORT_KOREAN_KSC:I = 0x0

.field public static final SORT_KOREAN_UNICODE:I = 0x1

.field public static final SPECIFIC_RIGHTS_ALL:I = 0xffff

.field public static final STANDARD_RIGHTS_ALL:I = 0x1f0000

.field public static final STANDARD_RIGHTS_EXECUTE:I = 0x20000

.field public static final STANDARD_RIGHTS_READ:I = 0x20000

.field public static final STANDARD_RIGHTS_REQUIRED:I = 0xf0000

.field public static final STANDARD_RIGHTS_WRITE:I = 0x20000

.field public static final STATUS_PENDING:I = 0x103

.field public static final SUBLANG_ARABIC_ALGERIA:I = 0x5

.field public static final SUBLANG_ARABIC_BAHRAIN:I = 0xf

.field public static final SUBLANG_ARABIC_EGYPT:I = 0x3

.field public static final SUBLANG_ARABIC_IRAQ:I = 0x2

.field public static final SUBLANG_ARABIC_JORDAN:I = 0xb

.field public static final SUBLANG_ARABIC_KUWAIT:I = 0xd

.field public static final SUBLANG_ARABIC_LEBANON:I = 0xc

.field public static final SUBLANG_ARABIC_LIBYA:I = 0x4

.field public static final SUBLANG_ARABIC_MOROCCO:I = 0x6

.field public static final SUBLANG_ARABIC_OMAN:I = 0x8

.field public static final SUBLANG_ARABIC_QATAR:I = 0x10

.field public static final SUBLANG_ARABIC_SAUDI_ARABIA:I = 0x1

.field public static final SUBLANG_ARABIC_SYRIA:I = 0xa

.field public static final SUBLANG_ARABIC_TUNISIA:I = 0x7

.field public static final SUBLANG_ARABIC_UAE:I = 0xe

.field public static final SUBLANG_ARABIC_YEMEN:I = 0x9

.field public static final SUBLANG_AZERI_CYRILLIC:I = 0x2

.field public static final SUBLANG_AZERI_LATIN:I = 0x1

.field public static final SUBLANG_CHINESE_HONGKONG:I = 0x3

.field public static final SUBLANG_CHINESE_MACAU:I = 0x5

.field public static final SUBLANG_CHINESE_SIMPLIFIED:I = 0x2

.field public static final SUBLANG_CHINESE_SINGAPORE:I = 0x4

.field public static final SUBLANG_CHINESE_TRADITIONAL:I = 0x1

.field public static final SUBLANG_DEFAULT:I = 0x1

.field public static final SUBLANG_DUTCH:I = 0x1

.field public static final SUBLANG_DUTCH_BELGIAN:I = 0x2

.field public static final SUBLANG_ENGLISH_AUS:I = 0x3

.field public static final SUBLANG_ENGLISH_BELIZE:I = 0xa

.field public static final SUBLANG_ENGLISH_CAN:I = 0x4

.field public static final SUBLANG_ENGLISH_CARIBBEAN:I = 0x9

.field public static final SUBLANG_ENGLISH_EIRE:I = 0x6

.field public static final SUBLANG_ENGLISH_JAMAICA:I = 0x8

.field public static final SUBLANG_ENGLISH_NZ:I = 0x5

.field public static final SUBLANG_ENGLISH_PHILIPPINES:I = 0xd

.field public static final SUBLANG_ENGLISH_SOUTH_AFRICA:I = 0x7

.field public static final SUBLANG_ENGLISH_TRINIDAD:I = 0xb

.field public static final SUBLANG_ENGLISH_UK:I = 0x2

.field public static final SUBLANG_ENGLISH_US:I = 0x1

.field public static final SUBLANG_ENGLISH_ZIMBABWE:I = 0xc

.field public static final SUBLANG_FRENCH:I = 0x1

.field public static final SUBLANG_FRENCH_BELGIAN:I = 0x2

.field public static final SUBLANG_FRENCH_CANADIAN:I = 0x3

.field public static final SUBLANG_FRENCH_LUXEMBOURG:I = 0x5

.field public static final SUBLANG_FRENCH_MONACO:I = 0x6

.field public static final SUBLANG_FRENCH_SWISS:I = 0x4

.field public static final SUBLANG_GERMAN:I = 0x1

.field public static final SUBLANG_GERMAN_AUSTRIAN:I = 0x3

.field public static final SUBLANG_GERMAN_LIECHTENSTEIN:I = 0x5

.field public static final SUBLANG_GERMAN_LUXEMBOURG:I = 0x4

.field public static final SUBLANG_GERMAN_SWISS:I = 0x2

.field public static final SUBLANG_ITALIAN:I = 0x1

.field public static final SUBLANG_ITALIAN_SWISS:I = 0x2

.field public static final SUBLANG_KASHMIRI_INDIA:I = 0x2

.field public static final SUBLANG_KASHMIRI_SASIA:I = 0x2

.field public static final SUBLANG_KOREAN:I = 0x1

.field public static final SUBLANG_LITHUANIAN:I = 0x1

.field public static final SUBLANG_MALAY_BRUNEI_DARUSSALAM:I = 0x2

.field public static final SUBLANG_MALAY_MALAYSIA:I = 0x1

.field public static final SUBLANG_NEPALI_INDIA:I = 0x2

.field public static final SUBLANG_NEUTRAL:I = 0x0

.field public static final SUBLANG_NORWEGIAN_BOKMAL:I = 0x1

.field public static final SUBLANG_NORWEGIAN_NYNORSK:I = 0x2

.field public static final SUBLANG_PORTUGUESE:I = 0x2

.field public static final SUBLANG_PORTUGUESE_BRAZILIAN:I = 0x1

.field public static final SUBLANG_SERBIAN_CYRILLIC:I = 0x3

.field public static final SUBLANG_SERBIAN_LATIN:I = 0x2

.field public static final SUBLANG_SPANISH:I = 0x1

.field public static final SUBLANG_SPANISH_ARGENTINA:I = 0xb

.field public static final SUBLANG_SPANISH_BOLIVIA:I = 0x10

.field public static final SUBLANG_SPANISH_CHILE:I = 0xd

.field public static final SUBLANG_SPANISH_COLOMBIA:I = 0x9

.field public static final SUBLANG_SPANISH_COSTA_RICA:I = 0x5

.field public static final SUBLANG_SPANISH_DOMINICAN_REPUBLIC:I = 0x7

.field public static final SUBLANG_SPANISH_ECUADOR:I = 0xc

.field public static final SUBLANG_SPANISH_EL_SALVADOR:I = 0x11

.field public static final SUBLANG_SPANISH_GUATEMALA:I = 0x4

.field public static final SUBLANG_SPANISH_HONDURAS:I = 0x12

.field public static final SUBLANG_SPANISH_MEXICAN:I = 0x2

.field public static final SUBLANG_SPANISH_MODERN:I = 0x3

.field public static final SUBLANG_SPANISH_NICARAGUA:I = 0x13

.field public static final SUBLANG_SPANISH_PANAMA:I = 0x6

.field public static final SUBLANG_SPANISH_PARAGUAY:I = 0xf

.field public static final SUBLANG_SPANISH_PERU:I = 0xa

.field public static final SUBLANG_SPANISH_PUERTO_RICO:I = 0x14

.field public static final SUBLANG_SPANISH_URUGUAY:I = 0xe

.field public static final SUBLANG_SPANISH_VENEZUELA:I = 0x8

.field public static final SUBLANG_SWEDISH:I = 0x1

.field public static final SUBLANG_SWEDISH_FINLAND:I = 0x2

.field public static final SUBLANG_SYS_DEFAULT:I = 0x2

.field public static final SUBLANG_URDU_INDIA:I = 0x2

.field public static final SUBLANG_URDU_PAKISTAN:I = 0x1

.field public static final SUBLANG_UZBEK_CYRILLIC:I = 0x2

.field public static final SUBLANG_UZBEK_LATIN:I = 0x1

.field public static final SYNCHRONIZE:I = 0x100000

.field public static final SYSTEM_ALARM_ACE_TYPE:B = 0x3t

.field public static final SYSTEM_ALARM_CALLBACK_ACE_TYPE:B = 0xet

.field public static final SYSTEM_ALARM_CALLBACK_OBJECT_ACE_TYPE:B = 0x10t

.field public static final SYSTEM_ALARM_OBJECT_ACE_TYPE:B = 0x8t

.field public static final SYSTEM_AUDIT_ACE_TYPE:B = 0x2t

.field public static final SYSTEM_AUDIT_CALLBACK_ACE_TYPE:B = 0xdt

.field public static final SYSTEM_AUDIT_CALLBACK_OBJECT_ACE_TYPE:B = 0xft

.field public static final SYSTEM_AUDIT_OBJECT_ACE_TYPE:B = 0x7t

.field public static final SYSTEM_MANDATORY_LABEL_ACE_TYPE:B = 0x11t

.field public static final THREAD_ALL_ACCESS:I = 0x1f03ff

.field public static final THREAD_DIRECT_IMPERSONATION:I = 0x200

.field public static final THREAD_GET_CONTEXT:I = 0x8

.field public static final THREAD_IMPERSONATE:I = 0x100

.field public static final THREAD_QUERY_INFORMATION:I = 0x40

.field public static final THREAD_QUERY_LIMITED_INFORMATION:I = 0x800

.field public static final THREAD_SET_CONTEXT:I = 0x10

.field public static final THREAD_SET_INFORMATION:I = 0x20

.field public static final THREAD_SET_LIMITED_INFORMATION:I = 0x400

.field public static final THREAD_SET_THREAD_TOKEN:I = 0x80

.field public static final THREAD_SUSPEND_RESUME:I = 0x2

.field public static final THREAD_TERMINATE:I = 0x1

.field public static final TOKEN_ADJUST_DEFAULT:I = 0x80

.field public static final TOKEN_ADJUST_GROUPS:I = 0x40

.field public static final TOKEN_ADJUST_PRIVILEGES:I = 0x20

.field public static final TOKEN_ADJUST_SESSIONID:I = 0x100

.field public static final TOKEN_ALL_ACCESS:I = 0xf01ff

.field public static final TOKEN_ALL_ACCESS_P:I = 0xf00ff

.field public static final TOKEN_ASSIGN_PRIMARY:I = 0x1

.field public static final TOKEN_DUPLICATE:I = 0x2

.field public static final TOKEN_EXECUTE:I = 0x20000

.field public static final TOKEN_IMPERSONATE:I = 0x4

.field public static final TOKEN_QUERY:I = 0x8

.field public static final TOKEN_QUERY_SOURCE:I = 0x10

.field public static final TOKEN_READ:I = 0x20008

.field public static final TOKEN_WRITE:I = 0x200e0

.field public static final TRUNCATE_EXISTING:I = 0x5

.field public static final UNPROTECTED_DACL_SECURITY_INFORMATION:I = 0x20000000

.field public static final UNPROTECTED_SACL_SECURITY_INFORMATION:I = 0x10000000

.field public static final VALID_INHERIT_FLAGS:B = 0x1ft

.field public static final VER_AND:I = 0x6

.field public static final VER_BUILDNUMBER:I = 0x4

.field public static final VER_CONDITION_MASK:I = 0x7

.field public static final VER_EQUAL:I = 0x1

.field public static final VER_GREATER:I = 0x2

.field public static final VER_GREATER_EQUAL:I = 0x3

.field public static final VER_LESS:I = 0x4

.field public static final VER_LESS_EQUAL:I = 0x5

.field public static final VER_MAJORVERSION:I = 0x2

.field public static final VER_MINORVERSION:I = 0x1

.field public static final VER_NT_DOMAIN_CONTROLLER:I = 0x2

.field public static final VER_NT_SERVER:I = 0x3

.field public static final VER_NT_WORKSTATION:I = 0x1

.field public static final VER_NUM_BITS_PER_CONDITION_MASK:I = 0x3

.field public static final VER_OR:I = 0x7

.field public static final VER_PLATFORMID:I = 0x8

.field public static final VER_PLATFORM_WIN32_NT:I = 0x2

.field public static final VER_PLATFORM_WIN32_WINDOWS:I = 0x1

.field public static final VER_PLATFORM_WIN32s:I = 0x0

.field public static final VER_PRODUCT_TYPE:I = 0x80

.field public static final VER_SERVICEPACKMAJOR:I = 0x20

.field public static final VER_SERVICEPACKMINOR:I = 0x10

.field public static final VER_SUITENAME:I = 0x40

.field public static final WIN32_WINNT_LONGHORN:S = 0x600s

.field public static final WIN32_WINNT_NT4:S = 0x400s

.field public static final WIN32_WINNT_VISTA:S = 0x600s

.field public static final WIN32_WINNT_WIN10:S = 0xa00s

.field public static final WIN32_WINNT_WIN2K:S = 0x500s

.field public static final WIN32_WINNT_WIN6:S = 0x600s

.field public static final WIN32_WINNT_WIN7:S = 0x601s

.field public static final WIN32_WINNT_WIN8:S = 0x602s

.field public static final WIN32_WINNT_WINBLUE:S = 0x603s

.field public static final WIN32_WINNT_WINTHRESHOLD:S = 0xa00s

.field public static final WIN32_WINNT_WINXP:S = 0x501s

.field public static final WIN32_WINNT_WS03:S = 0x502s

.field public static final WIN32_WINNT_WS08:S = 0x600s

.field public static final WRITE_DAC:I = 0x40000

.field public static final WRITE_OWNER:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 4209
    invoke-static {v1, v0}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->MAKELANGID(II)I

    move-result v0

    sput v0, Lcom/sun/jna/platform/win32/WinNT;->LANG_SYSTEM_DEFAULT:I

    const/4 v2, 0x1

    .line 4210
    invoke-static {v1, v2}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->MAKELANGID(II)I

    move-result v2

    sput v2, Lcom/sun/jna/platform/win32/WinNT;->LANG_USER_DEFAULT:I

    .line 4212
    invoke-static {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->MAKELCID(II)Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/WinNT;->LOCALE_SYSTEM_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    .line 4213
    invoke-static {v2, v1}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->MAKELCID(II)Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/WinNT;->LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    .line 4215
    invoke-static {v1, v1}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->MAKELANGID(II)I

    move-result v0

    invoke-static {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->MAKELCID(II)Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/WinNT;->LOCALE_NEUTRAL:Lcom/sun/jna/platform/win32/WinDef$LCID;

    const/16 v0, 0x7f

    .line 4217
    invoke-static {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->MAKELANGID(II)I

    move-result v0

    invoke-static {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->MAKELCID(II)Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/WinNT;->LOCALE_INVARIANT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    return-void
.end method
