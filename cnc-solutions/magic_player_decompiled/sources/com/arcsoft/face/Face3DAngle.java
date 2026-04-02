package com.arcsoft.face;

import android.support.v4.media.f;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class Face3DAngle {
    public float pitch;
    public float roll;
    public int status;
    public float yaw;

    public Face3DAngle() {
        this.yaw = 0.0f;
        this.roll = 0.0f;
        this.pitch = 0.0f;
        this.status = 1;
    }

    public float getPitch() {
        return this.pitch;
    }

    public float getRoll() {
        return this.roll;
    }

    public int getStatus() {
        return this.status;
    }

    public float getYaw() {
        return this.yaw;
    }

    public String toString() {
        StringBuilder sbA = f.a("Face3DAngle{yaw=");
        sbA.append(this.yaw);
        sbA.append(", roll=");
        sbA.append(this.roll);
        sbA.append(", pitch=");
        sbA.append(this.pitch);
        sbA.append(", status=");
        sbA.append(this.status);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Face3DAngle m7clone() {
        return new Face3DAngle(this);
    }

    public Face3DAngle(Face3DAngle face3DAngle) {
        if (face3DAngle == null) {
            this.yaw = 0.0f;
            this.roll = 0.0f;
            this.pitch = 0.0f;
            this.status = 1;
            return;
        }
        this.yaw = face3DAngle.getYaw();
        this.roll = face3DAngle.getRoll();
        this.pitch = face3DAngle.getPitch();
        this.status = face3DAngle.getStatus();
    }
}
