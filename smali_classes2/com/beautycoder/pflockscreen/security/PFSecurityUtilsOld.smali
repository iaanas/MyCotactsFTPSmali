.class public Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;
.super Ljava/lang/Object;
.source "PFSecurityUtilsOld.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;


# static fields
.field private static final RSA_MODE:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;

    invoke-direct {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;-><init>()V

    sput-object v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private generateKey(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keystoreAlias"    # Ljava/lang/String;
    .param p3, "isAuthenticationRequired"    # Z

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->generateKeyOld(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
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

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "z":Z
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-direct {p0, p1, p3, p4}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->generateKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 52
    return v0

    .line 55
    :cond_0
    const/4 v0, 0x1

    .line 56
    return v0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 59
    const/4 v2, 0x0

    return v2
.end method

.method private generateKeyOld(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keystoreAlias"    # Ljava/lang/String;
    .param p3, "isAuthenticationRequired"    # Z

    .line 127
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 129
    .local v1, "end":Ljava/util/Calendar;
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 130
    const-string v2, "RSA"

    const-string v4, "AndroidKeyStore"

    invoke-static {v2, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 131
    .local v2, "keyGen":Ljava/security/KeyPairGenerator;
    new-instance v4, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v4, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    .line 132
    .local v4, "alias":Landroid/security/KeyPairGeneratorSpec$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v6, "CN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v6

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v6

    new-instance v7, Ljavax/security/auth/x500/X500Principal;

    const-string v8, "CN = Secured Preference Store, O = Devliving Online"

    invoke-direct {v7, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 136
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return v3

    .line 138
    .end local v0    # "start":Ljava/util/Calendar;
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v2    # "keyGen":Ljava/security/KeyPairGenerator;
    .end local v4    # "alias":Landroid/security/KeyPairGeneratorSpec$Builder;
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "exc":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 140
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstance()Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;
    .locals 1

    .line 27
    sget-object v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;

    return-object v0
.end method

.method private loadKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 35
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 36
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object v0

    .line 38
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Can not load keystore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private rsaDecrypt([BLjava/lang/String;)[B
    .locals 7
    .param p1, "encrypted"    # [B
    .param p2, "keystoreAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 102
    .local v0, "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "AndroidOpenSSL"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 103
    .local v1, "output":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 104
    new-instance v2, Ljavax/crypto/CipherInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 105
    .local v2, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_0
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v4

    .line 108
    .local v4, "read":I
    move v5, v4

    .line 109
    .local v5, "nextByte":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 110
    nop

    .line 114
    .end local v4    # "read":I
    .end local v5    # "nextByte":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [B

    .line 115
    .local v4, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 116
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 118
    .end local v5    # "i":I
    :cond_0
    return-object v4

    .line 112
    .local v4, "read":I
    .local v5, "nextByte":I
    :cond_1
    int-to-byte v6, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v4    # "read":I
    .end local v5    # "nextByte":I
    goto :goto_0
.end method

.method private rsaEncrypt(Landroid/content/Context;[BLjava/lang/String;)[B
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "secret"    # [B
    .param p3, "keystoreAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 77
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->generateKeyIfNecessary(Landroid/content/Context;Ljava/security/KeyStore;Ljava/lang/String;Z)Z

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 79
    .local v1, "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    const-string v2, "RSA/ECB/PKCS1Padding"

    const-string v3, "AndroidOpenSSL"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 80
    .local v2, "inputCipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 81
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v3, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 83
    .local v4, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    invoke-virtual {v4, p2}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 84
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 85
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
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

    .line 90
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->rsaDecrypt([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Error while decoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
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

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    nop

    .line 163
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Can not delete key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
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

    .line 65
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->rsaEncrypt(Landroid/content/Context;[BLjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "Error while encoding : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
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

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 149
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
