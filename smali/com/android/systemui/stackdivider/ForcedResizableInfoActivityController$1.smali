.class Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->access$000(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    .line 71
    return-void
.end method
