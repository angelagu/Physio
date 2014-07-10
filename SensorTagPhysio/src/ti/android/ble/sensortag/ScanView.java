// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.List;
import ti.android.ble.common.BleDeviceInfo;
import ti.android.util.CustomTimer;
import ti.android.util.CustomTimerCallback;

// Referenced classes of package ti.android.ble.sensortag:
//            MainActivity

public class ScanView extends Fragment
{
    class DeviceListAdapter extends BaseAdapter
    {

        private List mDevices;
        private LayoutInflater mInflater;
        final ScanView this$0;

        public int getCount()
        {
            return mDevices.size();
        }

        public Object getItem(int i)
        {
            return mDevices.get(i);
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            ViewGroup viewgroup1;
            BleDeviceInfo bledeviceinfo;
            BluetoothDevice bluetoothdevice;
            int j;
            String s;
            if (view != null)
            {
                viewgroup1 = (ViewGroup)view;
            } else
            {
                viewgroup1 = (ViewGroup)mInflater.inflate(0x7f030004, null);
            }
            bledeviceinfo = (BleDeviceInfo)mDevices.get(i);
            bluetoothdevice = bledeviceinfo.getBluetoothDevice();
            j = bledeviceinfo.getRssi();
            s = (new StringBuilder()).append(bluetoothdevice.getName()).append("\n").append(bluetoothdevice.getAddress()).append("\nRssi: ").append(j).append(" dBm").toString();
            ((TextView)viewgroup1.findViewById(0x7f090014)).setText(s);
            return viewgroup1;
        }

        public DeviceListAdapter(Context context, List list)
        {
            this$0 = ScanView.this;
            super();
            mInflater = LayoutInflater.from(context);
            mDevices = list;
        }
    }


    private static final String TAG = "ScanView";
    private final int CONNECT_TIMEOUT = 10;
    private final int SCAN_TIMEOUT = 10;
    private MainActivity mActivity;
    private Button mBtnScan;
    private CustomTimerCallback mClearStatusCallback;
    private CustomTimer mConnectTimer;
    private Context mContext;
    private DeviceListAdapter mDeviceAdapter;
    private android.widget.AdapterView.OnItemClickListener mDeviceClickListener;
    private ListView mDeviceListView;
    private TextView mEmptyMsg;
    private CustomTimerCallback mPgConnectCallback;
    private CustomTimerCallback mPgScanCallback;
    private ProgressBar mProgressBar;
    private CustomTimer mScanTimer;
    private TextView mStatus;
    private CustomTimer mStatusTimer;

    public ScanView()
    {
        mActivity = null;
        mDeviceAdapter = null;
        mBtnScan = null;
        mDeviceListView = null;
        mScanTimer = null;
        mConnectTimer = null;
        mDeviceClickListener = new android.widget.AdapterView.OnItemClickListener() {

            final ScanView this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Log.d("ScanView", "item click");
                mConnectTimer = new CustomTimer(mProgressBar, 10, mPgConnectCallback);
                mActivity.onDeviceClick(i);
            }

            
            {
                this$0 = ScanView.this;
                super();
            }
        };
        mPgScanCallback = new CustomTimerCallback() {

            final ScanView this$0;

            public void onTick(int i)
            {
            }

            public void onTimeout()
            {
                mActivity.onScanTimeout();
            }

            
            {
                this$0 = ScanView.this;
                super();
            }
        };
        mPgConnectCallback = new CustomTimerCallback() {

            final ScanView this$0;

            public void onTick(int i)
            {
            }

            public void onTimeout()
            {
                mActivity.onConnectTimeout();
            }

            
            {
                this$0 = ScanView.this;
                super();
            }
        };
        mClearStatusCallback = new CustomTimerCallback() {

            final ScanView this$0;

            public void onTick(int i)
            {
            }

            public void onTimeout()
            {
                mActivity.runOnUiThread(new Runnable() {

                    final _cls4 this$1;

                    public void run()
                    {
                        setStatus("");
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                });
                mStatusTimer = null;
            }

            
            {
                this$0 = ScanView.this;
                super();
            }
        };
    }

    private void stopTimers()
    {
        if (mScanTimer != null)
        {
            mScanTimer.stop();
            mScanTimer = null;
        }
        if (mConnectTimer != null)
        {
            mConnectTimer.stop();
            mConnectTimer = null;
        }
    }

    void notifyDataSetChanged()
    {
        List list = mActivity.getDeviceInfoList();
        if (mDeviceAdapter == null)
        {
            mDeviceAdapter = new DeviceListAdapter(mActivity, list);
        }
        mDeviceListView.setAdapter(mDeviceAdapter);
        mDeviceAdapter.notifyDataSetChanged();
        if (list.size() > 0)
        {
            mEmptyMsg.setVisibility(8);
            return;
        } else
        {
            mEmptyMsg.setVisibility(0);
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        Log.i("ScanView", "onCreateView");
        View view = layoutinflater.inflate(0x7f030008, viewgroup, false);
        mActivity = (MainActivity)getActivity();
        mContext = mActivity.getApplicationContext();
        mStatus = (TextView)view.findViewById(0x7f09001b);
        mBtnScan = (Button)view.findViewById(0x7f09001c);
        mDeviceListView = (ListView)view.findViewById(0x7f090018);
        mDeviceListView.setClickable(true);
        mDeviceListView.setOnItemClickListener(mDeviceClickListener);
        mEmptyMsg = (TextView)view.findViewById(0x7f09001a);
        mProgressBar = (ProgressBar)view.findViewById(0x7f090019);
        mProgressBar.setMax(10);
        mActivity.onScanViewReady(view);
        return view;
    }

    public void onDestroy()
    {
        Log.i("ScanView", "onDestroy");
        super.onDestroy();
    }

    void setBusy(boolean flag)
    {
        if (mProgressBar == null)
        {
            return;
        }
        if (flag)
        {
            mProgressBar.setVisibility(0);
            return;
        } else
        {
            stopTimers();
            mProgressBar.setVisibility(8);
            return;
        }
    }

    void setError(String s)
    {
        setBusy(false);
        stopTimers();
        mStatus.setText(s);
        mStatus.setTextAppearance(mContext, 0x7f070013);
    }

    void setStatus(String s)
    {
        mStatus.setText(s);
        mStatus.setTextAppearance(mContext, 0x7f070011);
    }

    void setStatus(String s, int i)
    {
        setStatus(s);
        mStatusTimer = new CustomTimer(null, i, mClearStatusCallback);
    }

    void updateGui(boolean flag)
    {
        if (mBtnScan == null)
        {
            return;
        }
        setBusy(flag);
        if (flag)
        {
            mScanTimer = new CustomTimer(mProgressBar, 10, mPgScanCallback);
            mStatus.setTextAppearance(mContext, 0x7f070012);
            mBtnScan.setText("Stop");
            mStatus.setText("Scanning...");
            mEmptyMsg.setText(0x7f05000c);
            mActivity.updateGuiState();
            return;
        } else
        {
            mStatus.setTextAppearance(mContext, 0x7f070011);
            mBtnScan.setText("Scan");
            mEmptyMsg.setText(0x7f05000d);
            mActivity.setProgressBarIndeterminateVisibility(false);
            mDeviceAdapter.notifyDataSetChanged();
            return;
        }
    }


/*
    static CustomTimer access$002(ScanView scanview, CustomTimer customtimer)
    {
        scanview.mConnectTimer = customtimer;
        return customtimer;
    }

*/





/*
    static CustomTimer access$402(ScanView scanview, CustomTimer customtimer)
    {
        scanview.mStatusTimer = customtimer;
        return customtimer;
    }

*/
}
