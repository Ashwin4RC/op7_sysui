.class Lcom/oneplus/aod/OPTextClock$1;
.super Landroid/content/BroadcastReceiver;
.source "OPTextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OPTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OPTextClock;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OPTextClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/OPTextClock;

    .line 181
    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock$1;->this$0:Lcom/oneplus/aod/OPTextClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock$1;->this$0:Lcom/oneplus/aod/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/OPTextClock;->access$200(Lcom/oneplus/aod/OPTextClock;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock$1;->this$0:Lcom/oneplus/aod/OPTextClock;

    invoke-static {v1, v0}, Lcom/oneplus/aod/OPTextClock;->access$300(Lcom/oneplus/aod/OPTextClock;Ljava/lang/String;)V

    .line 188
    .end local v0    # "timeZone":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock$1;->this$0:Lcom/oneplus/aod/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/aod/OPTextClock;->access$100(Lcom/oneplus/aod/OPTextClock;)V

    .line 189
    return-void
.end method
