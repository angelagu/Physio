// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package ti.android.ble.sensortag:
//            FileActivity

class this._cls0
    implements android.widget.temClickListener
{

    final FileActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        FileActivity.access$000(FileActivity.this).setSelectedPosition(i);
    }

    leAdapter()
    {
        this$0 = FileActivity.this;
        super();
    }
}
