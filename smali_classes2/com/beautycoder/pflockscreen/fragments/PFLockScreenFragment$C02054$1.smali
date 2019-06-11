.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;
.super Ljava/lang/Object;
.source "PFLockScreenFragment.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;

.field final synthetic val$fragment:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;

    .line 104
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;->this$1:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;

    iput-object p2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;->val$fragment:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticated()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;->this$1:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;

    iget-object v0, v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;->this$1:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;

    iget-object v0, v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;->onFingerprintSuccessful()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;->val$fragment:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->dismiss()V

    .line 110
    return-void
.end method

.method public onError()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;->this$1:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;

    iget-object v0, v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054$1;->this$1:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;

    iget-object v0, v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;->onFingerprintLoginFailed()V

    .line 116
    :cond_0
    return-void
.end method
