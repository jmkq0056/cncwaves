package com.stripe.bbpos.bbdevice.ota;

import com.stripe.bbpos.bbdevice.ota.y;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
final class z {
    y.b a;
    private boolean b;
    private boolean c;
    private String d;
    private String e;
    private String f;
    private Hashtable<String, Object> g = null;
    private Hashtable<String, String> h = null;
    private String i;
    private String j;

    z() {
        j();
    }

    void a(Hashtable<String, Object> hashtable, y.b bVar) {
        j();
        this.g = (Hashtable) hashtable.clone();
        this.a = bVar;
    }

    void b(Hashtable<String, String> hashtable, y.b bVar) {
        j();
        this.h = (Hashtable) hashtable.clone();
        this.a = bVar;
    }

    Hashtable<String, Object> c() {
        return this.g;
    }

    void d(String str) {
        this.d = str;
    }

    String e() {
        return this.d;
    }

    String f() {
        return this.e;
    }

    y.b g() {
        return this.a;
    }

    boolean h() {
        return this.b;
    }

    boolean i() {
        return this.c;
    }

    void j() {
        this.a = y.b.NONE;
        this.b = false;
        this.c = false;
        this.d = "";
        this.e = "";
        this.g = null;
        this.h = null;
        this.f = "";
        this.i = "";
        this.j = "";
    }

    void c(String str) {
        this.f = str;
    }

    String d() {
        return this.f;
    }

    void e(String str) {
        this.e = str;
    }

    void a(boolean z) {
        this.b = z;
    }

    void b(boolean z) {
        this.c = z;
    }

    String a() {
        return this.j;
    }

    String b() {
        return this.i;
    }

    void a(String str) {
        this.j = str;
    }

    void b(String str) {
        this.i = str;
    }
}
