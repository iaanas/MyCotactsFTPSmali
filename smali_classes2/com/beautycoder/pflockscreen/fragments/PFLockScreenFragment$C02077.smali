.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;
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
    name = "C02077"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 138
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 143
    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v2}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$600(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->encodePin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "encodedCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$700(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$700(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;->onCodeCreated(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "encodedCode":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 149
    invoke-static {}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not encode pin code"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$900(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    .line 152
    .end local v0    # "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    :goto_0
    return-void
.end method
