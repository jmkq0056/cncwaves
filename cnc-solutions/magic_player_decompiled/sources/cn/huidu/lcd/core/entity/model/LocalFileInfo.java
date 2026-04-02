package cn.huidu.lcd.core.entity.model;

import z0.a;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = "FileInfo")
public class LocalFileInfo {

    @a(name = "md5")
    private String mMd5;

    @a(name = "name")
    private String mName;

    @a(name = "originPath")
    private String mOriginPath;

    @a(name = "path")
    private String mPath;

    @a(name = "size")
    private long mSize;

    public String getMd5() {
        return this.mMd5;
    }

    public String getName() {
        return this.mName;
    }

    public String getOriginPath() {
        return this.mOriginPath;
    }

    public String getPath() {
        return this.mPath;
    }

    public long getSize() {
        return this.mSize;
    }

    public void setMd5(String str) {
        this.mMd5 = str;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setOriginPath(String str) {
        this.mOriginPath = str;
    }

    public void setPath(String str) {
        this.mPath = str;
    }

    public void setSize(long j4) {
        this.mSize = j4;
    }
}
