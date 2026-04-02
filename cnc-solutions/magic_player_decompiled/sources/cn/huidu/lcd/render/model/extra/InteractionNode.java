package cn.huidu.lcd.render.model.extra;

import cn.huidu.lcd.render.model.NodeTags;
import java.util.List;
import z0.b;

/* JADX INFO: loaded from: classes.dex */
@b(tagName = NodeTags.INTERACTION)
public class InteractionNode {
    private List<ContentChange> mChangeItems;
    private String mChangeProgram;

    public List<ContentChange> getChangeItems() {
        return this.mChangeItems;
    }

    public String getChangeProgram() {
        return this.mChangeProgram;
    }

    public void setChangeItems(List<ContentChange> list) {
        this.mChangeItems = list;
    }

    public void setChangeProgram(String str) {
        this.mChangeProgram = str;
    }
}
