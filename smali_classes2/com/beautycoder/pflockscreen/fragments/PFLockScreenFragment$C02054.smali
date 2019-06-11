.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;
.super Ljava/lang/Object;
.source "PFLockScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C02054"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 95
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$200(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$300(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    invoke-direct {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;-><init>()V

    .line 103
    .local v0, "fragment":Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "FingerprintDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;

    invoke-direct {v1, p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->setAuthListener(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;)V

    .line 118
    return-void

    .line 120
    .end local v0    # "fragment":Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$500(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    .line 123
    :cond_1
    return-void
.end method
