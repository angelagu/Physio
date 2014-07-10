// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class FileActivity extends Activity
{
    class FileAdapter extends BaseAdapter
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
            mSelectedFile = (String)mFileList.get(i);
            mSelectedPos = i;
            notifyDataSetChanged();
        }

        public FileAdapter(Context context, List list)
        {
            this$0 = FileActivity.this;
            super();
            mInflater = LayoutInflater.from(context);
            mContext = context;
            mFiles = list;
            mSelectedPos = 0;
        }
    }


    public static final String EXTRA_FILENAME = "ti.android.ble.devicemonitor.FILENAME";
    private static String TAG = "FileActivity";
    private File mDir;
    private String mDirectoryName;
    private FileAdapter mFileAdapter;
    private android.widget.AdapterView.OnItemClickListener mFileClickListener;
    private List mFileList;
    private ListView mLwFileList;
    private String mSelectedFile;
    private TextView mTwDirName;

    public FileActivity()
    {
        mFileClickListener = new android.widget.AdapterView.OnItemClickListener() {

            final FileActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                mFileAdapter.setSelectedPosition(i);
            }

            
            {
                this$0 = FileActivity.this;
                super();
            }
        };
        Log.i(TAG, "construct");
    }

    public void onConfirm(View view)
    {
        Intent intent = new Intent();
        Log.i(TAG, "onConfirm");
        intent.putExtra("ti.android.ble.devicemonitor.FILENAME", (new StringBuilder()).append(mDir.getAbsolutePath()).append(File.separator).append(mSelectedFile).toString());
        setResult(-1, intent);
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        mDirectoryName = getIntent().getStringExtra("ti.android.ble.sensortag.MESSAGE");
        mDir = Environment.getExternalStoragePublicDirectory(mDirectoryName);
        mTwDirName = (TextView)findViewById(0x7f090000);
        mLwFileList = (ListView)findViewById(0x7f090001);
        mLwFileList.setOnItemClickListener(mFileClickListener);
        mFileList = new ArrayList();
        mFileAdapter = new FileAdapter(this, mFileList);
        mLwFileList.setAdapter(mFileAdapter);
        if (mDir.exists())
        {
            mTwDirName.setText(mDir.getPath());
            for (int i = 0; i < mDir.list().length; i++)
            {
                String s = mDir.list()[i];
                mFileList.add(s);
            }

            mFileAdapter.notifyDataSetChanged();
            return;
        } else
        {
            Toast.makeText(this, (new StringBuilder()).append(mDirectoryName).append(" does not exist").toString(), 1).show();
            return;
        }
    }

    public void onDestroy()
    {
        Log.i(TAG, "onDestroy");
        mFileList = null;
        mFileAdapter = null;
        super.onDestroy();
    }




/*
    static String access$102(FileActivity fileactivity, String s)
    {
        fileactivity.mSelectedFile = s;
        return s;
    }

*/

}
