.class Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;
    }
.end annotation


# static fields
.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;


# instance fields
.field private final mDefaultColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMessage:Ljava/lang/CharSequence;

.field private mNextMessageColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "monitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 53
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 80
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColor:I

    .line 86
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 87
    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 149
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 150
    return-void
.end method

.method public static findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .line 125
    const v0, 0x7f0a01f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    .line 127
    .local v0, "messageArea":Lcom/android/keyguard/KeyguardMessageArea;
    if-eqz v0, :cond_0

    .line 130
    return-object v0

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find keyguard_message_area in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private securityMessageChanged(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 140
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xfa

    add-long/2addr v3, v5

    .line 143
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 145
    return-void
.end method

.method private update()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 154
    .local v0, "status":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColor:I

    .line 158
    .local v1, "color":I
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    const v3, 0x7f040468

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    goto :goto_1

    .line 161
    :cond_1
    iget v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 162
    iget v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 163
    iput v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 166
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    .line 167
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 136
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 137
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    .line 104
    :goto_0
    return-void
.end method

.method public setNextMessageColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 91
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 92
    return-void
.end method
