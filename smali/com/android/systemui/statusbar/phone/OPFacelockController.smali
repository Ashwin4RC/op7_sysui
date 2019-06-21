.class public Lcom/android/systemui/statusbar/phone/OPFacelockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OPFacelockController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;,
        Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static FACELOCK_PACKAGE_NAME:Ljava/lang/String;

.field private static FACELOCK_SERVICE_NAME:Ljava/lang/String;

.field private static FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

.field private static MAX_MOTOR_UP_DURATION:I

.field private static MAX_MOTOR_UP_TIMES:I

.field private static MOTOR_UP_LIMIT_RESULT:I


# instance fields
.field private final IS_LOD:Z

.field private LIGHTING_MODE_BRIGHTNESS:I

.field private LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

.field private LIGHTING_MODE_SENSOR_THRESHOLD:I

.field private final MSG_CAMERA_ERROR:I

.field private final MSG_FAIL:I

.field private final MSG_MOTOR_UP_LOCKED_ERROR:I

.field private final MSG_NO_FACE:I

.field private final MSG_NO_PERMISSION:I

.field private final MSG_RESET_FACELOCK_PENDING:I

.field private final MSG_RESET_LOCKOUT:I

.field private final MSG_SKIP_BOUNCER:I

.field private final MSG_START_FACELOCK:I

.field private final MSG_STOP_FACELOCK:I

.field private final MSG_UNLOCK:I

.field private final MSG_UPDATE_FACE_ADDED:I

.field private mBinding:Z

.field private mBindingSetting:Z

.field private mBouncer:Z

.field private mBoundToService:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCloseLightView:Landroid/view/View;

.field private mCameraLaunching:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEnterBouncerAfterScreenOn:Z

.field mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFaceLockActive:Z

.field private mFacelockThread:Landroid/os/HandlerThread;

.field private mFailAttempts:I

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIsGoingToSleep:Z

.field private mIsKeyguardShowing:Z

.field private mIsScreenOffUnlock:Z

.field private mIsScreenTurnedOn:Z

.field private mIsScreenTurningOn:Z

.field private mIsSleep:Z

.field private mKeyguardStateCallback:Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

.field private mLightingModeEnabled:Z

.field private mLockout:Z

.field private mMotorManager:Landroid/os/MotorManager;

.field private mMotorQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToPendingStopFacelock:Z

.field private final mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

.field private final mOffAuthenticateRunnable:Ljava/lang/Runnable;

.field private mPendingFacelockWhenBouncer:Z

.field private mPendingLaunchCameraSource:Ljava/lang/String;

.field private mPendingStopFacelock:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mPowerManager:Landroid/os/IPowerManager;

.field private final mResetScreenOnRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRate:I

.field private mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

.field private mSettingConnection:Landroid/content/ServiceConnection;

.field private mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mSimSecure:Z

.field mSleepTime:J

.field private mStartFacelockWhenScreenOn:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    .line 70
    const-string v0, "com.oneplus.faceunlock"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    .line 71
    const-string v0, "com.oneplus.faceunlock.FaceUnlockService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    .line 72
    const-string v0, "com.oneplus.faceunlock.FaceSettingService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    .line 170
    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_TIMES:I

    .line 171
    const/16 v0, 0x4650

    sput v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_DURATION:I

    .line 172
    const/16 v0, -0x3e7

    sput v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MOTOR_UP_LIMIT_RESULT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardViewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p3, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p4, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .param p5, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p6, "fpc"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 181
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurningOn:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 143
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x8c

    aput v4, v3, v0

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->IS_LOD:Z

    .line 146
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->IS_LOD:Z

    const/4 v4, 0x5

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    .line 147
    const-wide v5, 0x3fd2d0e560418937L    # 0.294

    iput-wide v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    .line 148
    const/16 v3, 0x12c

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    .line 161
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 165
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    .line 169
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEnterBouncerAfterScreenOn:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSimSecure:Z

    .line 301
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    iput v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_START_FACELOCK:I

    .line 316
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_STOP_FACELOCK:I

    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UNLOCK:I

    .line 318
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_FAIL:I

    .line 319
    iput v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_FACE:I

    .line 320
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_LOCKOUT:I

    .line 321
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_SKIP_BOUNCER:I

    .line 323
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_FACELOCK_PENDING:I

    .line 328
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_CAMERA_ERROR:I

    .line 330
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_PERMISSION:I

    .line 331
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UPDATE_FACE_ADDED:I

    .line 333
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_MOTOR_UP_LOCKED_ERROR:I

    .line 427
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    .line 1257
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    .line 1429
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    .line 1449
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    .line 1467
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    .line 1586
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 182
    const-string v0, "OPFacelockController"

    const-string v2, "new facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    .line 184
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 187
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 188
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 190
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 191
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 192
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 194
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "FacelockThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    .line 198
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mWM:Landroid/view/IWindowManager;

    .line 201
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0a015f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    .line 202
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0a0161

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v0, :cond_1

    .line 206
    const-string v0, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightView == null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->init()V

    .line 210
    :goto_1
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    .line 214
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 217
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    .line 218
    .local v2, "maxBrightness":I
    int-to-double v3, v2

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 221
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 225
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    const-string v5, "motor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/MotorManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorManager:Landroid/os/MotorManager;

    .line 232
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mVibrator:Landroid/os/Vibrator;

    .line 234
    new-instance v4, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/android/systemui/statusbar/phone/OPFacelockController$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;

    invoke-virtual {p2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 236
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetLockout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleSkipBouncer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetFacelockPending()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateIsFaceAdded()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->enterBouncer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSimSecure:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSimSecure:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStartFacelock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->unlockKeyguard()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleRecognizeFail()V

    return-void
.end method

.method private bindFacelock()V
    .locals 6

    .line 1334
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    .line 1336
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1337
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    .local v1, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1341
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1343
    const-string v2, "OPFacelockController"

    const-string v3, "Binding ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    goto :goto_0

    .line 1346
    :cond_1
    const-string v2, "OPFacelockController"

    const-string v3, "Binding fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :goto_0
    goto :goto_1

    .line 1348
    :catch_0
    move-exception v2

    .line 1349
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindFacelock fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private bindFacelockSetting()V
    .locals 6

    .line 1354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    if-eqz v0, :cond_0

    .line 1355
    const-string v0, "OPFacelockController"

    const-string v1, "return Binding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-void

    .line 1359
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1360
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    .local v1, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1364
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1366
    const-string v2, "OPFacelockController"

    const-string v3, "Binding setting ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    goto :goto_0

    .line 1369
    :cond_1
    const-string v2, "OPFacelockController"

    const-string v3, "Binding setting fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    :goto_0
    goto :goto_1

    .line 1371
    :catch_0
    move-exception v2

    .line 1372
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind setting fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private checkReachUpTimes(J)Z
    .locals 7
    .param p1, "currentTime"    # J

    .line 274
    const-wide/16 v0, 0x0

    .line 277
    .local v0, "diffTime":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_TIMES:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 279
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 280
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v0, v2, v5

    .line 281
    sget v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_DURATION:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 282
    return v4

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_TIMES:I

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 287
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v0, v2, v5

    .line 288
    sget v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_DURATION:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 289
    return v4

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_TIMES:I

    add-int/lit8 v3, v3, -0x2

    if-gt v2, v3, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_2
    const-string v2, "OPFacelockController"

    const-string v3, "error queue state"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_3
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method private downMotorBySystemApp()I
    .locals 5

    .line 240
    const/16 v0, -0x3e7

    .line 242
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorManager:Landroid/os/MotorManager;

    const-string/jumbo v2, "systemui_faceunlock"

    invoke-virtual {v1, v2}, Landroid/os/MotorManager;->downMotorBySystemApp(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 243
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downMotor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    return v0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downMotor fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private enterBouncer()V
    .locals 2

    .line 502
    const-string v0, "OPFacelockController"

    const-string v1, "handle enter Bouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEnterBouncerAfterScreenOn:Z

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method private handleRecognizeFail()V
    .locals 4

    .line 465
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, "playFailAnimation":Z
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_0

    .line 470
    const/4 v1, 0x7

    .local v1, "type":I
    goto :goto_0

    .line 472
    .end local v1    # "type":I
    :cond_0
    nop

    .line 475
    .restart local v1    # "type":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 476
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_3

    .line 478
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OPFacelockController"

    const-string v3, "enter Bouncer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->enterBouncer()V

    goto :goto_1

    .line 482
    :cond_2
    const/4 v0, 0x1

    .line 485
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    .line 486
    :cond_4
    const/high16 v2, -0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 488
    return-void
.end method

.method private handleResetFacelockPending()V
    .locals 3

    .line 1145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1146
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResetFacelockPending, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    if-eqz v0, :cond_1

    .line 1148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 1150
    :cond_1
    return-void
.end method

.method private handleResetLockout()V
    .locals 2

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 453
    return-void

    .line 450
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSkipBouncer()V
    .locals 2

    .line 456
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "handleSkipBouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 460
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 462
    return-void
.end method

.method private handleStartFacelock()V
    .locals 8

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v0

    .line 1035
    .local v0, "cameraError":Z
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle startFacelock, active:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pendingStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", live wp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cameraError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    if-nez v1, :cond_0

    .line 1038
    const-string v1, "OPFacelockController"

    const-string v2, "not start Facelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-void

    .line 1043
    :cond_0
    if-eqz v0, :cond_1

    .line 1044
    const-string v1, "OPFacelockController"

    const-string v2, "not start when camera error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-void

    .line 1048
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v1, :cond_2

    .line 1049
    const-string v1, "OPFacelockController"

    const-string v2, "pending in bouncer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void

    .line 1055
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    .line 1056
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 1057
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 1058
    return-void

    .line 1062
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    const/4 v5, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1063
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 1064
    const-string v1, "OPFacelockController"

    const-string v2, "pending start to screen on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    return-void

    .line 1069
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1070
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->upMotorBySystemApp()I

    move-result v1

    sget v6, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MOTOR_UP_LIMIT_RESULT:I

    if-ne v1, v6, :cond_6

    .line 1072
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-nez v1, :cond_5

    .line 1073
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEnterBouncerAfterScreenOn:Z

    goto :goto_0

    .line 1075
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->enterBouncer()V

    .line 1078
    :goto_0
    const/16 v1, 0xa

    const/high16 v2, -0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 1079
    const-string v1, "OPFacelockController"

    const-string v2, "not start motor for up limited"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1081
    return-void

    .line 1086
    :cond_6
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 1088
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 1090
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 1092
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1096
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1097
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurningOn:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1098
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1099
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1100
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 1101
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    .line 1102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1108
    :cond_7
    monitor-enter p0

    .line 1110
    const/4 v1, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v2, v3}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->registerCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    .line 1111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->prepare()V

    .line 1112
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v2, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->startFaceUnlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    nop

    .line 1126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1132
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    .line 1134
    return-void

    .line 1126
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1119
    :catch_0
    move-exception v2

    .line 1120
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v3, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startFacelock mService null, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1123
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1124
    monitor-exit p0

    return-void

    .line 1113
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1114
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startFacelock fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1117
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1118
    monitor-exit p0

    return-void

    .line 1126
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleStopFacelock()V
    .locals 4

    .line 1160
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-nez v0, :cond_0

    .line 1161
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not stop facelock, active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return-void

    .line 1166
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    if-eqz v0, :cond_2

    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 1168
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "pending stop facelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_1
    return-void

    .line 1171
    :cond_2
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle stopFacelock, pending camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 1177
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 1179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 1182
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->downMotorBySystemApp()I

    .line 1187
    :cond_3
    monitor-enter p0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v1, v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->unregisterCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    .line 1190
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1, v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->stopFaceUnlock(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    :goto_0
    goto :goto_1

    .line 1197
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopFacelock mService null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 1192
    :catch_1
    move-exception v0

    .line 1193
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopFacelock fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1197
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 1202
    .local v0, "source":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 1212
    .end local v0    # "source":Ljava/lang/String;
    :cond_4
    return-void

    .line 1197
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private isWakingUpReasonSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 516
    const/4 v0, 0x1

    .line 517
    .local v0, "supported":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "android.policy:POWER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.policy:DOUBLE_TAP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 523
    :cond_0
    return v0
.end method

.method private launchCamera(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 1683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 1684
    :cond_0
    return-void
.end method

.method private playFacelockIndicationTextAnim()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    :cond_0
    return-void
.end method

.method private registerLightSensor(Z)V
    .locals 5
    .param p1, "register"    # Z

    .line 1605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1607
    :cond_0
    if-eqz p1, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1614
    :goto_0
    return-void
.end method

.method private stopFacelock()V
    .locals 3

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1157
    return-void
.end method

.method private unlockKeyguard()V
    .locals 7

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    .line 1267
    .local v0, "liveWP":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    .line 1268
    .local v2, "bouncerShow":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    .line 1270
    .local v3, "interActive":Z
    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockKeyguard, bouncer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", live wp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", interactive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", offUnlock:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 1272
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 1274
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hideFODDim()V

    .line 1275
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    .line 1276
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 1278
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;ZZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1321
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1322
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    const/4 v6, 0x2

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    .line 1323
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 1324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 1325
    return-void
.end method

.method private upMotorBySystemApp()I
    .locals 8

    .line 252
    sget v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MOTOR_UP_LIMIT_RESULT:I

    .line 253
    .local v0, "result":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 254
    .local v1, "currentTime":J
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorManager:Landroid/os/MotorManager;

    invoke-virtual {v3}, Landroid/os/MotorManager;->getMotorStateBySystemApp()I

    move-result v3

    .line 258
    .local v3, "motorState":I
    if-gtz v3, :cond_0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->checkReachUpTimes(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "::::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget v4, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MOTOR_UP_LIMIT_RESULT:I

    return v4

    .line 266
    :catch_0
    move-exception v4

    goto :goto_0

    .line 263
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorManager:Landroid/os/MotorManager;

    const-string/jumbo v5, "systemui_faceunlock"

    invoke-virtual {v4, v5}, Landroid/os/MotorManager;->upMotorBySystemApp(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 264
    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upMotor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return v0

    .line 266
    :goto_0
    nop

    .line 267
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "OPFacelockController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "upMotor fail, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v4    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private updateFacelockLightMode(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v0, :cond_0

    return-void

    .line 1620
    :cond_0
    if-eqz p1, :cond_1

    .line 1621
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V

    goto :goto_0

    .line 1625
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1623
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    :goto_0
    goto :goto_2

    .line 1625
    :goto_1
    nop

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFacelockLightMode, overrideScreenBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$15;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$15;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1649
    return-void
.end method

.method private updateIsFaceAdded()V
    .locals 7

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 971
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    .line 972
    return-void

    .line 975
    :cond_0
    const/4 v0, 0x1

    move v2, v0

    .line 977
    .local v2, "state":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v3, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 980
    goto :goto_0

    .line 978
    :catch_0
    move-exception v3

    .line 979
    .local v3, "re":Ljava/lang/Exception;
    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateIsFaceAdded fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    .end local v3    # "re":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v3

    .line 984
    .local v3, "preAdded":Z
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 985
    .local v0, "isAdded":Z
    :goto_1
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFaceAdded:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", pre:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 989
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 990
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v4, :cond_3

    .line 992
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 993
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateBouncerPromptReason()V

    .line 994
    const-string v4, "OPFacelockController"

    const-string v5, "face is added and not allowed, update Prompt reason"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 1001
    if-eq v0, v3, :cond_5

    .line 1002
    if-eqz v0, :cond_4

    .line 1003
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock(Z)Z

    goto :goto_2

    .line 1005
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 1009
    :cond_5
    :goto_2
    return-void
.end method

.method private updateKeyguardAlpha(IZ)V
    .locals 6
    .param p1, "alpha"    # I
    .param p2, "updateState"    # Z

    .line 1216
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", live wp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1220
    if-eqz p2, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v1, v0, v2, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    .line 1226
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1238
    if-ne p1, v0, :cond_3

    .line 1239
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v0

    .line 1241
    .local v0, "fpEnrolled":Z
    if-eqz p2, :cond_3

    .line 1242
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    .line 1245
    .local v1, "delay":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1247
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1248
    .end local v1    # "delay":I
    goto :goto_1

    .line 1249
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 1255
    .end local v0    # "fpEnrolled":Z
    :cond_3
    :goto_1
    return-void
.end method

.method private updateNotifyMessage(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "color"    # I

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v0

    .line 1379
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1427
    return-void
.end method

.method private updateRecognizedState(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "color"    # I

    .line 438
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-eqz v0, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateNotifyMessage(II)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 445
    :cond_1
    return-void
.end method


# virtual methods
.method public canLaunchFacelock()Z
    .locals 3

    .line 951
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 952
    const-string v0, "OPFacelockController"

    const-string v2, "not start when camera launching"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return v1

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 955
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v2, "not allow to facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_1
    return v1

    .line 957
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 958
    const-string v0, "OPFacelockController"

    const-string/jumbo v2, "timeout, not allow to facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return v1

    .line 961
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1672
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1711
    const-string v0, "  OPFacelockController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1712
    const-string v0, "  mFailAttempts: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1713
    const-string v0, "  mLockout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1714
    const-string v0, "  mBinding: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1715
    const-string v0, "  mCameraLaunching: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1716
    const-string v0, "  mBoundToService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1717
    const-string v0, "  mFaceLockActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1718
    const-string v0, "  mService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1719
    const-string v0, "  isFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1720
    const-string v0, "  isAutoFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1721
    const-string v0, "  isFacelockLightingEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1722
    const-string v0, "  FacelockRunningType: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1723
    const-string v0, "  isFacelockTimeout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1724
    const-string v0, "  isFacelockAllowed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1725
    const-string v0, "  mIsKeyguardShowing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1726
    const-string v0, "  mBouncer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1727
    const-string v0, "  mIsScreenTurnedOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1728
    const-string v0, "  mNeedToPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1729
    const-string v0, "  mPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1730
    const-string v0, "  mPendingLaunchCameraSource: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    const-string v0, "  mIsScreenOffUnlock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1732
    const-string v0, "  mStartFacelockWhenScreenOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1733
    const-string v0, "  mIsSleep: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1734
    const-string v0, "  mLightingModeEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1735
    const-string v0, "  LIGHTING_MODE_SENSOR_THRESHOLD: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1736
    const-string v0, "  LIGHTING_MODE_BRIGHTNESS: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1738
    const-string v0, "  mMotorQueue: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    return-void
.end method

.method public isFacelockRunning()Z
    .locals 1

    .line 965
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method public isFacelockTimeout()Z
    .locals 2

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 1330
    .local v0, "allowed":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isLighModeEnabled()Z
    .locals 1

    .line 1667
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method public isScreenOffUnlock()Z
    .locals 1

    .line 1688
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    return v0
.end method

.method public notifyCameraLaunching(ZLjava/lang/String;)Z
    .locals 4
    .param p1, "isCameraLaunching"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .line 1014
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_0

    .line 1015
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 1018
    :cond_0
    const/4 v0, 0x0

    .line 1020
    .local v0, "pending":Z
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCameraLaunching, source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", facelockActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", keyguard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v1, :cond_2

    .line 1023
    if-eqz p2, :cond_1

    .line 1024
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 1025
    const/4 v0, 0x1

    .line 1027
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 1029
    :cond_2
    return v0
.end method

.method public onClearFailedFacelockAttempts()V
    .locals 3

    .line 881
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClearFailedFacelockAttempts, failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 883
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 885
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1657
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onClick to stop Lighting mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 1659
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 3

    .line 767
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceProvisioned, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 773
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 3
    .param p1, "dreaming"    # Z

    .line 680
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDreamingStateChanged, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .line 663
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishedGoingToSleep, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 670
    const-string v0, "persist.sys.facelock.bright"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 673
    const-string v0, "persist.sys.facelock.uptimes"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_TIMES:I

    .line 674
    const-string v0, "persist.sys.facelock.updura"

    const/16 v1, 0x4650

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MAX_MOTOR_UP_DURATION:I

    .line 676
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "isBouncer"    # Z

    .line 844
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged , bouncer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", skip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", unlocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bouncerRec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 849
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-nez v0, :cond_3

    .line 852
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLockInBouncer()Z

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v0

    if-nez v0, :cond_2

    .line 856
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLockInBouncer()Z

    .line 859
    :cond_2
    :goto_0
    return-void

    .line 860
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 861
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock(Z)Z

    .line 862
    return-void

    .line 866
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 868
    const/4 v0, 0x6

    .line 869
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlockForFace(I)V

    .line 871
    .end local v0    # "mode":I
    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 872
    const-string v0, "OPFacelockController"

    const-string v1, "just keyguardDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 877
    :cond_6
    :goto_1
    return-void
.end method

.method public onKeyguardReset()V
    .locals 2

    .line 733
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_0

    .line 734
    return-void

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_3

    .line 737
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v0, :cond_2

    .line 738
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "onKeyguardReset to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 741
    :cond_2
    return-void

    .line 745
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 747
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OPFacelockController"

    const-string v1, "onKeyguardReset to start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 752
    :cond_5
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .line 790
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged, show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 793
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    .line 794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 799
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 801
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 802
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v4

    if-nez v4, :cond_3

    .line 803
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 807
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 808
    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    goto :goto_0

    .line 814
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 816
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 817
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 818
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    :cond_5
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    .line 823
    if-nez p1, :cond_6

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 825
    :cond_6
    return-void
.end method

.method public onMotorStateChanged(I)V
    .locals 2
    .param p1, "type"    # I

    .line 1693
    const/16 v0, 0xd

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1695
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1697
    :cond_0
    const/16 v1, -0xa

    if-ne p1, v1, :cond_1

    .line 1698
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1699
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1701
    :cond_1
    :goto_0
    return-void
.end method

.method public onPasswordLockout()V
    .locals 2

    .line 897
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onPasswordLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 899
    return-void
.end method

.method public onPreStartedGoingToSleep()V
    .locals 2

    .line 633
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onPreStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 635
    return-void
.end method

.method public onPreStartedWakingUp()V
    .locals 5

    .line 528
    const-string v0, "android.policy:POWER"

    .line 530
    .local v0, "reason":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getWakingUpReason()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 533
    goto :goto_0

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWakingUpReason,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreStartedWakingUp, bound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncerRec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 538
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 543
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 544
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    :cond_1
    return-void

    .line 548
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isWakingUpReasonSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 549
    return-void

    .line 552
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v1, :cond_4

    .line 553
    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 556
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    return-void

    .line 539
    :cond_5
    :goto_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 626
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 628
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurningOn:Z

    .line 629
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEnterBouncerAfterScreenOn:Z

    .line 630
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 601
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEnterBouncerAfterScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 604
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEnterBouncerAfterScreenOn:Z

    if-eqz v1, :cond_1

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->enterBouncer()V

    .line 610
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    if-eqz v1, :cond_3

    .line 611
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 612
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 615
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 616
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_3

    .line 617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 619
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 622
    :cond_3
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    .line 595
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurningOn:Z

    .line 597
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .line 639
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedGoingToSleep, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 645
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 647
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 648
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 649
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 654
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    .line 659
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    .line 564
    const-string v0, "android.policy:POWER"

    .line 566
    .local v0, "reason":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getWakingUpReason()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWakingUpReason,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartedWakingUp, bound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", lockout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncerRec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 574
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 579
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 580
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    :cond_1
    return-void

    .line 584
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isWakingUpReasonSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 585
    return-void

    .line 588
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 591
    return-void

    .line 575
    :cond_4
    :goto_1
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 779
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 781
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    :cond_0
    const-string v0, "OPFacelockController"

    const-string v1, "onStrongAuthStateChanged to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 785
    :cond_1
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 889
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 891
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    .line 892
    return-void
.end method

.method public onThemeColorUpdate()V
    .locals 3

    .line 1706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1707
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 758
    if-eqz p1, :cond_0

    .line 759
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 761
    :cond_0
    return-void
.end method

.method public resetFacelockPending()V
    .locals 1

    .line 1138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 1140
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "indicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1677
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1678
    return-void
.end method

.method public stopFacelockLightMode()V
    .locals 1

    .line 1662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    .line 1663
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    .line 1664
    return-void
.end method

.method public tryToStartFaceLock(Z)Z
    .locals 3
    .param p1, "supportMotor"    # Z

    .line 905
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryToStartFaceLock, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", motor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 912
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 918
    :cond_2
    return v1
.end method

.method public tryToStartFaceLockAfterScreenOn()V
    .locals 4

    .line 922
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryToStartFaceLockAfterScreenOn,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 925
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    goto :goto_0

    .line 929
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    return-void

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    return-void

    .line 936
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 937
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 948
    :goto_0
    return-void
.end method

.method public tryToStartFaceLockInBouncer()Z
    .locals 4

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 829
    .local v0, "skip":Z
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startInBouncer, bound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", skip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 834
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 839
    :cond_1
    return v2

    .line 831
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
