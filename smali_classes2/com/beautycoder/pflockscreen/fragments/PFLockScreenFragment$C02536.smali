.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;
.super Ljava/lang/Object;
.source "PFLockScreenFragment.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C02536"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 171
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method


# virtual methods
.method public onCodeCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$602(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$602(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v2}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1200(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v3}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$600(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->checkPin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 183
    .local v0, "isCorrect":Z
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 184
    if-eqz v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;->onCodeInputSuccessful()V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;->onPinLoginFailed()V

    .line 188
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1300(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    .line 191
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->isClearCodeOnError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/views/PFCodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->clearCode()V
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "isCorrect":Z
    :cond_3
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 197
    .end local v0    # "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    :goto_1
    return-void
.end method

.method public onCodeNotCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$1100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method
