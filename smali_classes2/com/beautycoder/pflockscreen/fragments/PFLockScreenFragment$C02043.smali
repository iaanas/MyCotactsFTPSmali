.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02043;
.super Ljava/lang/Object;
.source "PFLockScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C02043"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 83
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02043;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02043;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/views/PFCodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->clearCode()V

    .line 88
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02043;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;I)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method
