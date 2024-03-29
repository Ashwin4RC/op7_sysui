.class public Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# static fields
.field private static POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

.field private static POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String;


# instance fields
.field private final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field protected final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field protected final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private mIsPowerLongPressWithAssistant:Z

.field private mIsPowerLongPressWithGoogleAssistant:Z

.field private final mShouldEnableOrb:Z

.field private mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field private mView:Lcom/android/systemui/assist/AssistOrbContainer;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "power_long_press_with_assistant_hint"

    sput-object v0, Lcom/android/systemui/assist/AssistManager;->POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

    .line 57
    const-string v0, "power_long_press_with_google_assistant_hint"

    sput-object v0, Lcom/android/systemui/assist/AssistManager;->POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .param p2, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithAssistant:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithGoogleAssistant:Z

    .line 76
    new-instance v0, Lcom/android/systemui/assist/AssistManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 90
    new-instance v0, Lcom/android/systemui/assist/AssistManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$2;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    .line 102
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 103
    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->registerVoiceInteractionSessionListener()V

    .line 106
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v1, -0x7ffffc7c

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mShouldEnableOrb:Z

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/assist/AssistManager;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/assist/AssistManager;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    return-object v0
.end method

.method private getAssistInfo()Landroid/content/ComponentName;
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 194
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v1, -0x1

    const/16 v3, 0x7f1

    const/16 v4, 0x118

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 202
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 203
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 204
    const-string v1, "AssistPreviewPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 207
    return-object v0
.end method

.method private isVoiceSessionRunning()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->isSessionRunning()Z

    move-result v0

    return v0
.end method

.method private maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "assistComponent"    # Landroid/content/ComponentName;
    .param p2, "isService"    # Z

    .line 307
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbContainer;->getOrb()Lcom/android/systemui/assist/AssistOrbView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->getLogo()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "com.android.systemui.action_assist_icon"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/assist/AssistManager;->replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 309
    return-void
.end method

.method private showOrb(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "assistComponent"    # Landroid/content/ComponentName;
    .param p2, "isService"    # Z

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V

    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mShouldEnableOrb:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithAssistant:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithGoogleAssistant:Z

    if-nez v0, :cond_0

    .line 221
    const-string v0, "AssistManager"

    const-string/jumbo v1, "showOrb"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    .line 225
    :cond_0
    return-void
.end method

.method private startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "assistComponent"    # Landroid/content/ComponentName;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_structure_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 248
    .local v0, "structureEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v2, "search"

    .line 249
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 250
    .local v1, "searchManager":Landroid/app/SearchManager;
    if-nez v1, :cond_2

    .line 251
    return-void

    .line 253
    :cond_2
    invoke-virtual {v1, v0}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v2

    .line 254
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_3

    .line 255
    return-void

    .line 257
    :cond_3
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 260
    if-eqz v0, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 265
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0100ec

    const v5, 0x7f0100ed

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 267
    .local v3, "opts":Landroid/app/ActivityOptions;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    new-instance v4, Lcom/android/systemui/assist/AssistManager$4;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 275
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "AssistManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method

.method private startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "assistComponent"    # Landroid/content/ComponentName;
    .param p3, "isService"    # Z

    .line 229
    if-eqz p3, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startVoiceInteractor(Landroid/os/Bundle;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V

    .line 234
    :goto_0
    return-void
.end method

.method private startVoiceInteractor(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .line 281
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    .line 283
    return-void
.end method


# virtual methods
.method public canVoiceAssistBeLaunchedFromKeyguard()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v0

    return v0
.end method

.method public getVoiceInteractorComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public hideAssist()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    .line 191
    return-void
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 3

    .line 286
    const-string v0, "AssistManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch google assistant from keyguard, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->launchVoiceAssistFromKeyguard()V

    .line 288
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 133
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistOrbContainer;->isShowing()Z

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0032

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistOrbContainer;

    iput-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/AssistOrbContainer;->setSystemUiVisibility(I)V

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 145
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    if-eqz v0, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    .line 149
    :cond_2
    return-void
.end method

.method public onLockscreenShown()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->onLockscreenShown()V

    .line 363
    return-void
.end method

.method protected registerVoiceInteractionSessionListener()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v1, Lcom/android/systemui/assist/AssistManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 126
    return-void
.end method

.method public replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isService"    # Z

    .line 313
    if-eqz p2, :cond_2

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 317
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    if-eqz p4, :cond_0

    .line 319
    nop

    .line 318
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 321
    :cond_0
    nop

    .line 320
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 322
    .local v1, "metaData":Landroid/os/Bundle;
    :goto_0
    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 324
    .local v2, "iconResId":I
    if-eqz v2, :cond_1

    .line 325
    nop

    .line 326
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 327
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    return-void

    .line 334
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "iconResId":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "AssistManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to swap drawable from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "nfe":Landroid/content/res/Resources$NotFoundException;
    goto :goto_1

    .line 331
    :catch_1
    move-exception v0

    .line 332
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AssistManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assistant component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    nop

    .line 339
    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void
.end method

.method protected shouldShowOrb()Z
    .locals 1

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public showDisclosure()V
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithAssistant:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithGoogleAssistant:Z

    if-nez v0, :cond_0

    .line 355
    const-string v0, "AssistManager"

    const-string/jumbo v1, "showDisclosure"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistDisclosure;->postShow()V

    .line 359
    :cond_0
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object v0

    .line 157
    .local v0, "assistComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 158
    return-void

    .line 163
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 164
    sget-object v2, Lcom/android/systemui/assist/AssistManager;->POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

    .line 165
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithAssistant:Z

    .line 166
    sget-object v2, Lcom/android/systemui/assist/AssistManager;->POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String;

    .line 167
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithGoogleAssistant:Z

    .line 168
    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithGoogleAssistant:Z

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->launchVoiceAssistFromKeyguard()V

    .line 171
    return-void

    .line 174
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithAssistant:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/systemui/assist/AssistManager;->mIsPowerLongPressWithGoogleAssistant:Z

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 180
    .local v1, "isService":Z
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->isVoiceSessionRunning()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->shouldShowOrb()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/assist/AssistManager;->showOrb(Landroid/content/ComponentName;Z)V

    .line 182
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 183
    const-wide/16 v4, 0x9c4

    goto :goto_0

    .line 184
    :cond_4
    const-wide/16 v4, 0x3e8

    .line 182
    :goto_0
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/assist/AssistOrbContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_5
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V

    .line 187
    return-void
.end method
