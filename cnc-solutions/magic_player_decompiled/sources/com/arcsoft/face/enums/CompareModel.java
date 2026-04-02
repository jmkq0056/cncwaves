package com.arcsoft.face.enums;

/* JADX INFO: loaded from: classes.dex */
public enum CompareModel {
    LIFE_PHOTO(1),
    ID_CARD(2);

    private int model;

    CompareModel(int i4) {
        this.model = i4;
    }

    public int getModel() {
        return this.model;
    }
}
