.class public abstract Lorg/apache/commons/net/tftp/TFTPPacket;
.super Ljava/lang/Object;
.source "TFTPPacket.java"


# static fields
.field public static final ACKNOWLEDGEMENT:I = 0x4

.field public static final DATA:I = 0x3

.field public static final ERROR:I = 0x5

.field static final MIN_PACKET_SIZE:I = 0x4

.field public static final READ_REQUEST:I = 0x1

.field public static final SEGMENT_SIZE:I = 0x200

.field public static final WRITE_REQUEST:I = 0x2


# instance fields
.field _address:Ljava/net/InetAddress;

.field _port:I

.field _type:I


# direct methods
.method constructor <init>(ILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_type:I

    .line 173
    iput-object p2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 174
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    .line 175
    return-void
.end method

.method public static final newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 5
    .param p0, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5

    .line 135
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 137
    .local v1, "data":[B
    const/4 v3, 0x1

    aget-byte v4, v1, v3

    if-eq v4, v3, :cond_4

    const/4 v3, 0x2

    if-eq v4, v3, :cond_3

    const/4 v3, 0x3

    if-eq v4, v3, :cond_2

    if-eq v4, v2, :cond_1

    const/4 v2, 0x5

    if-ne v4, v2, :cond_0

    .line 152
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-direct {v2, p0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/DatagramPacket;)V

    move-object v0, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_0
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v3, "Bad packet.  Invalid TFTP operator code."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_1
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    invoke-direct {v2, p0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/DatagramPacket;)V

    move-object v0, v2

    .line 150
    goto :goto_0

    .line 146
    :cond_2
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    invoke-direct {v2, p0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/DatagramPacket;)V

    move-object v0, v2

    .line 147
    goto :goto_0

    .line 143
    :cond_3
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    invoke-direct {v2, p0}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    move-object v0, v2

    .line 144
    goto :goto_0

    .line 140
    :cond_4
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    invoke-direct {v2, p0}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    move-object v0, v2

    .line 141
    nop

    .line 159
    :goto_0
    return-object v0

    .line 131
    .end local v1    # "data":[B
    :cond_5
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v2, "Bad packet. Datagram data length is too short."

    invoke-direct {v1, v2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method abstract _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 211
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_type:I

    return v0
.end method

.method public abstract newDatagram()Ljava/net/DatagramPacket;
.end method

.method public final setAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 250
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 251
    return-void
.end method

.method public final setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 242
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
