package com.ts.tsclock;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.Settings;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ts.tsclock.FloatWindow;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes.dex */
public class ClockActivity extends Activity implements View.OnClickListener {
    private static final String ACTION_MULTI_SCREEN_ANIMATION = "com.ts.tsclock.ACTION_MULTI_SCREEN_ANIMATION";
    public static final String BROADCAST_LANCHER_FUNC_MUTE = "forfan.intent.action.MUTE";
    public static final String BROADCAST_LANCHER_FUNC_SCREENOFF = "forfan.intent.action.SCREENOFF";
    public static final String BROADCAST_LANCHER_FUNC_VOLUMEADD = "forfan.intent.action.VOLUMEUP";
    public static final String BROADCAST_LANCHER_FUNC_VOLUMEDEC = "forfan.intent.action.VOLUMEDN";
    public static final String MULTI_SCREEN_APPNAME = "com.ts.multiscreen.appname";
    private static final int NOTIFY_ID = 163;
    public static final String TAG = "ClockActivity";
    private KeyValueStore kvStore;
    Button mBtnAllapp;
    Button mBtnClose;
    Button mBtnHome;
    Button mBtnMusic;
    Button mBtnNavi;
    Button mBtnScreenMute;
    Button mBtnVideo;
    private CustomGridView[] mGridViews;
    private Handler mHandler;
    IconAdapter[] mIconAdapters;
    ImageView mIvPoint;
    private NotificationManager mNotificationManager;
    RelativeLayout mRvAppList;
    RelativeLayout mRvClock;
    RelativeLayout[] mRvs;
    TextView mTxtAm;
    TextView mTxtPm;
    ViewPager mViewPager;
    ViewPagerAdapter mViewPagerAdapter;
    ViewPager1 mVp1;
    List<View> mViews = new ArrayList();
    List<String[]> mStringLists = new ArrayList();
    private int[] times = {R.id.time1, R.id.time2, R.id.time3, R.id.time4};
    private int[] nums = {R.drawable.main_f_time_numb00, R.drawable.main_f_time_numb01, R.drawable.main_f_time_numb02, R.drawable.main_f_time_numb03, R.drawable.main_f_time_numb04, R.drawable.main_f_time_numb05, R.drawable.main_f_time_numb06, R.drawable.main_f_time_numb07, R.drawable.main_f_time_numb08, R.drawable.main_f_time_numb09};
    ImageView[] mIvTime = new ImageView[4];
    boolean mIsAppList = false;
    private Runnable mRunnable = new Runnable() { // from class: com.ts.tsclock.ClockActivity.1
        @Override // java.lang.Runnable
        public void run() {
            ClockActivity.this.setClock();
            ClockActivity.this.mHandler.postDelayed(this, 1000L);
        }
    };
    public BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.ts.tsclock.ClockActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.d(ClockActivity.TAG, "onReceive action = " + action);
            if (!ClockActivity.ACTION_MULTI_SCREEN_ANIMATION.equals(action)) {
                if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                    ClockActivity.this.updateAppData();
                } else if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                    ClockActivity.this.updateAppData();
                }
            }
        }
    };

    private void overrideButtons() {
        for (int i = 0; i < 5; i++) {
            String file = Environment.getExternalStorageDirectory().toString();
            File file2 = new File(file + "/Pictures/tsclock/btn" + i + "_up.png");
            File file3 = new File(file + "/Pictures/tsclock/btn" + i + "_dn.png");
            if (file2.exists() & file3.exists()) {
                Bitmap decodeFile = BitmapFactory.decodeFile(file2.getAbsolutePath());
                Bitmap decodeFile2 = BitmapFactory.decodeFile(file3.getAbsolutePath());
                Resources resources = getResources();
                BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, decodeFile);
                BitmapDrawable bitmapDrawable2 = new BitmapDrawable(resources, decodeFile2);
                StateListDrawable stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(new int[]{16842919}, bitmapDrawable2);
                stateListDrawable.addState(new int[0], bitmapDrawable);
                if (i == 0) {
                    this.mBtnHome.setBackground(stateListDrawable);
                } else if (i == 1) {
                    this.mBtnNavi.setBackground(stateListDrawable);
                } else if (i == 2) {
                    this.mBtnMusic.setBackground(stateListDrawable);
                } else if (i == 3) {
                    this.mBtnVideo.setBackground(stateListDrawable);
                } else if (i == 4) {
                    this.mBtnAllapp.setBackground(stateListDrawable);
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        KeyValueStore keyValueStore = this.kvStore;
        if (id == R.id.btn_home) {
            this.mVp1.setVisibility(0);
            this.mViewPager.setVisibility(8);
        } else if (id == R.id.btn_navi) {
            String value = keyValueStore.getValue("btn1pkg");
            String value2 = keyValueStore.getValue("btn1class");
            sendMultiScreenBroadcast(value != null ? value : "com.ts.MainUI", value2 != null ? value2 : "com.ts.main.navi.NaviMainActivity");
        } else if (id == R.id.btn_music) {
            String value3 = keyValueStore.getValue("btn2pkg");
            String value4 = keyValueStore.getValue("btn2class");
            sendMultiScreenBroadcast(value3 != null ? value3 : "com.ts.dvdplayer", value4 != null ? value4 : "com.ts.dvdplayer.SDActivity");
        } else if (id == R.id.btn_video) {
            String value5 = keyValueStore.getValue("btn3pkg");
            String value6 = keyValueStore.getValue("btn3class");
            sendMultiScreenBroadcast(value5 != null ? value5 : "com.ts.dvdplayer", value6 != null ? value6 : "com.ts.dvdplayer.USBActivity");
        } else if (id == R.id.btn_allapp) {
            this.mVp1.setVisibility(8);
            this.mViewPager.setVisibility(0);
        } else if (id == R.id.btn_close) {
            sendMainUIBroadcast("forfan.intent.action.SCREENOFF");
        }
    }

    private void showNotification() {
        Notification.Builder builder;
        Log.d(TAG, "showNotification");
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        if (Build.VERSION.SDK_INT == 23) {
            builder = new Notification.Builder(this);
            builder.setContentTitle("TsClock");
        } else {
            builder = new Notification.Builder(this, "TsClock");
            this.mNotificationManager.createNotificationChannel(new NotificationChannel("TsClock", "TsClock", 0));
        }
        Notification notification = builder.setSmallIcon(R.drawable.ic_launcher).setOngoing(true).build();
        this.mNotificationManager.notify(NOTIFY_ID, notification);
    }

    private void cancelNotification() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        notificationManager.cancel(NOTIFY_ID);
    }

    void updateAppData() {
        int page;
        this.mViews.clear();
        this.mStringLists.clear();
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        PackageManager pm = getPackageManager();
        Intent mIntent = new Intent("android.intent.action.MAIN", (Uri) null);
        mIntent.addCategory("android.intent.category.LAUNCHER");
        List<String> ignoreLists = getMultiScreenControlLists();
        List<ResolveInfo> listAllApps = pm.queryIntentActivities(mIntent, 0);
        for (ResolveInfo resolveInfo : listAllApps) {
            String packageName = resolveInfo.activityInfo.packageName;
            String className = resolveInfo.activityInfo.name;
            if (!ignoreLists.contains(packageName)) {
                this.mStringLists.add(new String[]{packageName, className});
            }
        }
        this.mStringLists.add(0, new String[]{"com.ts.dvdplayer", "com.ts.dvdplayer.USBActivity"});
        this.mStringLists.add(0, new String[]{"com.ts.dvdplayer", "com.ts.dvdplayer.SDActivity"});
        int size = this.mStringLists.size();
        if (size % 14 == 0) {
            page = size / 14;
        } else {
            page = (size / 14) + 1;
        }
        Log.d("lh", "page = " + page);
        Log.d("lh", "size = " + size);
        this.mRvs = new RelativeLayout[page];
        this.mGridViews = new CustomGridView[page];
        this.mIconAdapters = new IconAdapter[page];
        this.mViewPager = (ViewPager) findViewById(R.id.vp_applist);
        for (int i = 0; i < page; i++) {
            this.mRvs[i] = (RelativeLayout) layoutInflater.inflate(R.layout.viewpager_item, (ViewGroup) null);
            this.mViews.add(this.mRvs[i]);
            this.mIconAdapters[i] = new IconAdapter(this);
            this.mGridViews[i] = (CustomGridView) this.mRvs[i].findViewById(R.id.gv_applist);
            this.mGridViews[i].setAdapter((ListAdapter) this.mIconAdapters[i]);
            final int index = i;
            this.mGridViews[i].setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ts.tsclock.ClockActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    String[] strings = ClockActivity.this.mIconAdapters[index].mLists.get(position);
                    String packageName2 = strings[0];
                    String className2 = strings[1];
                    Log.d("haha", "pacakgeName = " + packageName2);
                    Log.d("haha", "className = " + className2);
                    ClockActivity.this.sendMultiScreenBroadcast(packageName2, className2);
                }
            });
            int start = i * 14;
            int end = (i * 14) + 14;
            if (end > this.mStringLists.size()) {
                end = this.mStringLists.size();
            }
            this.mIconAdapters[i].update(this.mStringLists.subList(start, end));
        }
        this.mViewPagerAdapter.updateData(this.mViews);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d(TAG, "onCreate");
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.activity_clock);
        initView();
        initData();
    }

    void startScreenProtect() {
        Log.d("test", "startScreenProtect");
        Intent intent = new Intent();
        intent.setClass(this, ScreenProtectActivity.class);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    void initData() {
        this.mHandler = new Handler();
        this.mHandler.post(this.mRunnable);
        BackBox.getInstance().initWindow(this);
        BackBox.getInstance().show();
        FloatWindow.getInstance().initWindow(this);
        FloatWindow.getInstance().setOnClickBackHome(new FloatWindow.OnClickBackHome() { // from class: com.ts.tsclock.ClockActivity.4
            @Override // com.ts.tsclock.FloatWindow.OnClickBackHome
            public void onBackHome() {
                ClockActivity.this.mVp1.setVisibility(0);
                ClockActivity.this.mViewPager.setVisibility(8);
            }
        });
        MultiScreenWindow.getInstance().initWindow(this);
        MultiScreenWindow.getInstance().hide();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_MULTI_SCREEN_ANIMATION);
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.mReceiver, intentFilter);
        try {
            this.kvStore = new KeyValueStore(new File(Environment.getExternalStorageDirectory(), "/buttonMapping.ini").getPath());
        } catch (Exception e) {
            this.kvStore = new KeyValueStore();
        }
        overrideButtons();
    }

    @Override // android.app.Activity
    protected void onResume() {
        BackBox.getInstance().show();
        FloatWindow.getInstance().hide();
        FloatWindow.getInstance().setAppList(true);
        overridePendingTransition(0, 0);
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        FloatWindow.getInstance().setAppList(false);
        overridePendingTransition(0, 0);
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy");
        unregisterReceiver(this.mReceiver);
    }

    void initView() {
        int page;
        this.mRvClock = (RelativeLayout) findViewById(R.id.rv_clock);
        this.mVp1 = new ViewPager1(this);
        RelativeLayout.LayoutParams mLayoutParams = new RelativeLayout.LayoutParams(1449, -1);
        mLayoutParams.leftMargin = 240;
        this.mRvClock.addView(this.mVp1, mLayoutParams);
        this.mRvAppList = (RelativeLayout) findViewById(R.id.rv_applist);
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        PackageManager pm = getPackageManager();
        Intent mIntent = new Intent("android.intent.action.MAIN", (Uri) null);
        mIntent.addCategory("android.intent.category.LAUNCHER");
        List<String> ignoreLists = getMultiScreenControlLists();
        List<ResolveInfo> listAllApps = pm.queryIntentActivities(mIntent, 0);
        for (ResolveInfo resolveInfo : listAllApps) {
            String packageName = resolveInfo.activityInfo.packageName;
            String className = resolveInfo.activityInfo.name;
            if (!ignoreLists.contains(packageName)) {
                this.mStringLists.add(new String[]{packageName, className});
            }
        }
        this.mStringLists.add(0, new String[]{"com.ts.dvdplayer", "com.ts.dvdplayer.USBActivity"});
        this.mStringLists.add(0, new String[]{"com.ts.dvdplayer", "com.ts.dvdplayer.SDActivity"});
        int size = this.mStringLists.size();
        if (size % 14 == 0) {
            page = size / 14;
        } else {
            page = (size / 14) + 1;
        }
        Log.d("lh", "page = " + page);
        this.mRvs = new RelativeLayout[page];
        this.mGridViews = new CustomGridView[page];
        this.mIconAdapters = new IconAdapter[page];
        this.mViewPager = (ViewPager) findViewById(R.id.vp_applist);
        this.mViewPager.setVisibility(8);
        for (int i = 0; i < page; i++) {
            this.mRvs[i] = (RelativeLayout) layoutInflater.inflate(R.layout.viewpager_item, (ViewGroup) null);
            this.mViews.add(this.mRvs[i]);
            this.mIconAdapters[i] = new IconAdapter(this);
            this.mGridViews[i] = (CustomGridView) this.mRvs[i].findViewById(R.id.gv_applist);
            this.mGridViews[i].setAdapter((ListAdapter) this.mIconAdapters[i]);
            final int index = i;
            this.mGridViews[i].setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ts.tsclock.ClockActivity.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    String[] strings = ClockActivity.this.mIconAdapters[index].mLists.get(position);
                    String packageName2 = strings[0];
                    String className2 = strings[1];
                    Log.d("haha", "pacakgeName = " + packageName2);
                    Log.d("haha", "className = " + className2);
                    ClockActivity.this.sendMultiScreenBroadcast(packageName2, className2);
                }
            });
            int start = i * 14;
            int end = (i * 14) + 14;
            if (end > this.mStringLists.size()) {
                end = this.mStringLists.size();
            }
            this.mIconAdapters[i].update(this.mStringLists.subList(start, end));
        }
        this.mViewPagerAdapter = new ViewPagerAdapter(this.mViews);
        this.mViewPager.setAdapter(this.mViewPagerAdapter);
        this.mIvPoint = (ImageView) findViewById(R.id.colon);
        for (int i2 = 0; i2 < this.times.length; i2++) {
            this.mIvTime[i2] = (ImageView) findViewById(this.times[i2]);
        }
        this.mTxtAm = (TextView) findViewById(R.id.txt_am);
        this.mTxtPm = (TextView) findViewById(R.id.txt_pm);
        this.mBtnHome = (Button) findViewById(R.id.btn_home);
        this.mBtnNavi = (Button) findViewById(R.id.btn_navi);
        this.mBtnMusic = (Button) findViewById(R.id.btn_music);
        this.mBtnVideo = (Button) findViewById(R.id.btn_video);
        this.mBtnAllapp = (Button) findViewById(R.id.btn_allapp);
        this.mBtnClose = (Button) findViewById(R.id.btn_close);
        this.mBtnHome.setOnClickListener(this);
        this.mBtnNavi.setOnClickListener(this);
        this.mBtnMusic.setOnClickListener(this);
        this.mBtnVideo.setOnClickListener(this);
        this.mBtnAllapp.setOnClickListener(this);
        this.mBtnClose.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMultiScreenBroadcast(String packageName, String className) {
        Intent intent = new Intent();
        intent.setAction("com.ts.multiscreen.appname");
        intent.putExtra("packagename", packageName);
        intent.putExtra("classname", className);
        sendBroadcast(intent);
    }

    private void sendMainUIBroadcast(String action) {
        Log.d(TAG, "sendMainUIBroadcast action:" + action);
        Intent intent = new Intent();
        intent.setAction(action);
        sendBroadcast(intent);
    }

    private List<String> getMultiScreenControlLists() {
        ContentResolver contentResolver = getContentResolver();
        Uri uri = Uri.parse("content://com.ts.tsclock.provider/multi_screen_control");
        Cursor cursor = contentResolver.query(uri, null, null, null, null);
        List<String> lists = new ArrayList<>();
        if (cursor != null) {
            int count = cursor.getCount();
            Debug.d(TAG, "getMultiScreenControl count = " + count);
            if (count > 0) {
                while (cursor.moveToNext()) {
                    String packageName = cursor.getString(cursor.getColumnIndex("packagename"));
                    Debug.d(TAG, "getMultiScreenControl packageName = " + packageName);
                    lists.add(packageName);
                }
            }
        } else {
            Debug.d(TAG, "getMultiScreenControl cursor is null");
        }
        return lists;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClock() {
        boolean is12;
        int h;
        String clock;
        ContentResolver mResolver = getContentResolver();
        Calendar mCalendar = Calendar.getInstance();
        if (mResolver != null) {
            String timeFormat = Settings.System.getString(mResolver, "time_12_24");
            if (timeFormat != null) {
                if (timeFormat.equals("24")) {
                    is12 = false;
                    h = Calendar.getInstance().get(11);
                    int m = Calendar.getInstance().get(12);
                    if (h < 10) {
                        if (m < 10) {
                            clock = "0" + h + "0" + m;
                        } else {
                            clock = "0" + h + m;
                        }
                    } else if (m < 10) {
                        clock = String.valueOf(h) + "0" + m;
                    } else {
                        clock = new StringBuilder().append(h).append(m).toString();
                    }
                } else {
                    is12 = true;
                    h = Calendar.getInstance().get(10);
                    int m2 = Calendar.getInstance().get(12);
                    if (h == 0) {
                        h = 12;
                    }
                    if (h < 10) {
                        if (h == 0) {
                            if (m2 < 10) {
                                clock = "120" + m2;
                            } else {
                                clock = "12" + m2;
                            }
                        } else if (m2 < 10) {
                            clock = "0" + h + "0" + m2;
                        } else {
                            clock = "0" + h + m2;
                        }
                    } else if (m2 < 10) {
                        clock = String.valueOf(h) + "0" + m2;
                    } else {
                        clock = new StringBuilder().append(h).append(m2).toString();
                    }
                }
            } else {
                is12 = true;
                h = Calendar.getInstance().get(10);
                int m3 = Calendar.getInstance().get(12);
                if (h == 0) {
                    h = 12;
                }
                if (h < 10) {
                    if (h == 0) {
                        if (m3 < 10) {
                            clock = "120" + m3;
                        } else {
                            clock = "12" + m3;
                        }
                    } else if (m3 < 10) {
                        clock = "0" + h + "0" + m3;
                    } else {
                        clock = "0" + h + m3;
                    }
                } else if (m3 < 10) {
                    clock = String.valueOf(h) + "0" + m3;
                } else {
                    clock = new StringBuilder().append(h).append(m3).toString();
                }
            }
            Log.d("tsclock", "clock = " + clock);
            if (is12) {
                if (h < 10) {
                    this.mIvTime[0].setVisibility(8);
                } else {
                    this.mIvTime[0].setVisibility(0);
                }
                int r = mCalendar.get(9);
                if (r == 0) {
                    this.mTxtAm.setVisibility(0);
                    this.mTxtPm.setVisibility(8);
                } else {
                    this.mTxtAm.setVisibility(8);
                    this.mTxtPm.setVisibility(0);
                }
            } else {
                this.mIvTime[0].setVisibility(0);
                this.mTxtAm.setVisibility(8);
                this.mTxtPm.setVisibility(8);
            }
            if (clock != null) {
                for (int i = 0; i < clock.length(); i++) {
                    int num = Integer.parseInt(clock.substring(i, i + 1));
                    this.mIvTime[i].setImageResource(this.nums[num]);
                }
            }
        }
    }

    private void sendBroadcast() {
        Log.d(TAG, "sendBroadcast");
        Intent intent = new Intent("android.intent.action.CLOCK_SCREEN_MUTE");
        sendBroadcast(intent);
    }

    public Intent createExplicitFromImplicitIntent(Context context, Intent implicitIntent) {
        PackageManager pm = context.getPackageManager();
        List<ResolveInfo> resolveInfo = pm.queryIntentServices(implicitIntent, 0);
        if (resolveInfo == null || resolveInfo.size() != 1) {
            return null;
        }
        ResolveInfo serviceInfo = resolveInfo.get(0);
        String packageName = serviceInfo.serviceInfo.packageName;
        String className = serviceInfo.serviceInfo.name;
        ComponentName component = new ComponentName(packageName, className);
        Intent explicitIntent = new Intent(implicitIntent);
        explicitIntent.setComponent(component);
        return explicitIntent;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        return true;
    }
}