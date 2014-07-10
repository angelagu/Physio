// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package ti.android.ble.sensortag:
//            FileActivity

class mSelectedPos extends BaseAdapter
{

    Context mContext;
    List mFiles;
    LayoutInflater mInflater;
    int mSelectedPos;
    final FileActivity this$0;

    public int getCount()
    {
        return mFiles.size();
    }

    public Object getItem(int i)
    {
        return mFiles.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getSelectedPosition()
    {
        return mSelectedPos;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewGroup viewgroup1;
        String s;
        TextView textview;
        if (view != null)
        {
            viewgroup1 = (ViewGroup)view;
        } else
        {
            viewgroup1 = (ViewGroup)mInflater.inflate(0x7f030005, null);
        }
        s = (String)mFiles.get(i);
        textview = (TextView)viewgroup1.findViewById(0x7f090011);
        textview.setText(s);
        if (i == mSelectedPos)
        {
            textview.setTextAppearance(mContext, 0x7f07000d);
            return viewgroup1;
        } else
        {
            textview.setTextAppearance(mContext, 0x7f070007);
            return viewgroup1;
        }
    }

    public void setSelectedPosition(int i)
    {
        FileActivity.access$102(FileActivity.this, (String)FileActivity.access$200(FileActivity.this).get(i));
        mSelectedPos = i;
        notifyDataSetChanged();
    }

    public (Context context, List list)
    {
        this$0 = FileActivity.this;
        super();
        mInflater = LayoutInflater.from(context);
        mContext = context;
        mFiles = list;
        mSelectedPos = 0;
    }
}
