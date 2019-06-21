.class public Lcom/android/systemui/power/OverHeatProtector;
.super Ljava/lang/Object;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static ENABLE:Z

.field private static ENABLE_ANTI_FALSE:Z

.field private static ENABLE_SKIN:Z

.field private static mInstance:Lcom/android/systemui/power/OverHeatProtector;


# instance fields
.field private ANTI_FALSE_COUNT:I

.field private final DELAY_TIME:I

.field private final DELAY_TIME_TO_SHUTDOWN:I

.field private INTERVAL_ORANGE:J

.field private INTERVAL_RED:J

.field private TEMPERATURE_ORANGE:I

.field private TEMPERATURE_PURPLE:I

.field private TEMPERATURE_RED:I

.field private TEMPERATURE_SKIN:I

.field private TEMPERATURE_SKIN_PATH:Ljava/lang/String;

.field final mAlertRunnable:Ljava/lang/Runnable;

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCoolProcessingLocked:I

.field private mCurrentChangeTrendLocked:I

.field private mCurrentCount:I

.field private final mDefaultBacklight:I

.field private mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastBatteryTemperatureLocked:I

.field private mLastOrangeTime:J

.field private mLastRedTime:J

.field private mLastResumeUnderOrangeTime:J

.field private mLastResumeUnderRedTime:J

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mTimer:Landroid/os/CountDownTimer;

.field private final mUiHandler:Landroid/os/Handler;

.field private obs:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 67
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    .line 68
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x8a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    .line 93
    new-array v1, v0, [I

    const/16 v3, 0x8b

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    .line 126
    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mUiHandler:Landroid/os/Handler;

    .line 88
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 89
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 90
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 94
    const-string v0, "/sys/class/thermal/thermal_zone68/temp"

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    .line 95
    const v0, 0xbb80

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    .line 112
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    .line 113
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    .line 115
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    .line 116
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    .line 118
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderOrangeTime:J

    .line 120
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderRedTime:J

    .line 123
    const-wide/32 v1, 0x1d4c0

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    .line 124
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    .line 128
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 130
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    .line 135
    const/16 v1, 0x2904

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->DELAY_TIME:I

    .line 136
    const/16 v1, 0x157c

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->DELAY_TIME_TO_SHUTDOWN:I

    .line 364
    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/OverHeatProtector$2;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/OverHeatProtector$3;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    .line 145
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 148
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-class v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 149
    const-class v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 150
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 151
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    .line 152
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    .line 153
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 155
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, v1}, Lcom/android/systemui/power/OverHeatProtector$1;-><init>(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    .line 192
    const-string v2, "op_temperature_orange"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 194
    const-string v2, "op_temperature_red"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x10e0083

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 201
    .local v2, "orange":I
    const v3, 0x10e0085

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 202
    .local v3, "red":I
    const v4, 0x10e0084

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 203
    .local v4, "purple":I
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    if-lez v4, :cond_0

    .line 204
    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 205
    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 206
    iput v4, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    goto :goto_0

    .line 208
    :cond_0
    const-string v5, "OverHeatProtector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find resources...[o="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    const-string v5, "op_temperature_orange"

    iget v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 212
    const-string v5, "op_temperature_red"

    iget v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 213
    const-string v5, "op_temperature_purple"

    iget v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 215
    sget-boolean v5, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eqz v5, :cond_1

    .line 216
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/power/OverHeatProtector;->initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    .line 220
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/power/OverHeatProtectorUtils;->init(Landroid/content/Context;)V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->updatePolicy(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->orangeAlertLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->redAlertLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->purpleAlertLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->dismissDialogOrNotification(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/OverHeatProtector;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/power/OverHeatProtector;)Lcom/android/systemui/power/OverHeatAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/power/OverHeatProtector;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/power/OverHeatProtector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/OverHeatProtector;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->antiFalsePositiveDetector(I)Z

    move-result v0

    return v0
.end method

.method private antiFalsePositiveDetector(I)Z
    .locals 4
    .param p1, "temperature"    # I

    .line 380
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 381
    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antiFalsePositiveDetector  ANTI_FALSE_COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 383
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    if-lt p1, v0, :cond_2

    .line 384
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    goto :goto_0

    .line 386
    :cond_2
    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 388
    :goto_0
    return v1

    .line 390
    :cond_3
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    if-lt p1, v0, :cond_4

    .line 391
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    goto :goto_1

    .line 393
    :cond_4
    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 396
    :goto_1
    return v3
.end method

.method private applyPolicy(I)V
    .locals 2
    .param p1, "type"    # I

    .line 561
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/power/OverHeatProtector$4;-><init>(Lcom/android/systemui/power/OverHeatProtector;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    return-void
.end method

.method private checkIfSkinTemperatureAlert()Z
    .locals 6

    .line 795
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "tempStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 798
    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfSkinTemperatureAlert  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return v1

    .line 801
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 802
    .local v2, "temp":I
    sget-boolean v3, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 803
    const-string v3, "OverHeatProtector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfSkinTemperatureAlert   ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_2
    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    if-lt v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private clearAllRunningProcessesLocked()V
    .locals 2

    .line 777
    const-string v0, "OverHeatProtector"

    const-string v1, "clearAllRunningProcesses"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->killAllRunningProcesses()V

    .line 781
    return-void
.end method

.method private computeCurrentTrendLocked(I)V
    .locals 3
    .param p1, "currentTemperature"    # I

    .line 455
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    if-le p1, v0, :cond_0

    .line 456
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    goto :goto_0

    .line 457
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    if-ge p1, v0, :cond_1

    .line 458
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    goto :goto_0

    .line 460
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    .line 462
    :goto_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 463
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeCurrentTrendLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2
    return-void
.end method

.method private disableFlashLightLocked()V
    .locals 2

    .line 772
    const-string v0, "OverHeatProtector"

    const-string v1, "disableFlashLight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 774
    return-void
.end method

.method private disableHotspotLocked()V
    .locals 2

    .line 745
    const-string v0, "OverHeatProtector"

    const-string v1, "disableHotspot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 747
    return-void
.end method

.method private dismissDialogOrNotification(I)V
    .locals 2
    .param p1, "type"    # I

    .line 692
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 694
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->dismiss()V

    .line 698
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    .line 699
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    .line 701
    :cond_1
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    sget-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/systemui/power/OverHeatProtector;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/OverHeatProtector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    .line 141
    :cond_0
    sget-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    return-object v0
.end method

.method private initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 228
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string v1, "initSkinPolicy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    const-string v0, "op_temperature_skin"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 231
    const-string v0, "op_temperature_skinpath"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 234
    const v0, 0x10e0086

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 235
    .local v0, "skin":I
    const v1, 0x1040175

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "skinPath":Ljava/lang/String;
    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    .line 237
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    .line 238
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_1
    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find resources...[ s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    const-string v2, "op_temperature_skin"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    .line 244
    const-string v2, "op_temperature_skinpath"

    invoke-static {p1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_2

    .line 246
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    .line 248
    :cond_2
    return-void
.end method

.method public static isEnable()Z
    .locals 1

    .line 224
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    return v0
.end method

.method private notifyCurrentOverHeatStateLocked(I)V
    .locals 3
    .param p1, "type"    # I

    .line 265
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    .line 266
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_overheat_temperature_type"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    return-void
.end method

.method private orangeAlertLocked()V
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_orange_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->disableHotspotLocked()V

    .line 724
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->reduceBrightnessLocked()V

    .line 725
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->disableFlashLightLocked()V

    .line 726
    return-void
.end method

.method private purpleAlertLocked()V
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_purple_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 741
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "OverHeatProtector trigger..."

    invoke-virtual {v1, v0, v2, v0}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 742
    return-void
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 809
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFile path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 812
    const-string v1, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFile path:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-object v2

    .line 815
    :cond_1
    const/4 v1, 0x0

    .line 816
    .local v1, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 817
    .local v3, "fr":Ljava/io/FileReader;
    nop

    .line 819
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 820
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 821
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 826
    nop

    .line 827
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_0

    .line 830
    :catch_0
    move-exception v4

    goto :goto_1

    .line 828
    :goto_0
    nop

    .line 829
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 830
    :goto_1
    nop

    .line 831
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 833
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 832
    :cond_2
    :goto_2
    goto :goto_3

    .line 825
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 822
    :catch_1
    move-exception v4

    .line 823
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_3

    .line 827
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 828
    :cond_3
    if-eqz v2, :cond_2

    .line 829
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 834
    :goto_3
    return-object v1

    .line 825
    :goto_4
    nop

    .line 826
    if-eqz v3, :cond_4

    .line 827
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_5

    .line 830
    :catch_2
    move-exception v5

    goto :goto_6

    .line 828
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 829
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 830
    :goto_6
    nop

    .line 831
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 832
    :cond_5
    :goto_7
    throw v4
.end method

.method private redAlertLocked()V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_red_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 731
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->orangeAlertLocked()V

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->clearAllRunningProcessesLocked()V

    .line 734
    return-void
.end method

.method private reduceBrightnessLocked()V
    .locals 5

    .line 750
    const-string v0, "OverHeatProtector"

    const-string v1, "reduceBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 755
    .local v0, "brightness":I
    iget v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    if-le v0, v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 760
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 769
    .end local v0    # "brightness":I
    :cond_0
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 10
    .param p1, "type"    # I

    .line 582
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    if-nez v0, :cond_4

    if-gtz p1, :cond_0

    goto/16 :goto_1

    .line 586
    :cond_0
    new-instance v0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;-><init>(Lcom/android/systemui/power/OverHeatProtector;Lcom/android/systemui/power/OverHeatProtector$1;)V

    .line 588
    .local v0, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/systemui/power/OverHeatAlertDialog;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    .line 589
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v2, 0x7f0807ac

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setIcon(I)V

    .line 590
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 591
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setCancelable(Z)V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v2, 0x7f110479

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setTitle(I)V

    .line 595
    const/4 v1, 0x1

    const v2, 0x7f110474

    if-ne p1, v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 597
    .local v1, "button_content":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 598
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f110475

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(I)V

    .line 599
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$5;

    const-wide/16 v5, 0x2904

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/power/OverHeatProtector$5;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 613
    invoke-virtual {v2}, Lcom/android/systemui/power/OverHeatProtector$5;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 614
    .end local v1    # "button_content":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 615
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 616
    .restart local v1    # "button_content":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 617
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f110478

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(I)V

    .line 618
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$6;

    const-wide/16 v5, 0x2904

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/power/OverHeatProtector$6;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 632
    invoke-virtual {v2}, Lcom/android/systemui/power/OverHeatProtector$6;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 633
    .end local v1    # "button_content":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 634
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v2, 0x7f110477

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 635
    .local v1, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v2, v1}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f110476

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 637
    new-instance v9, Lcom/android/systemui/power/OverHeatProtector$7;

    const-wide/16 v4, 0x157c

    const-wide/16 v6, 0x3e8

    move-object v2, v9

    move-object v3, p0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/power/OverHeatProtector$7;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 654
    invoke-virtual {v9}, Lcom/android/systemui/power/OverHeatProtector$7;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    .line 655
    .end local v1    # "content":Ljava/lang/String;
    nop

    .line 658
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v1}, Lcom/android/systemui/power/OverHeatAlertDialog;->show()V

    .line 659
    return-void

    .line 656
    :cond_3
    return-void

    .line 584
    .end local v0    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    :goto_1
    return-void
.end method

.method private showNotification(I)V
    .locals 11
    .param p1, "type"    # I

    .line 662
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 663
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 664
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    .local v1, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 666
    .local v2, "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    const-string v3, "1"

    .line 667
    .local v3, "channelID":Ljava/lang/String;
    const-string v4, "channel_name"

    .line 670
    .local v4, "channelName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 671
    iget-object v5, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v6, 0x7f11047b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "content":Ljava/lang/String;
    goto :goto_0

    .line 675
    .end local v5    # "content":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v6, 0x7f11047a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 677
    .restart local v5    # "content":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 678
    new-instance v6, Landroid/app/NotificationChannel;

    const/4 v7, 0x4

    invoke-direct {v6, v3, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 679
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 680
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f0807ac

    .line 681
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 682
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 683
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 684
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 685
    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 686
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 687
    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 688
    const-string v7, "overheat"

    const/16 v8, 0xa

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 689
    return-void
.end method

.method private triggerOrangeDownLocked()V
    .locals 2

    .line 533
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerOrangeDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderOrangeTime:J

    .line 535
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 539
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 541
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    .line 542
    return-void
.end method

.method private triggerOrangeUpLocked()Z
    .locals 8

    .line 497
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerOrangeUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->checkIfSkinTemperatureAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 499
    return v1

    .line 501
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 502
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    iget-wide v6, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 503
    const-string v0, "OverHeatProtector"

    const-string v4, "Temperature fluctuation nearby ORANGE!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v1

    .line 506
    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 509
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 510
    return v0
.end method

.method private triggerPurpleDownLocked()V
    .locals 2

    .line 515
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerPurpleDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 518
    return-void
.end method

.method private triggerPurpleUpLocked()Z
    .locals 2

    .line 469
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerPurpleUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 473
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method private triggerRedDownLocked()V
    .locals 2

    .line 522
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerRedDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderRedTime:J

    .line 527
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 529
    return-void
.end method

.method private triggerRedUpLocked()Z
    .locals 8

    .line 479
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerRedUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->checkIfSkinTemperatureAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 481
    return v1

    .line 483
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 484
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    iget-wide v6, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 485
    const-string v0, "OverHeatProtector"

    const-string v4, "Temperature fluctuation nearby RED!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v1

    .line 488
    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    .line 490
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 491
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method private updatePolicy(I)V
    .locals 6
    .param p1, "temperature"    # I

    .line 401
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->computeCurrentTrendLocked(I)V

    .line 404
    const/4 v1, 0x1

    .line 405
    .local v1, "needRecordCurrentTemperature":Z
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge p1, v2, :cond_3

    .line 406
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    .line 407
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-nez v2, :cond_0

    .line 408
    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 409
    const-string v2, "OverHeatProtector"

    const-string v3, "Thanks God. Everything is okay."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 410
    :cond_0
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v5, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 412
    :cond_1
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v4, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 415
    :cond_2
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 422
    :cond_3
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    if-ge p1, v2, :cond_7

    .line 424
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ge v2, v5, :cond_4

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeUpLocked()Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 426
    :cond_4
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    .line 428
    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 429
    const-string v2, "OverHeatProtector"

    const-string v5, "Yep, now the temperature has dropped into orange"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_5
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v4, :cond_6

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    goto :goto_0

    .line 432
    :cond_6
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    goto :goto_0

    .line 436
    :cond_7
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    if-ge p1, v2, :cond_9

    .line 438
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-ne v2, v5, :cond_8

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ge v2, v4, :cond_8

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedUpLocked()Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 440
    :cond_8
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 442
    const-string v2, "OverHeatProtector"

    const-string v3, "Yeh, this couldn\'t happend!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    goto :goto_0

    .line 446
    :cond_9
    const-string v2, "OverHeatProtector"

    const-string v3, "Okay, this could be real dangerous."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleUpLocked()Z

    move-result v2

    move v1, v2

    .line 450
    :cond_a
    :goto_0
    if-eqz v1, :cond_b

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    .line 451
    .end local v1    # "needRecordCurrentTemperature":Z
    :cond_b
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public setAntiFalseCount(I)V
    .locals 3
    .param p1, "count"    # I

    .line 356
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAntiFalseCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    if-lez p1, :cond_1

    .line 360
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    .line 362
    :cond_1
    return-void
.end method

.method public setAntiFalseEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 347
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAntiFalseEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    .line 351
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    if-nez v0, :cond_1

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 353
    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 251
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    if-eq v0, p1, :cond_1

    .line 255
    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    .line 256
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    if-nez v0, :cond_1

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->updatePolicy(I)V

    .line 261
    :cond_1
    return-void
.end method

.method public setOrangeInterval(I)V
    .locals 8
    .param p1, "second"    # I

    .line 298
    if-gtz p1, :cond_0

    return-void

    .line 299
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    .line 300
    .local v0, "millis":J
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 301
    :try_start_0
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    .line 302
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v3, "overheat_protector_orange_interval"

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 304
    return-void

    .line 302
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setOrangeTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 271
    if-gtz p1, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 274
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_orange"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPurpleTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 289
    if-gtz p1, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 292
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_purple"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRedInterval(I)V
    .locals 8
    .param p1, "second"    # I

    .line 308
    if-gtz p1, :cond_0

    return-void

    .line 309
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    .line 310
    .local v0, "millis":J
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_0
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    .line 312
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v3, "overheat_protector_red_interval"

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 314
    return-void

    .line 312
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setRedTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 280
    if-gtz p1, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 283
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_red"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSkinEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 317
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSkinEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eq v0, p1, :cond_1

    .line 321
    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    .line 322
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/power/OverHeatProtector;->initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    .line 326
    :cond_1
    return-void
.end method

.method public setSkinPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 339
    if-nez p1, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_skinpath"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSkinTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 330
    if-gtz p1, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    .line 333
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_skin"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
