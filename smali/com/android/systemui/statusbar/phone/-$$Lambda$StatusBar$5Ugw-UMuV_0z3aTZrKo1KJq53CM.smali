.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5Ugw-UMuV_0z3aTZrKo1KJq53CM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5Ugw-UMuV_0z3aTZrKo1KJq53CM;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5Ugw-UMuV_0z3aTZrKo1KJq53CM;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$inflateFooterView$15(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    return-void
.end method
