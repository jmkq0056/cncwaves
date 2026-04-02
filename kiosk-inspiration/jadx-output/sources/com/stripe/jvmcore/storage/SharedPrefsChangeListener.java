package com.stripe.jvmcore.storage;

import kotlin.Metadata;

/* JADX INFO: compiled from: StoreChangeListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "", "SharedPrefsBooleanChangeListener", "SharedPrefsIntChangeListener", "SharedPrefsLongChangeListener", "SharedPrefsStringChangeListener", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsBooleanChangeListener;", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsIntChangeListener;", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsLongChangeListener;", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsStringChangeListener;", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SharedPrefsChangeListener {

    /* JADX INFO: compiled from: StoreChangeListener.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsBooleanChangeListener;", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "invoke", "", "value", "", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface SharedPrefsBooleanChangeListener extends SharedPrefsChangeListener {
        void invoke(boolean value);
    }

    /* JADX INFO: compiled from: StoreChangeListener.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsIntChangeListener;", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "invoke", "", "value", "", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface SharedPrefsIntChangeListener extends SharedPrefsChangeListener {
        void invoke(int value);
    }

    /* JADX INFO: compiled from: StoreChangeListener.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsLongChangeListener;", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "invoke", "", "value", "", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface SharedPrefsLongChangeListener extends SharedPrefsChangeListener {
        void invoke(long value);
    }

    /* JADX INFO: compiled from: StoreChangeListener.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener$SharedPrefsStringChangeListener;", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "invoke", "", "value", "", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface SharedPrefsStringChangeListener extends SharedPrefsChangeListener {
        void invoke(String value);
    }
}
