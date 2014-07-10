// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.app.Activity;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.os.Environment;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import ti.android.ble.common.BluetoothLeService;
import ti.android.util.Conversion;

// Referenced classes of package ti.android.ble.sensortag:
//            DeviceActivity, FileActivity

public class FwUpdateActivity extends Activity
{
    private class ImgHdr
    {

        Character imgType;
        short len;
        final FwUpdateActivity this$0;
        byte uid[];
        short ver;

        private ImgHdr()
        {
            this$0 = FwUpdateActivity.this;
            super();
            uid = new byte[4];
        }

    }

    private class ProgInfo
    {

        short iBlocks;
        int iBytes;
        int iTimeElapsed;
        int mTick;
        short nBlocks;
        final FwUpdateActivity this$0;

        void reset()
        {
            iBytes = 0;
            iBlocks = 0;
            iTimeElapsed = 0;
            mTick = 0;
            nBlocks = (short)(mFileImgHdr.len / 4);
        }

        private ProgInfo()
        {
            this$0 = FwUpdateActivity.this;
            super();
            iBytes = 0;
            iBlocks = 0;
            nBlocks = 0;
            iTimeElapsed = 0;
            mTick = 0;
        }

    }

    private class ProgTimerTask extends TimerTask
    {

        final FwUpdateActivity this$0;

        public void run()
        {
            ProgInfo proginfo = mProgInfo;
            proginfo.mTick = 1 + proginfo.mTick;
            if (mProgramming)
            {
                onBlockTimer();
                if (mProgInfo.mTick % 20 == 0)
                {
                    runOnUiThread(new Runnable() {

                        final ProgTimerTask this$1;

                        public void run()
                        {
                            displayStats();
                        }

            
            {
                this$1 = ProgTimerTask.this;
                super();
            }
                    });
                }
            }
        }

        private ProgTimerTask()
        {
            this$0 = FwUpdateActivity.this;
            super();
        }

    }


    public static final String EXTRA_MESSAGE = "ti.android.ble.sensortag.MESSAGE";
    private static final int FILE_ACTIVITY_REQ = 0;
    private static final int FILE_BUFFER_SIZE = 0x40000;
    private static final String FW_CUSTOM_DIRECTORY;
    private static final String FW_FILE_A = "SensorTagImgA.bin";
    private static final String FW_FILE_B = "SensorTagImgB.bin";
    private static final int GATT_WRITE_TIMEOUT = 100;
    private static final int HAL_FLASH_WORD_SIZE = 4;
    private static final int OAD_BLOCK_SIZE = 16;
    private static final int OAD_BUFFER_SIZE = 18;
    private static final short OAD_CONN_INTERVAL = 10;
    private static final int OAD_IMG_HDR_SIZE = 8;
    private static final short OAD_SUPERVISION_TIMEOUT = 100;
    private static final int PKT_INTERVAL = 20;
    private static String TAG = "FwUpdateActivity";
    private Button mBtnLoadA;
    private Button mBtnLoadB;
    private Button mBtnLoadC;
    private Button mBtnStart;
    private BluetoothGattCharacteristic mCharBlock;
    private BluetoothGattCharacteristic mCharConnReq;
    private BluetoothGattCharacteristic mCharIdentify;
    private List mCharListCc;
    private List mCharListOad;
    private BluetoothGattService mConnControlService;
    private DeviceActivity mDeviceActivity;
    private int mEstDuration;
    private final byte mFileBuffer[] = new byte[0x40000];
    private TextView mFileImage;
    private ImgHdr mFileImgHdr;
    private final BroadcastReceiver mGattUpdateReceiver = new BroadcastReceiver() {

        final FwUpdateActivity this$0;

        public void onReceive(Context context, Intent intent)
        {
            String s = intent.getAction();
            Log.d(FwUpdateActivity.TAG, (new StringBuilder()).append("action: ").append(s).toString());
            if ("ti.android.ble.common.ACTION_DATA_NOTIFY".equals(s))
            {
                byte abyte0[] = intent.getByteArrayExtra("ti.android.ble.common.EXTRA_DATA");
                if (intent.getStringExtra("ti.android.ble.common.EXTRA_UUID").equals(mCharIdentify.getUuid().toString()))
                {
                    mTargImgHdr.ver = Conversion.buildUint16(abyte0[1], abyte0[0]);
                    ImgHdr imghdr = mTargImgHdr;
                    char c;
                    if ((1 & mTargImgHdr.ver) == 1)
                    {
                        c = 'B';
                    } else
                    {
                        c = 'A';
                    }
                    imghdr.imgType = Character.valueOf(c);
                    mTargImgHdr.len = Conversion.buildUint16(abyte0[3], abyte0[2]);
                    displayImageInfo(mTargImage, mTargImgHdr);
                }
            } else
            if ("ti.android.ble.common.ACTION_DATA_WRITE".equals(s))
            {
                int i = intent.getIntExtra("ti.android.ble.common.EXTRA_STATUS", 0);
                if (i != 0)
                {
                    Log.e(FwUpdateActivity.TAG, (new StringBuilder()).append("Write failed: ").append(i).toString());
                    Toast.makeText(context, (new StringBuilder()).append("GATT error: status=").append(i).toString(), 0).show();
                    return;
                }
            }
        }

            
            {
                this$0 = FwUpdateActivity.this;
                super();
            }
    };
    private IntentFilter mIntentFilter;
    private BluetoothLeService mLeService;
    private TextView mLog;
    private final byte mOadBuffer[] = new byte[18];
    private BluetoothGattService mOadService;
    private ProgInfo mProgInfo;
    private boolean mProgramming;
    private ProgressBar mProgressBar;
    private TextView mProgressInfo;
    private boolean mServiceOk;
    private TextView mTargImage;
    private ImgHdr mTargImgHdr;
    private Timer mTimer;
    private TimerTask mTimerTask;

    public FwUpdateActivity()
    {
        mCharIdentify = null;
        mCharBlock = null;
        mCharConnReq = null;
        mDeviceActivity = null;
        mFileImgHdr = new ImgHdr();
        mTargImgHdr = new ImgHdr();
        mTimer = null;
        mProgInfo = new ProgInfo();
        mTimerTask = null;
        mServiceOk = false;
        mProgramming = false;
        mEstDuration = 0;
        Log.d(TAG, "construct");
        mDeviceActivity = DeviceActivity.getInstance();
        mLeService = BluetoothLeService.getInstance();
        mOadService = mDeviceActivity.getOadService();
        mConnControlService = mDeviceActivity.getConnControlService();
        mCharListOad = mOadService.getCharacteristics();
        mCharListCc = mConnControlService.getCharacteristics();
        boolean flag;
        if (mCharListOad.size() == 2 && mCharListCc.size() >= 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mServiceOk = flag;
        if (mServiceOk)
        {
            mCharIdentify = (BluetoothGattCharacteristic)mCharListOad.get(0);
            mCharBlock = (BluetoothGattCharacteristic)mCharListOad.get(1);
            mCharConnReq = (BluetoothGattCharacteristic)mCharListCc.get(1);
        }
    }

    private void displayImageInfo(TextView textview, ImgHdr imghdr)
    {
        int i = imghdr.ver >> 1;
        int j = 4 * imghdr.len;
        Object aobj[] = new Object[3];
        aobj[0] = imghdr.imgType;
        aobj[1] = Integer.valueOf(i);
        aobj[2] = Integer.valueOf(j);
        textview.setText(Html.fromHtml(String.format("Type: %c Ver.: %d Size: %d", aobj)));
    }

    private void displayStats()
    {
        int i = mProgInfo.iTimeElapsed / 1000;
        int j;
        Object aobj[];
        String s;
        StringBuilder stringbuilder;
        Object aobj1[];
        String s1;
        if (i > 0)
        {
            j = mProgInfo.iBytes / i;
        } else
        {
            j = 0;
        }
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(mEstDuration);
        s = String.format("Time: %d / %d sec", aobj);
        stringbuilder = (new StringBuilder()).append(s);
        aobj1 = new Object[2];
        aobj1[0] = Integer.valueOf(mProgInfo.iBytes);
        aobj1[1] = Integer.valueOf(j);
        s1 = stringbuilder.append(String.format("    Bytes: %d (%d/sec)", aobj1)).toString();
        mProgressInfo.setText(s1);
    }

    private boolean enableNotification(BluetoothGattCharacteristic bluetoothgattcharacteristic, boolean flag)
    {
        boolean flag1 = mLeService.setCharacteristicNotification(bluetoothgattcharacteristic, flag);
        if (flag1)
        {
            flag1 = mLeService.waitIdle(100);
        }
        return flag1;
    }

    private void getTargetImageInfo()
    {
        boolean flag = enableNotification(mCharIdentify, true);
        if (flag)
        {
            flag = writeCharacteristic(mCharIdentify, (byte)0);
        }
        if (flag)
        {
            flag = writeCharacteristic(mCharIdentify, (byte)1);
        }
        if (!flag)
        {
            Toast.makeText(this, "Failed to get target info", 1).show();
        }
    }

    private void initIntentFilter()
    {
        mIntentFilter = new IntentFilter();
        mIntentFilter.addAction("ti.android.ble.common.ACTION_DATA_NOTIFY");
        mIntentFilter.addAction("ti.android.ble.common.ACTION_DATA_WRITE");
    }

    private boolean loadFile(String s, boolean flag)
    {
        boolean flag1;
        flag1 = true;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        Object obj = getAssets().open(s);
_L1:
        ((InputStream) (obj)).read(mFileBuffer, 0, mFileBuffer.length);
        ((InputStream) (obj)).close();
        mFileImgHdr.ver = Conversion.buildUint16(mFileBuffer[5], mFileBuffer[4]);
        mFileImgHdr.len = Conversion.buildUint16(mFileBuffer[7], mFileBuffer[6]);
        ImgHdr imghdr = mFileImgHdr;
        IOException ioexception;
        char c;
        int i;
        TextView textview;
        String s1;
        if ((1 & mFileImgHdr.ver) == flag1)
        {
            c = 'B';
        } else
        {
            c = 'A';
        }
        imghdr.imgType = Character.valueOf(c);
        System.arraycopy(mFileBuffer, 8, mFileImgHdr.uid, 0, 4);
        displayImageInfo(mFileImage, mFileImgHdr);
        if (mFileImgHdr.imgType == mTargImgHdr.imgType)
        {
            flag1 = false;
        }
        if (flag1)
        {
            i = 0x7f07000a;
        } else
        {
            i = 0x7f07000b;
        }
        mFileImage.setTextAppearance(this, i);
        mBtnStart.setEnabled(flag1);
        mEstDuration = (4 * (20 * mFileImgHdr.len)) / 16 / 1000;
        displayStats();
        mLog.setText((new StringBuilder()).append("Image ").append(mFileImgHdr.imgType).append(" selected.\n").toString());
        textview = mLog;
        if (flag1)
        {
            s1 = "Ready to program device!\n";
        } else
        {
            s1 = "Incompatible image, select alternative!\n";
        }
        textview.append(s1);
        updateGui();
        return false;
        try
        {
            obj = new FileInputStream(new File(s));
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            mLog.setText((new StringBuilder()).append("File open failed: ").append(s).append("\n").toString());
            return false;
        }
          goto _L1
    }

    private void onBlockTimer()
    {
        if (mProgInfo.iBlocks >= mProgInfo.nBlocks) goto _L2; else goto _L1
_L1:
        mProgramming = true;
        mOadBuffer[0] = Conversion.loUint16(mProgInfo.iBlocks);
        mOadBuffer[1] = Conversion.hiUint16(mProgInfo.iBlocks);
        System.arraycopy(mFileBuffer, mProgInfo.iBytes, mOadBuffer, 2, 16);
        mCharBlock.setValue(mOadBuffer);
        if (!mLeService.writeCharacteristic(mCharBlock)) goto _L4; else goto _L3
_L3:
        ProgInfo proginfo1 = mProgInfo;
        proginfo1.iBlocks = (short)(1 + proginfo1.iBlocks);
        ProgInfo proginfo2 = mProgInfo;
        proginfo2.iBytes = 16 + proginfo2.iBytes;
        mProgressBar.setProgress((100 * mProgInfo.iBlocks) / mProgInfo.nBlocks);
_L6:
        ProgInfo proginfo = mProgInfo;
        proginfo.iTimeElapsed = 20 + proginfo.iTimeElapsed;
        if (!mProgramming)
        {
            runOnUiThread(new Runnable() {

                final FwUpdateActivity this$0;

                public void run()
                {
                    displayStats();
                    stopProgramming();
                }

            
            {
                this$0 = FwUpdateActivity.this;
                super();
            }
            });
        }
        return;
_L4:
        if (BluetoothLeService.getBtGatt() == null)
        {
            mProgramming = false;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        mProgramming = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void setConnectionParameters()
    {
        byte abyte0[] = new byte[8];
        abyte0[0] = Conversion.loUint16((short)10);
        abyte0[1] = Conversion.hiUint16((short)10);
        abyte0[2] = Conversion.loUint16((short)10);
        abyte0[3] = Conversion.hiUint16((short)10);
        abyte0[4] = 0;
        abyte0[5] = 0;
        abyte0[6] = Conversion.loUint16((short)100);
        abyte0[7] = Conversion.hiUint16((short)100);
        mCharConnReq.setValue(abyte0);
        if (mLeService.writeCharacteristic(mCharConnReq))
        {
            mLeService.waitIdle(100);
        }
    }

    private void startProgramming()
    {
        mLog.append("Programming started\n");
        mProgramming = true;
        updateGui();
        byte abyte0[] = new byte[12];
        abyte0[0] = Conversion.loUint16(mFileImgHdr.ver);
        abyte0[1] = Conversion.hiUint16(mFileImgHdr.ver);
        abyte0[2] = Conversion.loUint16(mFileImgHdr.len);
        abyte0[3] = Conversion.hiUint16(mFileImgHdr.len);
        System.arraycopy(mFileImgHdr.uid, 0, abyte0, 4, 4);
        mCharIdentify.setValue(abyte0);
        mLeService.writeCharacteristic(mCharIdentify);
        mProgInfo.reset();
        mTimer = null;
        mTimer = new Timer();
        mTimerTask = new ProgTimerTask();
        mTimer.scheduleAtFixedRate(mTimerTask, 0L, 20L);
    }

    private void stopProgramming()
    {
        mTimer.cancel();
        mTimer.purge();
        mTimerTask.cancel();
        mTimerTask = null;
        mProgramming = false;
        mProgressInfo.setText("");
        mProgressBar.setProgress(0);
        updateGui();
        if (mProgInfo.iBlocks == mProgInfo.nBlocks)
        {
            mLog.setText("Programming complete!\n");
            return;
        } else
        {
            mLog.append("Programming cancelled\n");
            return;
        }
    }

    private void updateGui()
    {
        if (mProgramming)
        {
            mBtnStart.setText(0x7f05002a);
            mBtnLoadA.setEnabled(false);
            mBtnLoadB.setEnabled(false);
        } else
        {
            mProgressBar.setProgress(0);
            mBtnStart.setText(0x7f050029);
            if (mFileImgHdr.imgType.charValue() == 'A')
            {
                mBtnLoadA.setEnabled(false);
                mBtnLoadB.setEnabled(true);
                return;
            }
            if (mFileImgHdr.imgType.charValue() == 'B')
            {
                mBtnLoadA.setEnabled(true);
                mBtnLoadB.setEnabled(false);
                return;
            }
        }
    }

    private boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic, byte byte0)
    {
        boolean flag = mLeService.writeCharacteristic(bluetoothgattcharacteristic, byte0);
        if (flag)
        {
            flag = mLeService.waitIdle(100);
        }
        return flag;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 0 && j == -1)
        {
            String s = intent.getStringExtra("ti.android.ble.devicemonitor.FILENAME");
            Log.d(TAG, (new StringBuilder()).append("return: ").append(s).toString());
            loadFile(s, false);
        }
    }

    public void onBackPressed()
    {
        Log.d(TAG, "onBackPressed");
        if (mProgramming)
        {
            Toast.makeText(this, 0x7f05002b, 1).show();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        Log.d(TAG, "onCreate");
        super.onCreate(bundle);
        setContentView(0x7f030001);
        ((ImageView)findViewById(0x102002c)).setPadding(10, 0, 20, 10);
        setTitle(0x7f050028);
        mProgressInfo = (TextView)findViewById(0x7f090008);
        mTargImage = (TextView)findViewById(0x7f090003);
        mFileImage = (TextView)findViewById(0x7f090004);
        mLog = (TextView)findViewById(0x7f09000a);
        mProgressBar = (ProgressBar)findViewById(0x7f090009);
        mBtnStart = (Button)findViewById(0x7f09000b);
        mBtnStart.setEnabled(false);
        mBtnLoadA = (Button)findViewById(0x7f090005);
        mBtnLoadB = (Button)findViewById(0x7f090006);
        mBtnLoadC = (Button)findViewById(0x7f090007);
        mBtnLoadA.setEnabled(mServiceOk);
        mBtnLoadB.setEnabled(mServiceOk);
        mBtnLoadC.setEnabled(mServiceOk);
        initIntentFilter();
    }

    public void onDestroy()
    {
        Log.d(TAG, "onDestroy");
        super.onDestroy();
        if (mTimerTask != null)
        {
            mTimerTask.cancel();
        }
        mTimer = null;
    }

    public void onLoad(View view)
    {
        if (view.getId() == 0x7f090005)
        {
            loadFile("SensorTagImgA.bin", true);
        } else
        {
            loadFile("SensorTagImgB.bin", true);
        }
        updateGui();
    }

    public void onLoadCustom(View view)
    {
        Intent intent = new Intent(this, ti/android/ble/sensortag/FileActivity);
        intent.putExtra("ti.android.ble.sensortag.MESSAGE", FW_CUSTOM_DIRECTORY);
        startActivityForResult(intent, 0);
    }

    protected void onPause()
    {
        Log.d(TAG, "onPause");
        super.onPause();
        unregisterReceiver(mGattUpdateReceiver);
    }

    protected void onResume()
    {
        Log.d(TAG, "onResume");
        super.onResume();
        if (mServiceOk)
        {
            registerReceiver(mGattUpdateReceiver, mIntentFilter);
            getTargetImageInfo();
            setConnectionParameters();
            return;
        } else
        {
            Toast.makeText(this, "OAD service initialisation failed", 1).show();
            return;
        }
    }

    public void onStart(View view)
    {
        if (mProgramming)
        {
            stopProgramming();
            return;
        } else
        {
            startProgramming();
            return;
        }
    }

    static 
    {
        FW_CUSTOM_DIRECTORY = Environment.DIRECTORY_DOWNLOADS;
    }











}
