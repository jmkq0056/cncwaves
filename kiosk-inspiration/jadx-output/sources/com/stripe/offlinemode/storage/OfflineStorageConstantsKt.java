package com.stripe.offlinemode.storage;

import kotlin.Metadata;

/* JADX INFO: compiled from: OfflineStorageConstants.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0011\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\fX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"ACCOUNT_ID", "", "API_REQUEST_TYPE", "CONNECTION_ID", "CREATED_TS", "DATA_BLOB", "DELETED", "ENCRYPTION_IV_BLOB", "ID", "LAST_ACTIVATED_TS", "LOCATION_ID", "LOCATION_LAST_ACTIVATED_THRESHOLD_MS", "", "OFFLINE_API_REQUEST", "OFFLINE_CONFIG", "OFFLINE_CONNECTION", "OFFLINE_ID", "OFFLINE_LOCATION", "OFFLINE_PAYMENT_INTENT", "ONE_DAY_MS", "ORPHANED_CREATE_REQUESTS_RETENTION_MS", "PAYMENT_INTENT_ID", "PAYMENT_INTENT_REQUEST_TYPE", "READER", "READER_ID", "READER_LAST_ACTIVATED_THRESHOLD_MS", "READER_SERIAL_NUMBER", "STRIPE_ENTITY_ID", "STRIPE_LOCATION_ID", "offlinemode_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class OfflineStorageConstantsKt {
    public static final String ACCOUNT_ID = "account_id";
    public static final String API_REQUEST_TYPE = "type";
    public static final String CONNECTION_ID = "connection_id";
    public static final String CREATED_TS = "created_timestamp";
    public static final String DATA_BLOB = "data_blob";
    public static final String DELETED = "deleted";
    public static final String ENCRYPTION_IV_BLOB = "iv_blob";
    public static final String ID = "id";
    public static final String LAST_ACTIVATED_TS = "last_activated_timestamp";
    public static final String LOCATION_ID = "location_id";
    public static final long LOCATION_LAST_ACTIVATED_THRESHOLD_MS = 15552000000L;
    public static final String OFFLINE_API_REQUEST = "offline_api_request";
    public static final String OFFLINE_CONFIG = "offline_config";
    public static final String OFFLINE_CONNECTION = "offline_connection";
    public static final String OFFLINE_ID = "offline_id";
    public static final String OFFLINE_LOCATION = "offline_location";
    public static final String OFFLINE_PAYMENT_INTENT = "offline_payment_intent";
    private static final long ONE_DAY_MS = 86400000;
    public static final long ORPHANED_CREATE_REQUESTS_RETENTION_MS = 2592000000L;
    public static final String PAYMENT_INTENT_ID = "payment_intent_id";
    public static final String PAYMENT_INTENT_REQUEST_TYPE = "type";
    public static final String READER = "reader";
    public static final String READER_ID = "reader_id";
    public static final long READER_LAST_ACTIVATED_THRESHOLD_MS = 2592000000L;
    public static final String READER_SERIAL_NUMBER = "serial_number";
    public static final String STRIPE_ENTITY_ID = "stripe_api_entity_id";
    public static final String STRIPE_LOCATION_ID = "stripe_location_id";
}
