.class public Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;
.super Ljava/lang/Object;
.source "PFSecurityUtils.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;


# static fields
.field private static final ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;

    invoke-direct {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;-><init>()V

    sput-object v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private decode(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 4
    .param p1, "encodedString"    # Ljava/lang/String;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 87
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Error while decoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private generateKey(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keystoreAlias"    # Ljava/lang/String;
    .param p3, "isAuthenticationRequired"    # Z

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->generateKey(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private generateKey(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "keystoreAlias"    # Ljava/lang/String;
    .param p2, "isAuthenticationRequired"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 114
    :try_start_0
    const-string v0, "RSA"

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 115
    .local v0, "keyGenerator":Ljava/security/KeyPairGenerator;
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "SHA-256"

    const-string v3, "SHA-512"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "OAEPPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 116
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v1, 0x1

    return v1

    .line 118
    .end local v0    # "keyGenerator":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "exc":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 120
    const/4 v1, 0x0

    return v1
.end method

.method private generateKeyIfNecessary(Landroid/content/Context;Ljava/security/KeyStore;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyStore"    # Ljava/security/KeyStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "isAuthenticationRequired"    # Z

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "z":Z
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-direct {p0, p1, p3, p4}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->generateKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 70
    return v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    .line 74
    return v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 77
    const/4 v2, 0x0

    return v2
.end method

.method private getCipherInstance()Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 126
    :try_start_0
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Can not get instance of Cipher object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEncodeCipher(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/crypto/Cipher;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "isAuthenticationRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 59
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 60
    .local v1, "keyStore":Ljava/security/KeyStore;
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->generateKeyIfNecessary(Landroid/content/Context;Ljava/security/KeyStore;Ljava/lang/String;Z)Z

    .line 61
    invoke-direct {p0, v0, p2, v1}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->initEncodeCipher(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/security/KeyStore;)V

    .line 62
    return-object v0
.end method

.method public static getInstance()Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;
    .locals 1

    .line 25
    sget-object v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;

    return-object v0
.end method

.method private initDecodeCipher(Ljavax/crypto/Cipher;Ljava/lang/String;)V
    .locals 4
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 146
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Error while decoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initEncodeCipher(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 8
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 150
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 151
    .local v0, "key":Ljava/security/PublicKey;
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-256"

    const-string v5, "MGF1"

    sget-object v6, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v7, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-virtual {p1, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "key":Ljava/security/PublicKey;
    nop

    .line 158
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Can not initialize Encode Cipher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private loadKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 33
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 34
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object v0

    .line 36
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Can not load keystore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "encodedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 100
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-direct {p0, v0, p1}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->initDecodeCipher(Ljavax/crypto/Cipher;Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 102
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Error while decoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    nop

    .line 179
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Can not delete key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public encode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/lang/String;
    .param p4, "isAuthorizationRequared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->getEncodeCipher(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Error while encoding : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isKeystoreContainAlias(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 165
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
