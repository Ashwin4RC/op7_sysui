.class Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "OPFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/android/systemui/statusbar/phone/OPFacelockController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/OPFacelockController$1;

    .line 684
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    return-void
.end method


# virtual methods
.method public onDisabledStateChanged(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .line 718
    return-void
.end method

.method public onFingerprintStateChange(ZIII)V
    .locals 0
    .param p1, "authenticating"    # Z
    .param p2, "authType"    # I
    .param p3, "result"    # I
    .param p4, "reserved"    # I

    .line 722
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 714
    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0
    .param p1, "inputRestricted"    # Z

    .line 706
    return-void
.end method

.method public onPocketModeActiveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 726
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 702
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 2
    .param p1, "simSecure"    # Z

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 688
    if-nez p1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 690
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 691
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "OPFacelockController"

    const-string v1, "onSimSecure to start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock(Z)Z

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2002(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 698
    :cond_1
    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 0
    .param p1, "trusted"    # Z

    .line 710
    return-void
.end method
