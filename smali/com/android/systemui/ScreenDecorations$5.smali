.class Lcom/android/systemui/ScreenDecorations$5;
.super Landroid/content/BroadcastReceiver;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ScreenDecorations;

    .line 940
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 943
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$500(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$500(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v1

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 949
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$500(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 952
    :cond_0
    return-void
.end method
