.class Lcom/android/systemui/fingerprint/FingerprintDialogView$1;
.super Ljava/lang/Object;
.source "FingerprintDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 212
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 216
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 217
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 218
    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 222
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 224
    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 227
    return-void
.end method
