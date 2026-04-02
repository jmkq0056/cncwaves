package com.stripe.bbpos.bbdevice.ota;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class g0 {
    static boolean a(JSONObject jSONObject, String str, boolean z) throws JSONException {
        if (!z) {
            return jSONObject.getBoolean(str);
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (Exception unused) {
            return false;
        }
    }

    static int b(JSONObject jSONObject, String str, boolean z) throws JSONException {
        if (!z) {
            return jSONObject.getInt(str);
        }
        try {
            return jSONObject.getInt(str);
        } catch (Exception unused) {
            return 0;
        }
    }

    static JSONArray c(JSONObject jSONObject, String str, boolean z) throws JSONException {
        if (!z) {
            return jSONObject.getJSONArray(str);
        }
        try {
            return jSONObject.getJSONArray(str);
        } catch (Exception unused) {
            return null;
        }
    }

    static JSONObject d(JSONObject jSONObject, String str, boolean z) throws JSONException {
        if (!z) {
            return jSONObject.getJSONObject(str);
        }
        try {
            return jSONObject.getJSONObject(str);
        } catch (Exception unused) {
            return null;
        }
    }

    static long e(JSONObject jSONObject, String str, boolean z) throws JSONException {
        if (!z) {
            return jSONObject.getLong(str);
        }
        try {
            return jSONObject.getLong(str);
        } catch (Exception unused) {
            return 0L;
        }
    }

    static String f(JSONObject jSONObject, String str, boolean z) throws JSONException {
        if (!z) {
            return jSONObject.getString(str);
        }
        try {
            return jSONObject.getString(str);
        } catch (Exception unused) {
            return "";
        }
    }
}
