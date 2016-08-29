.class public Lorg/bouncycastle/crypto/digests/TigerDigest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final BYTE_LENGTH:I = 0x40

.field private static final DIGEST_LENGTH:I = 0x18

.field private static final t1:[J

.field private static final t2:[J

.field private static final t3:[J

.field private static final t4:[J


# instance fields
.field private a:J

.field private b:J

.field private bOff:I

.field private buf:[B

.field private byteCount:J

.field private c:J

.field private x:[J

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x100

    new-array v0, v0, [J

    const-wide v2, 0x2aab17cf7e90c5eL

    aput-wide v2, v0, v4

    const-wide v2, -0x53bdb4fc1dbc5714L    # -1.7128407340621646E-95

    aput-wide v2, v0, v5

    const-wide v2, 0x72cd5be30dd5fcd3L    # 1.0023208504851793E245

    aput-wide v2, v0, v6

    const-wide v2, 0x6d019b93f6f97f3aL    # 1.2139762073568247E217

    aput-wide v2, v0, v7

    const-wide v2, -0x326687002de06e6dL    # -6.706458791500693E65

    aput-wide v2, v0, v8

    const/4 v1, 0x5

    const-wide v2, 0x7573a1c9708029e2L    # 5.895496800950579E257

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, -0x4e9bcd946dd57c3dL    # -9.144856645593082E-71

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0x46883eee04915870L    # 6.147045493974247E31

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide v2, -0x15531cfa8efc131aL    # -7.245469242327593E205

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide v2, -0x3abe9647f75caca4L    # -4.21019644749848E25

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide v2, 0x4ce754918ddec47cL    # 2.9992336433478595E62

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide v2, 0xaa2f4dfdc0df40cL

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide v2, 0x10b76f18a74dbefaL    # 3.864107176980856E-228

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide v2, -0x393349dca52e5496L    # -1.164675872497294E33

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide v2, 0x13726121572fe2ffL    # 5.33156598279272E-215

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide v2, 0x1a488c6f199d921eL    # 4.621881805555222E-182

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide v2, 0x4bc9f9f4da0007caL    # 1.2738785760937716E57

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide v2, 0x26f5e6f6e85241c7L    # 5.301143877332036E-121

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide v2, -0x7a6f862415a6b84aL    # -7.09114170219129E-282

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide v2, 0x4f1885c5c99e8c92L    # 1.0831898540322935E73

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide v2, -0x287189e1569079b5L    # -5.860549232699429E113

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide v2, -0x71c9bd73ad4a3e83L

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide v2, 0x69cf6827373063c1L    # 4.808077668136655E201

    aput-wide v2, v0, v1

    const/16 v1, 0x17

    const-wide v2, -0x49f836c2644b3a92L    # -2.0343884424568343E-48

    aput-wide v2, v0, v1

    const/16 v1, 0x18

    const-wide v2, 0x7d820e760e76b5eaL    # 3.690277723516645E296

    aput-wide v2, v0, v1

    const/16 v1, 0x19

    const-wide v2, 0x645c9cc6f07fdc42L    # 2.8306875978629873E175

    aput-wide v2, v0, v1

    const/16 v1, 0x1a

    const-wide v2, -0x40c75f87dbccbd20L    # -3.757756532652267E-4

    aput-wide v2, v0, v1

    const/16 v1, 0x1b

    const-wide v2, 0x5f6b343c9d2e7d04L    # 4.452474071331079E151

    aput-wide v2, v0, v1

    const/16 v1, 0x1c

    const-wide v2, -0xd3d75149ff4f13aL    # -6.330505459863163E244

    aput-wide v2, v0, v1

    const/16 v1, 0x1d

    const-wide v2, 0x6c0ed85f7254bcacL    # 3.2449995514661964E212

    aput-wide v2, v0, v1

    const/16 v1, 0x1e

    const-wide v2, 0x71592281a4db4fe5L    # 1.0229440138048322E238

    aput-wide v2, v0, v1

    const/16 v1, 0x1f

    const-wide v2, 0x1967fa69ce0fed9fL

    aput-wide v2, v0, v1

    const/16 v1, 0x20

    const-wide v2, -0x2ad6c07469aba25L    # -4.746079894097338E295

    aput-wide v2, v0, v1

    const/16 v1, 0x21

    const-wide v2, -0x378616280d589ff5L    # -1.4108624898351813E41

    aput-wide v2, v0, v1

    const/16 v1, 0x22

    const-wide v2, -0x79fdb76dfe6ce6b2L

    aput-wide v2, v0, v1

    const/16 v1, 0x23

    const-wide v2, -0x5b06acc4d2633f4dL

    aput-wide v2, v0, v1

    const/16 v1, 0x24

    const-wide v2, -0x6fac7c93ea6a89edL    # -5.027540247675485E-230

    aput-wide v2, v0, v1

    const/16 v1, 0x25

    const-wide v2, -0x2492307503ca840fL    # -2.6449684685553242E132

    aput-wide v2, v0, v1

    const/16 v1, 0x26

    const-wide v2, 0x18beea7a7a370f57L    # 1.7347027809600023E-189

    aput-wide v2, v0, v1

    const/16 v1, 0x27

    const-wide v2, 0x37117ca50b99066L    # 4.28213889540892E-292

    aput-wide v2, v0, v1

    const/16 v1, 0x28

    const-wide v2, 0x6ab30a9774424a35L    # 9.552022208928876E205

    aput-wide v2, v0, v1

    const/16 v1, 0x29

    const-wide v2, -0xb16d0fd1cdadb65L

    aput-wide v2, v0, v1

    const/16 v1, 0x2a

    const-wide v2, 0x7739db07061ccae1L    # 2.0842528321826483E266

    aput-wide v2, v0, v1

    const/16 v1, 0x2b

    const-wide v2, -0x270c4b63135bd5fbL    # -3.1802859540357573E120

    aput-wide v2, v0, v1

    const/16 v1, 0x2c

    const-wide v2, -0x42a941c0aec7d08dL    # -3.2319965221132684E-13

    aput-wide v2, v0, v1

    const/16 v1, 0x2d

    const-wide v2, 0x45faed5843b0bb28L    # 1.3333667986433281E29

    aput-wide v2, v0, v1

    const/16 v1, 0x2e

    const-wide v2, 0x1c813d5c11bf1f83L    # 2.230497959159683E-171

    aput-wide v2, v0, v1

    const/16 v1, 0x2f

    const-wide v2, -0x750f1b4928a05e97L    # -5.625500189375992E-256

    aput-wide v2, v0, v1

    const/16 v1, 0x30

    const-wide v2, 0x33ee18a487ad9999L    # 1.4983159126004027E-58

    aput-wide v2, v0, v1

    const/16 v1, 0x31

    const-wide v2, 0x3c26e8eab1c94410L    # 6.209722176981598E-19

    aput-wide v2, v0, v1

    const/16 v1, 0x32

    const-wide v2, -0x4aefefd43f57dd07L    # -4.192682375334769E-53

    aput-wide v2, v0, v1

    const/16 v1, 0x33

    const-wide v2, 0x141eef310ce6123bL    # 9.18890891630219E-212

    aput-wide v2, v0, v1

    const/16 v1, 0x34

    const-wide v2, -0x39a46ffa6224eacL

    aput-wide v2, v0, v1

    const/16 v1, 0x35

    const-wide v2, -0x1fea79bf3a1f19f9L    # -7.214884192316376E154

    aput-wide v2, v0, v1

    const/16 v1, 0x36

    const-wide v2, -0x77b1f867d93c5c31L

    aput-wide v2, v0, v1

    const/16 v1, 0x37

    const-wide v2, -0x6cf2f26adc3aca03L

    aput-wide v2, v0, v1

    const/16 v1, 0x38

    const-wide v2, 0x35638d754e9a2b00L

    aput-wide v2, v0, v1

    const/16 v1, 0x39

    const-wide v2, 0x4085fccf40469dd5L    # 703.6011968151967

    aput-wide v2, v0, v1

    const/16 v1, 0x3a

    const-wide v2, -0x3b4e852d741dc5b4L    # -8.254590445428627E22

    aput-wide v2, v0, v1

    const/16 v1, 0x3b

    const-wide v2, -0x354d0f0395c195d2L    # -7.086800972770549E51

    aput-wide v2, v0, v1

    const/16 v1, 0x3c

    const-wide v2, 0x2860971a6b943fcdL    # 3.368406534030277E-114

    aput-wide v2, v0, v1

    const/16 v1, 0x3d

    const-wide v2, 0x3dde6ee212e30446L    # 1.1071510784702031E-10

    aput-wide v2, v0, v1

    const/16 v1, 0x3e

    const-wide v2, 0x6222f32ae01765aeL    # 5.45624607594858E164

    aput-wide v2, v0, v1

    const/16 v1, 0x3f

    const-wide v2, 0x5d550bb5478308feL    # 4.0099787761533385E141

    aput-wide v2, v0, v1

    const/16 v1, 0x40

    const-wide v2, -0x561056725f125dd6L

    aput-wide v2, v0, v1

    const/16 v1, 0x41

    const-wide v2, -0x3cae58e9793bf259L    # -1.9875159184783004E16

    aput-wide v2, v0, v1

    const/16 v1, 0x42

    const-wide v2, 0x1105586d9c867c84L

    aput-wide v2, v0, v1

    const/16 v1, 0x43

    const-wide v2, -0x2300117a025dd7adL    # -9.506496257264235E139

    aput-wide v2, v0, v1

    const/16 v1, 0x44

    const-wide v2, -0x33042fd9d3a1108aL    # -7.151024058099888E62

    aput-wide v2, v0, v1

    const/16 v1, 0x45

    const-wide v2, -0x450d6b34766f2dffL    # -9.606271137699848E-25

    aput-wide v2, v0, v1

    const/16 v1, 0x46

    const-wide v2, -0x196b9b0ad505268bL    # -1.386524493246063E186

    aput-wide v2, v0, v1

    const/16 v1, 0x47

    const-wide v2, -0x6b4fec5020ecc1ecL    # -4.890186150413207E-209

    aput-wide v2, v0, v1

    const/16 v1, 0x48

    const-wide v2, 0x6a7d1a32823c958L

    aput-wide v2, v0, v1

    const/16 v1, 0x49

    const-wide v2, 0x6f95fe5130f61119L    # 3.334491442088775E229

    aput-wide v2, v0, v1

    const/16 v1, 0x4a

    const-wide v2, -0x26d54cb1b9d3f940L    # -3.4473569259571214E121

    aput-wide v2, v0, v1

    const/16 v1, 0x4b

    const-wide v2, -0x128421cc77838e2eL

    aput-wide v2, v0, v1

    const/16 v1, 0x4c

    const-wide v2, 0x79746d6e6518393eL

    aput-wide v2, v0, v1

    const/16 v1, 0x4d

    const-wide v2, 0x5ba419385d713329L    # 2.853199210212033E133

    aput-wide v2, v0, v1

    const/16 v1, 0x4e

    const-wide v2, 0x7c1ba6b948a97564L    # 6.736756434543183E289

    aput-wide v2, v0, v1

    const/16 v1, 0x4f

    const-wide v2, 0x31987c197bfdac67L    # 8.869046553538829E-70

    aput-wide v2, v0, v1

    const/16 v1, 0x50

    const-wide v2, -0x2193dc3bb4fac2feL    # -7.027608896935101E146

    aput-wide v2, v0, v1

    const/16 v1, 0x51

    const-wide v2, 0x581c49fed002d64dL    # 2.786612754960683E116

    aput-wide v2, v0, v1

    const/16 v1, 0x52

    const-wide v2, -0x22b8b29cc7d9ea8fL    # -2.219967844000829E141

    aput-wide v2, v0, v1

    const/16 v1, 0x53

    const-wide v2, -0x55bab93c1b8c2f9eL    # -4.638421499876621E-105

    aput-wide v2, v0, v1

    const/16 v1, 0x54

    const-wide v2, -0x6d7031cb6baa07a0L    # -2.815627884952443E-219

    aput-wide v2, v0, v1

    const/16 v1, 0x55

    const-wide v2, 0x48161bbacaab94d9L    # 1.880767776500837E39

    aput-wide v2, v0, v1

    const/16 v1, 0x56

    const-wide v2, 0x63912430770e6f68L    # 4.14021539851605E171

    aput-wide v2, v0, v1

    const/16 v1, 0x57

    const-wide v2, 0x6ec8a5e602c6641cL    # 4.561725794587464E225

    aput-wide v2, v0, v1

    const/16 v1, 0x58

    const-wide v2, -0x78d7daeacc8222d5L

    aput-wide v2, v0, v1

    const/16 v1, 0x59

    const-wide v2, 0x2cda6b42034b701bL    # 1.2665353766731836E-92

    aput-wide v2, v0, v1

    const/16 v1, 0x5a

    const-wide v2, -0x4fc2c83e7e34f693L    # -2.5232981480003768E-76

    aput-wide v2, v0, v1

    const/16 v1, 0x5b

    const-wide v2, -0x1ef7bc7d9938e391L    # -2.6650471914344365E159

    aput-wide v2, v0, v1

    const/16 v1, 0x5c

    const-wide v2, 0x2b3180c7eb51b255L

    aput-wide v2, v0, v1

    const/16 v1, 0x5d

    const-wide v2, -0x206d47d0693f7444L    # -2.451046296384255E152

    aput-wide v2, v0, v1

    const/16 v1, 0x5e

    const-wide v2, 0x5c68c8c0a632f3baL    # 1.4411286997608196E137

    aput-wide v2, v0, v1

    const/16 v1, 0x5f

    const-wide v2, 0x5504cc861c3d0556L    # 3.6393964657017635E101

    aput-wide v2, v0, v1

    const/16 v1, 0x60

    const-wide v2, -0x54405b1aa04d9471L    # -5.78701373521182E-98

    aput-wide v2, v0, v1

    const/16 v1, 0x61

    const-wide v2, 0x41848b0ab3baceb4L    # 4.308207046621457E7

    aput-wide v2, v0, v1

    const/16 v1, 0x62

    const-wide v2, -0x4ccb5d8c55bba2ceL    # -5.015987909031632E-62

    aput-wide v2, v0, v1

    const/16 v1, 0x63

    const-wide v2, -0x4359690f57a5277fL    # -1.5674690465113792E-16

    aput-wide v2, v0, v1

    const/16 v1, 0x64

    const-wide v2, 0x24f6ec65b528d56cL    # 1.291818302875785E-130

    aput-wide v2, v0, v1

    const/16 v1, 0x65

    const-wide v2, 0xce1512e90f4524aL

    aput-wide v2, v0, v1

    const/16 v1, 0x66

    const-wide v2, 0x4e9dd79d5506d35aL    # 5.149090039952396E70

    aput-wide v2, v0, v1

    const/16 v1, 0x67

    const-wide v2, 0x258905fac6ce9779L    # 7.22000398392808E-128

    aput-wide v2, v0, v1

    const/16 v1, 0x68

    const-wide v2, 0x2019295b3e109b33L    # 4.691585050783695E-154

    aput-wide v2, v0, v1

    const/16 v1, 0x69

    const-wide v2, -0x756b8748c5fab34L

    aput-wide v2, v0, v1

    const/16 v1, 0x6a

    const-wide v2, 0x2924f2f934417eb0L

    aput-wide v2, v0, v1

    const/16 v1, 0x6b

    const-wide v2, 0x3993357d536d1bc4L    # 2.367685095927128E-31

    aput-wide v2, v0, v1

    const/16 v1, 0x6c

    const-wide v2, 0x38a81ac21db6ff8bL    # 9.06711435233749E-36

    aput-wide v2, v0, v1

    const/16 v1, 0x6d

    const-wide v2, 0x47c4fbf17d6016bfL    # 5.578544884232683E37

    aput-wide v2, v0, v1

    const/16 v1, 0x6e

    const-wide v2, 0x1e0faadd7667e3f5L    # 6.873933908539377E-164

    aput-wide v2, v0, v1

    const/16 v1, 0x6f

    const-wide v2, 0x7abcff62938beb96L    # 1.684371812154205E283

    aput-wide v2, v0, v1

    const/16 v1, 0x70

    const-wide v2, -0x5872526b703e8637L    # -3.6777910142490006E-118

    aput-wide v2, v0, v1

    const/16 v1, 0x71

    const-wide v2, -0x70e06748d6ee1af3L    # -7.763597324484872E-236

    aput-wide v2, v0, v1

    const/16 v1, 0x72

    const-wide v2, 0x61e48eae27121a91L    # 3.699428894450274E163

    aput-wide v2, v0, v1

    const/16 v1, 0x73

    const-wide v2, 0x4d62f7ad31859808L    # 6.2422170861999E64

    aput-wide v2, v0, v1

    const/16 v1, 0x74

    const-wide v2, -0x13145cba10a31515L    # -4.76376300627475E216

    aput-wide v2, v0, v1

    const/16 v1, 0x75

    const-wide v2, -0xa314da143697b32L

    aput-wide v2, v0, v1

    const/16 v1, 0x76

    const-wide v2, -0x9cc1df348089ddfL

    aput-wide v2, v0, v1

    const/16 v1, 0x77

    const-wide v2, -0x5cd320f9547d6c1cL    # -3.030517415904115E-139

    aput-wide v2, v0, v1

    const/16 v1, 0x78

    const-wide v2, -0x67a5dfd35a11d35cL

    aput-wide v2, v0, v1

    const/16 v1, 0x79

    const-wide v2, -0x30f47bb83375704fL    # -6.077229620464301E72

    aput-wide v2, v0, v1

    const/16 v1, 0x7a

    const-wide v2, -0x6089adbb6867a65dL    # -4.064460498061626E-157

    aput-wide v2, v0, v1

    const/16 v1, 0x7b

    const-wide v2, -0x572ae94e5edbffe9L    # -5.48062841079888E-112

    aput-wide v2, v0, v1

    const/16 v1, 0x7c

    const-wide v2, 0xbd7ba3ebb5dc726L

    aput-wide v2, v0, v1

    const/16 v1, 0x7d

    const-wide v2, -0x1ab435aa479524c7L    # -9.00910742265035E179

    aput-wide v2, v0, v1

    const/16 v1, 0x7e

    const-wide v2, 0x1d7a3afd6c478063L

    aput-wide v2, v0, v1

    const/16 v1, 0x7f

    const-wide v2, 0x519ec608e7669eddL    # 1.494571591867267E85

    aput-wide v2, v0, v1

    const/16 v1, 0x80

    const-wide v2, 0xe5715a2d149aa23L

    aput-wide v2, v0, v1

    const/16 v1, 0x81

    const-wide v2, 0x177d4571848ff194L    # 1.566333710091169E-195

    aput-wide v2, v0, v1

    const/16 v1, 0x82

    const-wide v2, -0x114aa0cdbefeb3deL    # -1.977694046010178E225

    aput-wide v2, v0, v1

    const/16 v1, 0x83

    const-wide v2, 0xf5e5ca13a6e2ec2L

    aput-wide v2, v0, v1

    const/16 v1, 0x84

    const-wide v2, -0x7fd66d848a0a3c9fL    # -7.112503203717771E-308

    aput-wide v2, v0, v1

    const/16 v1, 0x85

    const-wide v2, -0x52ec60543c291bcaL    # -1.5052288981277233E-91

    aput-wide v2, v0, v1

    const/16 v1, 0x86

    const-wide v2, 0xd5df1a94ccf402fL    # 2.7409000087764454E-244

    aput-wide v2, v0, v1

    const/16 v1, 0x87

    const-wide v2, 0x3e8bd948bea5dfc8L    # 2.0748947744306618E-7

    aput-wide v2, v0, v1

    const/16 v1, 0x88

    const-wide v2, -0x5a5f2ca842c00882L

    aput-wide v2, v0, v1

    const/16 v1, 0x89

    const-wide v2, -0x5d2ed1dae08b09bbL    # -5.635489137392243E-141

    aput-wide v2, v0, v1

    const/16 v1, 0x8a

    const-wide v2, 0x66fd9e525e81a082L    # 1.2887229304332624E188

    aput-wide v2, v0, v1

    const/16 v1, 0x8b

    const-wide v2, 0x2e0c90ce7f687a49L    # 7.1798502496283706E-87

    aput-wide v2, v0, v1

    const/16 v1, 0x8c

    const-wide v2, -0x3d1743414568c43bL    # -2.1759146254179016E14

    aput-wide v2, v0, v1

    const/16 v1, 0x8d

    const-wide v2, 0x1bce509745fL

    aput-wide v2, v0, v1

    const/16 v1, 0x8e

    const-wide v2, 0x423777bbe6dab3d6L    # 1.0079305084270248E11

    aput-wide v2, v0, v1

    const/16 v1, 0x8f

    const-wide v2, -0x2e99e381510f914bL    # -1.3423421964143088E84

    aput-wide v2, v0, v1

    const/16 v1, 0x90

    const-wide v2, -0x5e87e0cab2553028L

    aput-wide v2, v0, v1

    const/16 v1, 0x91

    const-wide v2, 0x2d11284a2b16affcL    # 1.3160498511992928E-91

    aput-wide v2, v0, v1

    const/16 v1, 0x92

    const-wide v2, -0xe03b0980576e2e1L    # -1.1798293193350545E241

    aput-wide v2, v0, v1

    const/16 v1, 0x93

    const-wide v2, 0x73ecc25dcb920adaL    # 2.573853803514485E250

    aput-wide v2, v0, v1

    const/16 v1, 0x94

    const-wide v2, -0x519ef3dd3d5ed9afL    # -2.7422656576782985E-85

    aput-wide v2, v0, v1

    const/16 v1, 0x95

    const-wide v2, -0x691f57ef2ca94876L

    aput-wide v2, v0, v1

    const/16 v1, 0x96

    const-wide v2, 0x5a9a381f2fe7870fL    # 2.8397364451033336E128

    aput-wide v2, v0, v1

    const/16 v1, 0x97

    const-wide v2, -0x2a529d1216b1aad0L    # -5.26545044930174E104

    aput-wide v2, v0, v1

    const/16 v1, 0x98

    const-wide v2, -0x2dda1a17c972ebd9L    # -5.445210650827216E87

    aput-wide v2, v0, v1

    const/16 v1, 0x99

    const-wide v2, 0x65977b70c7af4631L    # 2.4359927872026993E181

    aput-wide v2, v0, v1

    const/16 v1, 0x9a

    const-wide v2, -0x6607764d21c628b1L

    aput-wide v2, v0, v1

    const/16 v1, 0x9b

    const-wide v2, 0x233f30bf54e1d143L    # 6.547917933248632E-139

    aput-wide v2, v0, v1

    const/16 v1, 0x9c

    const-wide v2, -0x65698a2c2659c369L    # -1.353185899327882E-180

    aput-wide v2, v0, v1

    const/16 v1, 0x9d

    const-wide v2, 0x5470554ff334f9a8L    # 5.582018047609434E98

    aput-wide v2, v0, v1

    const/16 v1, 0x9e

    const-wide v2, 0x166acb744a4f5688L

    aput-wide v2, v0, v1

    const/16 v1, 0x9f

    const-wide v2, 0x70c74caab2e4aeadL    # 1.8520506218855885E235

    aput-wide v2, v0, v1

    const/16 v1, 0xa0

    const-wide v2, -0xf2f6e9b90d6b2eeL    # -2.633935326075446E235

    aput-wide v2, v0, v1

    const/16 v1, 0xa1

    const-wide v2, 0x57b82a89684031d1L    # 3.719512317491703E114

    aput-wide v2, v0, v1

    const/16 v1, 0xa2

    const-wide v2, -0x1026a5a59e41f495L    # -6.150140711453618E230

    aput-wide v2, v0, v1

    const/16 v1, 0xa3

    const-wide v2, 0x2fbd12e969f2f29aL    # 9.808081147993902E-79

    aput-wide v2, v0, v1

    const/16 v1, 0xa4

    const-wide v2, -0x642c8fec01006018L

    aput-wide v2, v0, v1

    const/16 v1, 0xa5

    const-wide v2, 0x3f9b0404d6085a06L    # 0.026382518352045657

    aput-wide v2, v0, v1

    const/16 v1, 0xa6

    const-wide v2, 0x4940c1f3166cfe15L    # 7.474146255708377E44

    aput-wide v2, v0, v1

    const/16 v1, 0xa7

    const-wide v2, 0x9542c4dcdf3defbL

    aput-wide v2, v0, v1

    const/16 v1, 0xa8

    const-wide v2, -0x4b3ade7c7a32a31dL    # -1.7235705229736215E-54

    aput-wide v2, v0, v1

    const/16 v1, 0xa9

    const-wide v2, -0x36ca4823bb9d59bfL    # -4.8433215051509865E44

    aput-wide v2, v0, v1

    const/16 v1, 0xaa

    const-wide v2, 0x3417f8a68ed3b63fL    # 9.547117635914928E-58

    aput-wide v2, v0, v1

    const/16 v1, 0xab

    const-wide v2, -0x47f6a6d6a4dea4c0L    # -9.311490160916157E-39

    aput-wide v2, v0, v1

    const/16 v1, 0xac

    const-wide v2, -0x6632510c4737a8eL    # -6.393818479775338E277

    aput-wide v2, v0, v1

    const/16 v1, 0xad

    const-wide v2, 0x18c0614f8fcb95dL

    aput-wide v2, v0, v1

    const/16 v1, 0xae

    const-wide v2, 0x1b14accd1a3acdf3L

    aput-wide v2, v0, v1

    const/16 v1, 0xaf

    const-wide v2, -0x7b2b8e0dff448cd3L

    aput-wide v2, v0, v1

    const/16 v1, 0xb0

    const-wide v2, -0x3e5ceef16a1725eaL    # -1.5994247495478886E8

    aput-wide v2, v0, v1

    const/16 v1, 0xb1

    const-wide v2, 0x430a7220bf1a82b8L    # 9.30479295647831E14

    aput-wide v2, v0, v1

    const/16 v1, 0xb2

    const-wide v2, -0x4881f6f2c620def2L    # -2.1549312578596963E-41

    aput-wide v2, v0, v1

    const/16 v1, 0xb3

    const-wide v2, 0x5ef4bd9f3cd05e9dL    # 2.6520487758334257E149

    aput-wide v2, v0, v1

    const/16 v1, 0xb4

    const-wide v2, -0x62b0092581a85bbcL

    aput-wide v2, v0, v1

    const/16 v1, 0xb5

    const-wide v2, -0x25e29f1e7c2b5a08L    # -1.2429308053224223E126

    aput-wide v2, v0, v1

    const/16 v1, 0xb6

    const-wide v2, -0x4d783c7be86671b9L    # -2.8206268637194898E-65

    aput-wide v2, v0, v1

    const/16 v1, 0xb7

    const-wide v2, -0x1c123ede44ce77aL

    aput-wide v2, v0, v1

    const/16 v1, 0xb8

    const-wide v2, -0x3801c33367f33411L    # -6.430804374921564E38

    aput-wide v2, v0, v1

    const/16 v1, 0xb9

    const-wide v2, -0x1b904a6fe76402fdL    # -6.2741252655709456E175

    aput-wide v2, v0, v1

    const/16 v1, 0xba

    const-wide v2, 0x3732fd469a4c57dcL    # 8.515122877317974E-43

    aput-wide v2, v0, v1

    const/16 v1, 0xbb

    const-wide v2, 0x7ef700a07cf1ad65L    # 3.9435715092612284E303

    aput-wide v2, v0, v1

    const/16 v1, 0xbc

    const-wide v2, 0x59c64468a31d8859L    # 2.943975954236169E124

    aput-wide v2, v0, v1

    const/16 v1, 0xbd

    const-wide v2, 0x762fb0b4d45b61f6L    # 1.9490009460709338E261

    aput-wide v2, v0, v1

    const/16 v1, 0xbe

    const-wide v2, 0x155baed099047718L    # 8.622517705247637E-206

    aput-wide v2, v0, v1

    const/16 v1, 0xbf

    const-wide v2, 0x68755e4c3d50baa6L    # 1.5598693075976192E195

    aput-wide v2, v0, v1

    const/16 v1, 0xc0

    const-wide v2, -0x16deb180dd274b21L    # -2.5873763533135446E198

    aput-wide v2, v0, v1

    const/16 v1, 0xc1

    const-wide v2, 0x2addbf532eac95f4L

    aput-wide v2, v0, v1

    const/16 v1, 0xc2

    const-wide v2, 0x32ae3909b4bd0109L    # 1.4349134309536205E-64

    aput-wide v2, v0, v1

    const/16 v1, 0xc3

    const-wide v2, -0x7cb20ac84f71cbb0L    # -9.38134956984277E-293

    aput-wide v2, v0, v1

    const/16 v1, 0xc4

    const-wide v2, -0x5df6257bddf8d73L

    aput-wide v2, v0, v1

    const/16 v1, 0xc5

    const-wide v2, -0x6196e2646101dc09L    # -3.489127735326001E-162

    aput-wide v2, v0, v1

    const/16 v1, 0xc6

    const-wide v2, 0x446d288c4ae8d7fL

    aput-wide v2, v0, v1

    const/16 v1, 0xc7

    const-wide v2, 0x7b4cc524e169785bL    # 8.55632324789623E285

    aput-wide v2, v0, v1

    const/16 v1, 0xc8

    const-wide v2, 0x21d87f0135ca1385L    # 1.226081304078227E-145

    aput-wide v2, v0, v1

    const/16 v1, 0xc9

    const-wide v2, -0x3144bff0ec84755bL    # -1.880741756490882E71

    aput-wide v2, v0, v1

    const/16 v1, 0xca

    const-wide v2, 0x272e2b66580796beL

    aput-wide v2, v0, v1

    const/16 v1, 0xcb

    const-wide v2, 0x3612264125c2b0deL    # 3.10458625368643E-48

    aput-wide v2, v0, v1

    const/16 v1, 0xcc

    const-wide v2, 0x57702bdad1efbb2L

    aput-wide v2, v0, v1

    const/16 v1, 0xcd

    const-wide v2, -0x2b4544715307b417L    # -1.4617749729650591E100

    aput-wide v2, v0, v1

    const/16 v1, 0xce

    const-wide v2, -0x6ea7cec69be43985L    # -4.084887381117172E-225

    aput-wide v2, v0, v1

    const/16 v1, 0xcf

    const-wide v2, -0x7423d21f7fc91fdcL

    aput-wide v2, v0, v1

    const/16 v1, 0xd0

    const-wide v2, 0x603c8156f49f68edL    # 3.8219269022214676E155

    aput-wide v2, v0, v1

    const/16 v1, 0xd1

    const-wide v2, -0x82dc9082410aeefL

    aput-wide v2, v0, v1

    const/16 v1, 0xd2

    const-wide v2, -0x68d83ba6752de180L

    aput-wide v2, v0, v1

    const/16 v1, 0xd3

    const-wide v2, -0x5f75f76998f5a029L    # -6.213345560099107E-152

    aput-wide v2, v0, v1

    const/16 v1, 0xd4

    const-wide v2, -0x34b570bcf6145635L    # -5.087811766185127E54

    aput-wide v2, v0, v1

    const/16 v1, 0xd5

    const-wide v2, -0x7e50a9b4f08fc95fL

    aput-wide v2, v0, v1

    const/16 v1, 0xd6

    const-wide v2, -0x3f46655887e66543L    # -6554.654176330831

    aput-wide v2, v0, v1

    const/16 v1, 0xd7

    const-wide v2, -0x6a60e137c03716aeL

    aput-wide v2, v0, v1

    const/16 v1, 0xd8

    const-wide v2, -0x73afaf8886b57e47L

    aput-wide v2, v0, v1

    const/16 v1, 0xd9

    const-wide v2, 0x3acaaf8f056338f0L    # 1.7245278595797548E-25

    aput-wide v2, v0, v1

    const/16 v1, 0xda

    const-wide v2, 0x7b43f50627a6778L

    aput-wide v2, v0, v1

    const/16 v1, 0xdb

    const-wide v2, 0x4a44ab49f5eccc77L    # 6.04158390918338E49

    aput-wide v2, v0, v1

    const/16 v1, 0xdc

    const-wide v2, 0x3bc3d6e4b679ee98L    # 8.402324322903995E-21

    aput-wide v2, v0, v1

    const/16 v1, 0xdd

    const-wide v2, -0x633f2b2e30ebef74L    # -3.484261975359172E-170

    aput-wide v2, v0, v1

    const/16 v1, 0xde

    const-wide v2, 0x4406c00b206bc8a0L    # 5.2458319943616954E19

    aput-wide v2, v0, v1

    const/16 v1, 0xdf

    const-wide v2, -0x7d5e77ab3728d277L    # -5.361659145000285E-296

    aput-wide v2, v0, v1

    const/16 v1, 0xe0

    const-wide v2, 0x67e366b35c3c432cL    # 2.766147054726402E192

    aput-wide v2, v0, v1

    const/16 v1, 0xe1

    const-wide v2, -0x46dc229eefd4c80eL    # -1.9129070291525527E-33

    aput-wide v2, v0, v1

    const/16 v1, 0xe2

    const-wide v2, 0x56ab2779d884271dL    # 3.188640098681282E109

    aput-wide v2, v0, v1

    const/16 v1, 0xe3

    const-wide v2, -0x417c1e4f00eada51L    # -1.4812951535718988E-7

    aput-wide v2, v0, v1

    const/16 v1, 0xe4

    const-wide v2, -0x4839a2bde81b657L

    aput-wide v2, v0, v1

    const/16 v1, 0xe5

    const-wide v2, 0x6bdbe0e76d48e7d4L

    aput-wide v2, v0, v1

    const/16 v1, 0xe6

    const-wide v2, 0x8df828745d9179eL

    aput-wide v2, v0, v1

    const/16 v1, 0xe7

    const-wide v2, 0x22ea6a9add53bd34L

    aput-wide v2, v0, v1

    const/16 v1, 0xe8

    const-wide v2, -0x1c91ebe3a9dddff6L    # -9.081227627608342E170

    aput-wide v2, v0, v1

    const/16 v1, 0xe9

    const-wide v2, 0x7f805d1b8cb750eeL    # 1.436372757399633E306

    aput-wide v2, v0, v1

    const/16 v1, 0xea

    const-wide v2, -0x501a385a60a717c9L    # -5.877957394232105E-78

    aput-wide v2, v0, v1

    const/16 v1, 0xeb

    const-wide v2, -0x1d806695b04e3dc4L    # -2.9114865589128174E166

    aput-wide v2, v0, v1

    const/16 v1, 0xec

    const-wide v2, -0x2c798204f88a0f30L    # -2.3458427195547908E94

    aput-wide v2, v0, v1

    const/16 v1, 0xed

    const-wide v2, -0x2f198c21917776e6L    # -5.32446196475802E81

    aput-wide v2, v0, v1

    const/16 v1, 0xee

    const-wide v2, 0x123aeb9eafb86c25L    # 7.447397598895579E-221

    aput-wide v2, v0, v1

    const/16 v1, 0xef

    const-wide v2, 0x30f1d5d5c145b895L    # 6.309011277610573E-73

    aput-wide v2, v0, v1

    const/16 v1, 0xf0

    const-wide v2, -0x44bcb5d2118d9619L    # -3.1912236541033266E-23

    aput-wide v2, v0, v1

    const/16 v1, 0xf1

    const-wide v2, 0x78cb67ecf931fa38L    # 7.41295033246776E273

    aput-wide v2, v0, v1

    const/16 v1, 0xf2

    const-wide v2, -0xcc4fc8dcdc44064L

    aput-wide v2, v0, v1

    const/16 v1, 0xf3

    const-wide v2, 0x52d66336fb279c74L    # 1.1401065111539968E91

    aput-wide v2, v0, v1

    const/16 v1, 0xf4

    const-wide v2, 0x505f33ac0afb4eaaL    # 1.445170678048954E79

    aput-wide v2, v0, v1

    const/16 v1, 0xf5

    const-wide v2, -0x175a32665d331e79L    # -1.2732859595910699E196

    aput-wide v2, v0, v1

    const/16 v1, 0xf6

    const-wide v2, 0x534974801e2d30bbL    # 1.659293234718952E93

    aput-wide v2, v0, v1

    const/16 v1, 0xf7

    const-wide v2, -0x72d2a8ee2a789270L

    aput-wide v2, v0, v1

    const/16 v1, 0xf8

    const-wide v2, 0x1f1a412891bc038eL    # 7.46975690208058E-159

    aput-wide v2, v0, v1

    const/16 v1, 0xf9

    const-wide v2, -0x291d18e27d1a99b8L    # -3.551521342082304E110

    aput-wide v2, v0, v1

    const/16 v1, 0xfa

    const-wide v2, 0x74036c3a497732b7L    # 6.953083539474299E250

    aput-wide v2, v0, v1

    const/16 v1, 0xfb

    const-wide v2, -0x764981269c9e0a55L    # -7.143968319553473E-262

    aput-wide v2, v0, v1

    const/16 v1, 0xfc

    const-wide v2, -0x126a270e15fd5eL

    aput-wide v2, v0, v1

    const/16 v1, 0xfd

    const-wide v2, -0x18d4c429eb9b2bc3L    # -9.479698205117648E188

    aput-wide v2, v0, v1

    const/16 v1, 0xfe

    const-wide v2, -0x59cff0e8f423b7e0L    # -9.489401573522989E-125

    aput-wide v2, v0, v1

    const/16 v1, 0xff

    const-wide v2, -0x143e789f12875886L    # -1.1525498731172976E211

    aput-wide v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/TigerDigest;->t1:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    const-wide v2, -0x195941a5fa5edec8L

    aput-wide v2, v0, v4

    const-wide v2, -0x4a5edd5a4b078368L    # -2.289936734257356E-50

    aput-wide v2, v0, v5

    const-wide v2, 0x563c6089140b6990L    # 2.6033128168985828E107

    aput-wide v2, v0, v6

    const-wide v2, 0x4c46cb2e391f5dd5L    # 2.86156421983987E59

    aput-wide v2, v0, v7

    const-wide v2, -0x26cd522436486bccL    # -4.82341939424513E121

    aput-wide v2, v0, v8

    const/4 v1, 0x5

    const-wide v2, 0x8ea70e42015aff5L

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, -0x289a5998c1b8730fL    # -1.0413256117604073E113

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, -0x3b048a8154d87267L    # -2.0747406644266135E24

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide v2, -0x20ee3979d291f96eL    # -9.091578949249116E149

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide v2, -0x22147b0ef280c4eaL    # -2.684635774528724E144

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide v2, 0x6f2ef604a665ea04L    # 3.6672611831325645E227

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide v2, 0x4a8e0f0ff0e0dfb3L    # 1.4057932632363726E51

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide v2, -0x5a121107c24345afL    # -5.527502759007892E-126

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide v2, -0x3b0f5d5f15bc8e2L

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide v2, -0x17c1e257a34c7bd7L    # -1.3740177842389176E194

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide v2, -0x2370077d45e4e31eL    # -7.4360241018322356E137

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide v2, -0x32baafa17cac17f3L    # -1.7536094474374944E64

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide v2, 0x18d19a00d4db0717L    # 3.950520018179867E-189

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide v2, 0x34a0cfeda5f38101L    # 3.4282766911368454E-55

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide v2, 0xbe77e518887caf2L

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide v2, 0x1e341438b3c45136L

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide v2, -0x1fa8680b6f763307L    # -1.2653525152577794E156

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide v2, -0x2dc0620da6e2ecL

    aput-wide v2, v0, v1

    const/16 v1, 0x17

    const-wide v2, 0x543dda228595c5cdL    # 6.3763675656900895E97

    aput-wide v2, v0, v1

    const/16 v1, 0x18

    const-wide v2, 0x661f81fd99052a33L    # 8.367488410043276E183

    aput-wide v2, v0, v1

    const/16 v1, 0x19

    const-wide v2, -0x78c919be24f0848aL    # -6.614071134682845E-274

    aput-wide v2, v0, v1

    const/16 v1, 0x1a

    const-wide v2, 0x15227725418e5307L    # 7.189389202150458E-207

    aput-wide v2, v0, v1

    const/16 v1, 0x1b

    const-wide v2, -0x1da080b9e9d14d06L    # -7.255194723984126E165

    aput-wide v2, v0, v1

    const/16 v1, 0x1c

    const-wide v2, 0x48a8b2126c13d9feL    # 1.0756448054743974E42

    aput-wide v2, v0, v1

    const/16 v1, 0x1d

    const-wide v2, -0x5023abe86d189116L    # -3.822649513303002E-78

    aput-wide v2, v0, v1

    const/16 v1, 0x1e

    const-wide v2, 0x3d912bfc6d1898fL

    aput-wide v2, v0, v1

    const/16 v1, 0x1f

    const-wide v2, 0x31b1aafa1b83f51bL    # 2.5599142520690654E-69

    aput-wide v2, v0, v1

    const/16 v1, 0x20

    const-wide v2, -0xe53d8691bd54827L    # -3.6667106836317624E239

    aput-wide v2, v0, v1

    const/16 v1, 0x21

    const-wide v2, 0x40a3a7d7fcd2ebacL    # 2515.9218507683454

    aput-wide v2, v0, v1

    const/16 v1, 0x22

    const-wide v2, 0x1056136d0afbbcc5L    # 5.687761765133887E-230

    aput-wide v2, v0, v1

    const/16 v1, 0x23

    const-wide v2, 0x7889e1dd9a6d0c85L    # 4.375510725481963E272

    aput-wide v2, v0, v1

    const/16 v1, 0x24

    const-wide v2, -0x2ccada87d5868b56L    # -6.892144950457963E92

    aput-wide v2, v0, v1

    const/16 v1, 0x25

    const-wide v2, -0x581da2f6f8753f65L

    aput-wide v2, v0, v1

    const/16 v1, 0x26

    const-wide v2, -0x42bec74c15391230L

    aput-wide v2, v0, v1

    const/16 v1, 0x27

    const-wide v2, -0x6df540418e146190L    # -9.249979076360297E-222

    aput-wide v2, v0, v1

    const/16 v1, 0x28

    const-wide v2, -0x5d5a2f0ab03d9da4L    # -8.945240396948711E-142

    aput-wide v2, v0, v1

    const/16 v1, 0x29

    const-wide v2, -0x3fab1c94f4ed6f5dL    # -83.55340840161311

    aput-wide v2, v0, v1

    const/16 v1, 0x2a

    const-wide v2, -0x922a6009d016cd5L    # -3.696981669692646E264

    aput-wide v2, v0, v1

    const/16 v1, 0x2b

    const-wide v2, 0x3537354511a8ac7dL    # 2.4230371485070625E-52

    aput-wide v2, v0, v1

    const/16 v1, 0x2c

    const-wide v2, -0x357ba16e8d05232cL    # -9.526374881054082E50

    aput-wide v2, v0, v1

    const/16 v1, 0x2d

    const-wide v2, -0x7b07d49fcd62df24L

    aput-wide v2, v0, v1

    const/16 v1, 0x2e

    const-wide v2, 0x79c62ce1cd672f18L    # 3.9309354413235484E278

    aput-wide v2, v0, v1

    const/16 v1, 0x2f

    const-wide v2, -0x74f65d522edb9bd4L

    aput-wide v2, v0, v1

    const/16 v1, 0x30

    const-wide v2, -0x2f3e1695e62618daL    # -1.0619094399802638E81

    aput-wide v2, v0, v1

    const/16 v1, 0x31

    const-wide v2, 0x5a786a9b4ba9500cL    # 6.611201306975897E127

    aput-wide v2, v0, v1

    const/16 v1, 0x32

    const-wide v2, 0xe020336634c43f3L    # 3.376670226298288E-241

    aput-wide v2, v0, v1

    const/16 v1, 0x33

    const-wide v2, -0x3e84b8b5149927deL    # -2.8603566712608464E7

    aput-wide v2, v0, v1

    const/16 v1, 0x34

    const-wide v2, 0x6a731ae3ec9baac2L    # 5.989975251874149E204

    aput-wide v2, v0, v1

    const/16 v1, 0x35

    const-wide v2, -0x7dd999851f7bfda8L

    aput-wide v2, v0, v1

    const/16 v1, 0x36

    const-wide v2, 0x67d4567691caeca5L    # 1.4498400271611563E192

    aput-wide v2, v0, v1

    const/16 v1, 0x37

    const-wide v2, 0x1d94155c4875adb5L

    aput-wide v2, v0, v1

    const/16 v1, 0x38

    const-wide v2, 0x6d00fd985b813fdfL    # 1.1714284332036866E217

    aput-wide v2, v0, v1

    const/16 v1, 0x39

    const-wide v2, 0x51286efcb774cd06L    # 9.270758823259665E82

    aput-wide v2, v0, v1

    const/16 v1, 0x3a

    const-wide v2, 0x5e8834471fa744afL    # 2.4179026653735378E147

    aput-wide v2, v0, v1

    const/16 v1, 0x3b

    const-wide v2, -0x8d35f51189e51d2L

    aput-wide v2, v0, v1

    const/16 v1, 0x3c

    const-wide v2, -0x41bf1b3251171f66L    # -7.866771648259362E-9

    aput-wide v2, v0, v1

    const/16 v1, 0x3d

    const-wide v2, -0x1668f444aee7099bL    # -4.410110045296957E200

    aput-wide v2, v0, v1

    const/16 v1, 0x3e

    const-wide v2, 0x726e4beb33df1964L    # 1.6161430697988714E243

    aput-wide v2, v0, v1

    const/16 v1, 0x3f

    const-wide v2, 0x703b000729199762L    # 4.191815812222121E232

    aput-wide v2, v0, v1

    const/16 v1, 0x40

    const-wide v2, 0x4631d816f5ef30a7L    # 1.4137552826240017E30

    aput-wide v2, v0, v1

    const/16 v1, 0x41

    const-wide v2, -0x477f4a4aeafb5942L    # -1.5713815083443988E-36

    aput-wide v2, v0, v1

    const/16 v1, 0x42

    const-wide v2, 0x641793c37ed84b6cL

    aput-wide v2, v0, v1

    const/16 v1, 0x43

    const-wide v2, 0x7b21ed77f6e97d96L    # 1.3329330910106677E285

    aput-wide v2, v0, v1

    const/16 v1, 0x44

    const-wide v2, 0x776306312ef96b73L    # 1.2268523522243124E267

    aput-wide v2, v0, v1

    const/16 v1, 0x45

    const-wide v2, -0x51ad76b717900c0cL    # -1.490882981536987E-85

    aput-wide v2, v0, v1

    const/16 v1, 0x46

    const-wide v2, 0x53dbd7f286a3f8f8L    # 9.292726543294968E95

    aput-wide v2, v0, v1

    const/16 v1, 0x47

    const-wide v2, 0x16cadce74cfc1063L    # 7.018848054087858E-199

    aput-wide v2, v0, v1

    const/16 v1, 0x48

    const-wide v2, 0x5c19bdfa52c6ddL

    aput-wide v2, v0, v1

    const/16 v1, 0x49

    const-wide v2, 0x68868f5d64d46ad3L    # 3.293719879424502E195

    aput-wide v2, v0, v1

    const/16 v1, 0x4a

    const-wide v2, 0x3a9d512ccf1e186aL    # 2.3682156688954886E-26

    aput-wide v2, v0, v1

    const/16 v1, 0x4b

    const-wide v2, 0x367e62c2385660aeL    # 3.3265266667554052E-46

    aput-wide v2, v0, v1

    const/16 v1, 0x4c

    const-wide v2, -0x1ca6181588234e29L    # -3.9107189654547484E170

    aput-wide v2, v0, v1

    const/16 v1, 0x4d

    const-wide v2, 0x526c0773749abe6eL    # 1.1151620353192827E89

    aput-wide v2, v0, v1

    const/16 v1, 0x4e

    const-wide v2, 0x735ae5f9d09f734bL    # 4.7017765153582554E247

    aput-wide v2, v0, v1

    const/16 v1, 0x4f

    const-wide v2, 0x493fc7cc8a558ba8L    # 7.087280475353627E44

    aput-wide v2, v0, v1

    const/16 v1, 0x50

    const-wide v2, -0x4f463eaccfbe54bbL    # -5.694106565063367E-74

    aput-wide v2, v0, v1

    const/16 v1, 0x51

    const-wide v2, 0x321958ba470a59bdL    # 2.3503934078613085E-67

    aput-wide v2, v0, v1

    const/16 v1, 0x52

    const-wide v2, -0x7ad24ff4a0b93c6dL    # -9.982291847638568E-284

    aput-wide v2, v0, v1

    const/16 v1, 0x53

    const-wide v2, -0x6edf64d42cc94f1bL

    aput-wide v2, v0, v1

    const/16 v1, 0x54

    const-wide v2, 0x6e604f7d659ef19fL    # 4.716656627848426E223

    aput-wide v2, v0, v1

    const/16 v1, 0x55

    const-wide v2, -0x4665751d87d334dcL

    aput-wide v2, v0, v1

    const/16 v1, 0x56

    const-wide v2, -0x330ad54937eb3b39L    # -5.442211038928764E62

    aput-wide v2, v0, v1

    const/16 v1, 0x57

    const-wide v2, 0x4727d9afbe11727bL    # 6.191901719098883E34

    aput-wide v2, v0, v1

    const/16 v1, 0x58

    const-wide v2, 0x7e950d0c0121b34dL    # 5.639072392182636E301

    aput-wide v2, v0, v1

    const/16 v1, 0x59

    const-wide v2, 0x756f435670ad471fL    # 4.694155636338008E257

    aput-wide v2, v0, v1

    const/16 v1, 0x5a

    const-wide v2, -0xa522bbd9ea597b7L    # -7.166168148598198E258

    aput-wide v2, v0, v1

    const/16 v1, 0x5b

    const-wide v2, 0x4e87e09980b9957aL    # 2.0599419970577206E70

    aput-wide v2, v0, v1

    const/16 v1, 0x5c

    const-wide v2, 0x2acfa1df50aee355L

    aput-wide v2, v0, v1

    const/16 v1, 0x5d

    const-wide v2, -0x2767d9c502d02aaaL    # -6.089807038647105E118

    aput-wide v2, v0, v1

    const/16 v1, 0x5e

    const-wide v2, -0x370b6db227f3702aL    # -2.86724866648359E43

    aput-wide v2, v0, v1

    const/16 v1, 0x5f

    const-wide v2, -0x306635c28ab5e8c6L    # -2.916287122577618E75

    aput-wide v2, v0, v1

    const/16 v1, 0x60

    const-wide v2, -0x1b88453506e40c4L

    aput-wide v2, v0, v1

    const/16 v1, 0x61

    const-wide v2, -0x12ac8e09296f3ed3L    # -4.29011243263278E218

    aput-wide v2, v0, v1

    const/16 v1, 0x62

    const-wide v2, -0x7ce5a3d7a1978f6cL    # -1.0318332009700065E-293

    aput-wide v2, v0, v1

    const/16 v1, 0x63

    const-wide v2, -0x3a2c36f5c8f75f5cL    # -2.4493030060822106E28

    aput-wide v2, v0, v1

    const/16 v1, 0x64

    const-wide v2, 0xf7f903717d06580L    # 4.96348078150214E-234

    aput-wide v2, v0, v1

    const/16 v1, 0x65

    const-wide v2, 0x19f9bb13b8fdf27fL

    aput-wide v2, v0, v1

    const/16 v1, 0x66

    const-wide v2, -0x4e4290e4b2afd7bdL    # -4.2647192270710947E-69

    aput-wide v2, v0, v1

    const/16 v1, 0x67

    const-wide v2, 0x1c761ba38fff4012L    # 1.430181773616896E-171

    aput-wide v2, v0, v1

    const/16 v1, 0x68

    const-wide v2, 0xd1530c4e2e21f3bL

    aput-wide v2, v0, v1

    const/16 v1, 0x69

    const-wide v2, -0x76bc319658c8d376L    # -4.91402267744584E-264

    aput-wide v2, v0, v1

    const/16 v1, 0x6a

    const-wide v2, -0x1ae7b1ee014a319aL    # -9.849005718507393E178

    aput-wide v2, v0, v1

    const/16 v1, 0x6b

    const-wide v2, 0x618bdb80bd736621L    # 7.833011897264971E161

    aput-wide v2, v0, v1

    const/16 v1, 0x6c

    const-wide v2, 0x7d29bad68b574d0bL    # 8.216423074912893E294

    aput-wide v2, v0, v1

    const/16 v1, 0x6d

    const-wide v2, -0x7e449ec1da1901a5L    # -2.555262213522891E-300

    aput-wide v2, v0, v1

    const/16 v1, 0x6e

    const-wide v2, 0x71c9c10bc07913fL

    aput-wide v2, v0, v1

    const/16 v1, 0x6f

    const-wide v2, -0x38411486f653d269L    # -4.10994845732052E37

    aput-wide v2, v0, v1

    const/16 v1, 0x70

    const-wide v2, -0x3c1a72cac43a28a9L    # -1.2423647818810046E19

    aput-wide v2, v0, v1

    const/16 v1, 0x71

    const-wide v2, -0x14fe876d0c709e18L    # -2.80455913804985E207

    aput-wide v2, v0, v1

    const/16 v1, 0x72

    const-wide v2, -0x2b10046364e33de6L

    aput-wide v2, v0, v1

    const/16 v1, 0x73

    const-wide v2, -0x668d82d90b6b0855L

    aput-wide v2, v0, v1

    const/16 v1, 0x74

    const-wide v2, -0x5c1f9c5d6a94c1fdL    # -7.046439185912837E-136

    aput-wide v2, v0, v1

    const/16 v1, 0x75

    const-wide v2, -0x62b57465b55f63d0L

    aput-wide v2, v0, v1

    const/16 v1, 0x76

    const-wide v2, 0x3f6ab7d500090fb4L    # 0.003261486068625497

    aput-wide v2, v0, v1

    const/16 v1, 0x77

    const-wide v2, -0x633f0d5fa8d97540L    # -3.508364765488585E-170

    aput-wide v2, v0, v1

    const/16 v1, 0x78

    const-wide v2, 0x3dee9d2dedbf42d1L    # 2.227460359160617E-10

    aput-wide v2, v0, v1

    const/16 v1, 0x79

    const-wide v2, 0x330f49c87960a972L    # 9.507179759324374E-63

    aput-wide v2, v0, v1

    const/16 v1, 0x7a

    const-wide v2, -0x394d8dfd78bde4bfL    # -3.741161658795404E32

    aput-wide v2, v0, v1

    const/16 v1, 0x7b

    const-wide v2, 0xac59ec07c00369cL    # 8.999365682227781E-257

    aput-wide v2, v0, v1

    const/16 v1, 0x7c

    const-wide v2, -0x10b153b634cacbdbL    # -1.4532589417557245E228

    aput-wide v2, v0, v1

    const/16 v1, 0x7d

    const-wide v2, -0xbafdbb110fed628L    # -1.84913720860884E252

    aput-wide v2, v0, v1

    const/16 v1, 0x7e

    const-wide v2, -0x7533b91a350b214aL

    aput-wide v2, v0, v1

    const/16 v1, 0x7f

    const-wide v2, 0x2ffeab63989263f7L    # 1.655417949215975E-77

    aput-wide v2, v0, v1

    const/16 v1, 0x80

    const-wide v2, -0x70834601a285ba88L    # -4.517380420447292E-234

    aput-wide v2, v0, v1

    const/16 v1, 0x81

    const-wide v2, 0x5bd8f7644e634635L    # 2.8353949448997197E134

    aput-wide v2, v0, v1

    const/16 v1, 0x82

    const-wide v2, 0x427a7315bf2dc900L    # 1.8175992757405625E12

    aput-wide v2, v0, v1

    const/16 v1, 0x83

    const-wide v2, 0x17d0c4aa2125261cL    # 5.742616169956579E-194

    aput-wide v2, v0, v1

    const/16 v1, 0x84

    const-wide v2, 0x3992486c93518e50L    # 2.2535422426828626E-31

    aput-wide v2, v0, v1

    const/16 v1, 0x85

    const-wide v2, -0x4b34011f5d282b3dL    # -2.2834989098187276E-54

    aput-wide v2, v0, v1

    const/16 v1, 0x86

    const-wide v2, 0x7c75d6202c5ddd8dL    # 3.404845630335941E291

    aput-wide v2, v0, v1

    const/16 v1, 0x87

    const-wide v2, -0x243d6a271ca4939fL    # -1.0553551035133787E134

    aput-wide v2, v0, v1

    const/16 v1, 0x88

    const-wide v2, 0x60b369d302032b19L    # 6.663444898228289E157

    aput-wide v2, v0, v1

    const/16 v1, 0x89

    const-wide v2, -0x31bd97a0231bbeceL    # -9.925419080692507E68

    aput-wide v2, v0, v1

    const/16 v1, 0x8a

    const-wide v2, 0x6f3ddb9ddf65610L

    aput-wide v2, v0, v1

    const/16 v1, 0x8b

    const-wide v2, -0x715b2de24a1eb710L    # -3.99677903382763E-238

    aput-wide v2, v0, v1

    const/16 v1, 0x8c

    const-wide v2, 0x20b0fce62fcd496fL    # 3.243557179236647E-151

    aput-wide v2, v0, v1

    const/16 v1, 0x8d

    const-wide v2, 0x2c1b912358b0ee31L    # 3.226487933965331E-96

    aput-wide v2, v0, v1

    const/16 v1, 0x8e

    const-wide v2, -0x4d7ce847e70a5cf8L    # -2.266194732873618E-65

    aput-wide v2, v0, v1

    const/16 v1, 0x8f

    const-wide v2, -0x5763e1e763592d31L

    aput-wide v2, v0, v1

    const/16 v1, 0x90

    const-wide v2, 0xc6b18576aaadbc8L

    aput-wide v2, v0, v1

    const/16 v1, 0x91

    const-wide v2, -0x49a21556ed66051dL    # -8.187918940336547E-47

    aput-wide v2, v0, v1

    const/16 v1, 0x92

    const-wide v2, -0x4d486b480efd819L

    aput-wide v2, v0, v1

    const/16 v1, 0x93

    const-wide v2, 0x4e4317f443b5bebL    # 4.243678246869E-285

    aput-wide v2, v0, v1

    const/16 v1, 0x94

    const-wide v2, 0x4b852d325939d0a6L    # 6.490593538303663E55

    aput-wide v2, v0, v1

    const/16 v1, 0x95

    const-wide v2, -0x2a51941104df8004L    # -5.450932235153502E104

    aput-wide v2, v0, v1

    const/16 v1, 0x96

    const-wide v2, 0x309682b281c7d374L    # 1.2441906288139604E-74

    aput-wide v2, v0, v1

    const/16 v1, 0x97

    const-wide v2, -0x451cf65e6b3c4b8bL    # -4.921109889770066E-25

    aput-wide v2, v0, v1

    const/16 v1, 0x98

    const-wide v2, -0x733c0684ec4b60fbL    # -3.571003124972353E-247

    aput-wide v2, v0, v1

    const/16 v1, 0x99

    const-wide v2, -0x6756bdd007d6c699L    # -7.086324976386019E-190

    aput-wide v2, v0, v1

    const/16 v1, 0x9a

    const-wide v2, 0x244b16b01076ff7cL    # 7.453819705191902E-134

    aput-wide v2, v0, v1

    const/16 v1, 0x9b

    const-wide v2, -0x740a8e399c29812L    # -4.238565629685137E273

    aput-wide v2, v0, v1

    const/16 v1, 0x9c

    const-wide v2, 0x1f0d6758eee30da1L    # 4.182869320732075E-159

    aput-wide v2, v0, v1

    const/16 v1, 0x9d

    const-wide v2, -0x3649ee2685214649L    # -1.2599585480304835E47

    aput-wide v2, v0, v1

    const/16 v1, 0x9e

    const-wide v2, -0x48502a778493a85eL    # -1.8271885223426806E-40

    aput-wide v2, v0, v1

    const/16 v1, 0x9f

    const-wide v2, 0x6290ae846b984fe1L    # 6.148060493216533E166

    aput-wide v2, v0, v1

    const/16 v1, 0xa0

    const-wide v2, -0x6b20b321533e5a03L

    aput-wide v2, v0, v1

    const/16 v1, 0xa1

    const-wide v2, 0x58a5bd1c5483affL

    aput-wide v2, v0, v1

    const/16 v1, 0xa2

    const-wide v2, 0x63166cc142ba3c37L    # 2.115761071768571E169

    aput-wide v2, v0, v1

    const/16 v1, 0xa3

    const-wide v2, -0x7247ad914d0890c0L

    aput-wide v2, v0, v1

    const/16 v1, 0xa4

    const-wide v2, -0x1ef77ffc90f292b2L    # -2.6910064377352605E159

    aput-wide v2, v0, v1

    const/16 v1, 0xa5

    const-wide v2, -0x61fadc3668e2cee3L    # -4.588736698785144E-164

    aput-wide v2, v0, v1

    const/16 v1, 0xa6

    const-wide v2, 0x45ec2824cc7cd691L    # 6.9712888680855665E28

    aput-wide v2, v0, v1

    const/16 v1, 0xa7

    const-wide v2, 0x575b8359e62382c9L    # 6.616644057286003E112

    aput-wide v2, v0, v1

    const/16 v1, 0xa8

    const-wide v2, -0x561bff23b77666bL    # -4.392829479672154E282

    aput-wide v2, v0, v1

    const/16 v1, 0xa9

    const-wide v2, -0x2e7dc134ba8dea98L    # -4.430569463368521E84

    aput-wide v2, v0, v1

    const/16 v1, 0xaa

    const-wide v2, -0x250267c47df9f7d1L    # -2.0514052848984754E130

    aput-wide v2, v0, v1

    const/16 v1, 0xab

    const-wide v2, -0x5582d6f7dc795735L

    aput-wide v2, v0, v1

    const/16 v1, 0xac

    const-wide v2, 0x269fcd4403b87588L

    aput-wide v2, v0, v1

    const/16 v1, 0xad

    const-wide v2, 0x1b91f5f728bdd1e0L    # 7.091666121063896E-176

    aput-wide v2, v0, v1

    const/16 v1, 0xae

    const-wide v2, -0x1b9960c6fbfdfe0aL    # -4.4760794991121814E175

    aput-wide v2, v0, v1

    const/16 v1, 0xaf

    const-wide v2, 0x7a1d7c218cf04adeL    # 1.6725359125245155E280

    aput-wide v2, v0, v1

    const/16 v1, 0xb0

    const-wide v2, 0x65623c29d79ce5ceL    # 2.364577258088399E180

    aput-wide v2, v0, v1

    const/16 v1, 0xb1

    const-wide v2, 0x2368449096c00bb1L    # 4.075707093595089E-138

    aput-wide v2, v0, v1

    const/16 v1, 0xb2

    const-wide v2, -0x54640e78625afc46L    # -1.2775616103931235E-98

    aput-wide v2, v0, v1

    const/16 v1, 0xb3

    const-wide v2, -0x43dc134e5ba7fa72L    # -5.400569748706124E-19

    aput-wide v2, v0, v1

    const/16 v1, 0xb4

    const-wide v2, -0x65a720fe44bfe134L    # -9.36521977570785E-182

    aput-wide v2, v0, v1

    const/16 v1, 0xb5

    const-wide v2, -0x5f8f179757a0ebc3L

    aput-wide v2, v0, v1

    const/16 v1, 0xb6

    const-wide v2, 0x4ff188307df2239eL    # 1.2687910889669752E77

    aput-wide v2, v0, v1

    const/16 v1, 0xb7

    const-wide v2, 0x14d565b41a641183L    # 2.603403994790629E-208

    aput-wide v2, v0, v1

    const/16 v1, 0xb8

    const-wide v2, -0x11eccc8bad8fe9feL    # -1.7351639738384322E222

    aput-wide v2, v0, v1

    const/16 v1, 0xb9

    const-wide v2, -0x6af1c230c0d7a1f7L

    aput-wide v2, v0, v1

    const/16 v1, 0xba

    const-wide v2, 0x59930254b9c80953L    # 3.1415206319179285E123

    aput-wide v2, v0, v1

    const/16 v1, 0xbb

    const-wide v2, 0x3bf299408930da6dL    # 6.301464676975772E-20

    aput-wide v2, v0, v1

    const/16 v1, 0xbc

    const-wide v2, -0x56aa6bc0ac96ec79L

    aput-wide v2, v0, v1

    const/16 v1, 0xbd

    const-wide v2, -0x5ea121355634787cL    # -6.035631398757733E-148

    aput-wide v2, v0, v1

    const/16 v1, 0xbe

    const-wide v2, 0x29142127352be9a0L    # 8.370177911283731E-111

    aput-wide v2, v0, v1

    const/16 v1, 0xbf

    const-wide v2, 0x76f0371fff4e7afbL    # 8.169623575995332E264

    aput-wide v2, v0, v1

    const/16 v1, 0xc0

    const-wide v2, 0x239f450274f2228L

    aput-wide v2, v0, v1

    const/16 v1, 0xc1

    const-wide v2, -0x44f8c50fe2a17975L    # -2.4019491087678227E-24

    aput-wide v2, v0, v1

    const/16 v1, 0xc2

    const-wide v2, -0x4037fa8e3ef1693fL    # -0.1876661484395097

    aput-wide v2, v0, v1

    const/16 v1, 0xc3

    const-wide v2, -0x2d98f77a97ddd1ddL    # -9.163990522053757E88

    aput-wide v2, v0, v1

    const/16 v1, 0xc4

    const-wide v2, -0x698e5c2b717f4a50L

    aput-wide v2, v0, v1

    const/16 v1, 0xc5

    const-wide v2, 0x55b5d38ae193bb81L    # 7.821668091389351E104

    aput-wide v2, v0, v1

    const/16 v1, 0xc6

    const-wide v2, 0x693ae2d0a18b04b8L    # 8.039023247275818E198

    aput-wide v2, v0, v1

    const/16 v1, 0xc7

    const-wide v2, 0x5c48b4ecadd5335fL    # 3.59156255845179E136

    aput-wide v2, v0, v1

    const/16 v1, 0xc8

    const-wide v2, -0x28bc4e6b6e95e36L

    aput-wide v2, v0, v1

    const/16 v1, 0xc9

    const-wide v2, 0x2577018134be98c4L    # 3.318949650063136E-128

    aput-wide v2, v0, v1

    const/16 v1, 0xca

    const-wide v2, -0x18867817c3ab5b53L    # -2.843827090075304E190

    aput-wide v2, v0, v1

    const/16 v1, 0xcb

    const-wide v2, 0x28e11014da33e1b9L    # 8.868749337759585E-112

    aput-wide v2, v0, v1

    const/16 v1, 0xcc

    const-wide v2, 0x270cc59e226aa213L

    aput-wide v2, v0, v1

    const/16 v1, 0xcd

    const-wide v2, 0x71495f756d1a5f60L    # 5.163170377409764E237

    aput-wide v2, v0, v1

    const/16 v1, 0xce

    const-wide v2, -0x6417ac049f501089L

    aput-wide v2, v0, v1

    const/16 v1, 0xcf

    const-wide v2, -0x5238795808bbc241L    # -3.695722723301977E-88

    aput-wide v2, v0, v1

    const/16 v1, 0xd0

    const-wide v2, 0x904456173b29a82L

    aput-wide v2, v0, v1

    const/16 v1, 0xd1

    const-wide v2, 0x58bc7a66c232bd5eL    # 2.8725644116574284E119

    aput-wide v2, v0, v1

    const/16 v1, 0xd2

    const-wide v2, -0xcf9aa7398c5374eL    # -1.2199902587632169E246

    aput-wide v2, v0, v1

    const/16 v1, 0xd3

    const-wide v2, 0x41f639c6b6c9772aL    # 5.966162796591593E9

    aput-wide v2, v0, v1

    const/16 v1, 0xd4

    const-wide v2, 0x216defe99fda35daL

    aput-wide v2, v0, v1

    const/16 v1, 0xd5

    const-wide v2, 0x11640cc71c7be615L    # 6.770889783671708E-225

    aput-wide v2, v0, v1

    const/16 v1, 0xd6

    const-wide v2, -0x6c3bc96ba9a3aad9L

    aput-wide v2, v0, v1

    const/16 v1, 0xd7

    const-wide v2, -0x15fc719db98887c7L    # -4.790173920776287E202

    aput-wide v2, v0, v1

    const/16 v1, 0xd8

    const-wide v2, -0x6540c31a5c1db97L

    aput-wide v2, v0, v1

    const/16 v1, 0xd9

    const-wide v2, 0x741e768d0fd312d2L    # 2.1810737640898092E251

    aput-wide v2, v0, v1

    const/16 v1, 0xda

    const-wide v2, 0x144b883ced652c6L

    aput-wide v2, v0, v1

    const/16 v1, 0xdb

    const-wide v2, -0x3df4a5a45cc07aaeL    # -1.4685008999940098E10

    aput-wide v2, v0, v1

    const/16 v1, 0xdc

    const-wide v2, 0x1ae69633c3435a9dL    # 4.354576231735115E-179

    aput-wide v2, v0, v1

    const/16 v1, 0xdd

    const-wide v2, -0x685d735bf7730214L    # -7.940761720985735E-195

    aput-wide v2, v0, v1

    const/16 v1, 0xde

    const-wide v2, -0x77db5bc3e1690be0L

    aput-wide v2, v0, v1

    const/16 v1, 0xdf

    const-wide v2, 0x37612fa66eeea746L    # 6.165222971004039E-42

    aput-wide v2, v0, v1

    const/16 v1, 0xe0

    const-wide v2, 0x6b4cb165f9cf0e5aL    # 7.369574267453371E208

    aput-wide v2, v0, v1

    const/16 v1, 0xe1

    const-wide v2, 0x43aa1c06a0abfb4aL    # 9.4069301574196557E17

    aput-wide v2, v0, v1

    const/16 v1, 0xe2

    const-wide v2, 0x7f4dc26ff162796bL    # 1.6326442231202036E305

    aput-wide v2, v0, v1

    const/16 v1, 0xe3

    const-wide v2, 0x6cbacc8e54ed9b0fL    # 5.7739930932589516E215

    aput-wide v2, v0, v1

    const/16 v1, 0xe4

    const-wide v2, -0x594800102d44dac2L

    aput-wide v2, v0, v1

    const/16 v1, 0xe5

    const-wide v2, 0x2e25bc95b0a29d4fL    # 2.185365321432393E-86

    aput-wide v2, v0, v1

    const/16 v1, 0xe6

    const-wide v2, -0x79295a74210ec774L

    aput-wide v2, v0, v1

    const/16 v1, 0xe7

    const-wide v2, -0x2128b53a89490facL    # -7.445709117964687E148

    aput-wide v2, v0, v1

    const/16 v1, 0xe8

    const-wide v2, -0x7fcf4243d4ba7fa3L    # -9.312575186981358E-308

    aput-wide v2, v0, v1

    const/16 v1, 0xe9

    const-wide v2, 0x3c81af70e94d9289L    # 3.0679133956043716E-17

    aput-wide v2, v0, v1

    const/16 v1, 0xea

    const-wide v2, 0x3eff6dda9e3100dbL    # 2.997314176078699E-5

    aput-wide v2, v0, v1

    const/16 v1, 0xeb

    const-wide v2, -0x4c723c60203377b9L    # -2.3152851430127248E-60

    aput-wide v2, v0, v1

    const/16 v1, 0xec

    const-wide v2, 0x123885528d17b87eL    # 6.783559909929984E-221

    aput-wide v2, v0, v1

    const/16 v1, 0xed

    const-wide v2, -0xd25f12dbf4e49beL    # -1.779245308210464E245

    aput-wide v2, v0, v1

    const/16 v1, 0xee

    const-wide v2, 0x44cefadcd54bf9a9L    # 2.9259718642582156E23

    aput-wide v2, v0, v1

    const/16 v1, 0xef

    const-wide v2, 0x1312200e433c7ee6L    # 8.215355485649197E-217

    aput-wide v2, v0, v1

    const/16 v1, 0xf0

    const-wide v2, -0x600337b0c58738b8L

    aput-wide v2, v0, v1

    const/16 v1, 0xf1

    const-wide v2, -0xf32e08ddb7a8945L    # -2.31494291979776E235

    aput-wide v2, v0, v1

    const/16 v1, 0xf2

    const-wide v2, -0x13968bfac9c7301cL    # -1.713757631177458E214

    aput-wide v2, v0, v1

    const/16 v1, 0xf3

    const-wide v2, 0x2ba7b67c0cec4e4cL    # 2.168277289058499E-98

    aput-wide v2, v0, v1

    const/16 v1, 0xf4

    const-wide v2, -0x53d0b20c1a31cd13L    # -7.327877535482943E-96

    aput-wide v2, v0, v1

    const/16 v1, 0xf5

    const-wide v2, -0x34cc2ebcd915b3efL    # -1.8981327811583468E54

    aput-wide v2, v0, v1

    const/16 v1, 0xf6

    const-wide v2, -0x5b16fbb33881a744L    # -7.048936392580235E-131

    aput-wide v2, v0, v1

    const/16 v1, 0xf7

    const-wide v2, 0x5f513293d934fcefL    # 1.4073589792257193E151

    aput-wide v2, v0, v1

    const/16 v1, 0xf8

    const-wide v2, 0x5dc9645506e55444L    # 6.192749763062547E143

    aput-wide v2, v0, v1

    const/16 v1, 0xf9

    const-wide v2, 0x50de418f317de40aL    # 3.587497997298935E81

    aput-wide v2, v0, v1

    const/16 v1, 0xfa

    const-wide v2, 0x388cb31a69dde259L    # 2.698899462664933E-36

    aput-wide v2, v0, v1

    const/16 v1, 0xfb

    const-wide v2, 0x2db4a83455820a86L    # 1.622518113077188E-88

    aput-wide v2, v0, v1

    const/16 v1, 0xfc

    const-wide v2, -0x6fef56e17b8ee517L    # -2.682838607556837E-231

    aput-wide v2, v0, v1

    const/16 v1, 0xfd

    const-wide v2, 0x4df7f0b7b1498371L    # 4.033933062924382E67

    aput-wide v2, v0, v1

    const/16 v1, 0xfe

    const-wide v2, -0x29d5d1543f688e87L    # -1.2009817538832897E107

    aput-wide v2, v0, v1

    const/16 v1, 0xff

    const-wide v2, 0x22fac097aa8d5c0eL

    aput-wide v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/TigerDigest;->t2:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    const-wide v2, -0xb6033d00e250c65L

    aput-wide v2, v0, v4

    const-wide v2, 0x487fd5c66ff29281L    # 1.7332654852792466E41

    aput-wide v2, v0, v5

    const-wide v2, -0x175cf998032357c1L    # -1.1110469540428916E196

    aput-wide v2, v0, v6

    const-wide v2, 0x2c9b4be3d2fcce63L    # 8.17875977317363E-94

    aput-wide v2, v0, v7

    const-wide v2, -0x25c008b46c04443eL    # -5.40961615404656E126

    aput-wide v2, v0, v8

    const/4 v1, 0x5

    const-wide v2, 0x2fa165d2fe70ba66L    # 2.93456851672053E-79

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, -0x5efc1d8668f16c2cL

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, -0x413213884f1ba18fL    # -3.56718317741003E-6

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide v2, -0x304be18dc67a1b69L    # -9.100050733509745E75

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide v2, -0x48f555fda108afe9L    # -1.494574421203289E-43

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide v2, -0x2bdcf60fc7bf4720L    # -2.0333338178345883E97

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide v2, -0x7103e52fca767a87L

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide v2, -0x69396df41d4d543bL    # -5.897309714762973E-199

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide v2, 0x66af4163375a9172L

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide v2, 0x2174abdcca7127fbL    # 1.616630307197339E-147

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide v2, -0x4cc33159b58d00bfL    # -7.002648462645297E-62

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide v2, -0xfb5b6ccf7cf995bL    # -8.161877912344088E232

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide v2, -0x7268f53228d7650bL

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide v2, -0x7069171fce373da2L

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide v2, -0xc013fdd8978a2b9L    # -5.504133472830552E250

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide v2, -0x13840ceffa9e6f23L    # -3.7636601565978665E214

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide v2, -0xa524f5144f0eb6fL    # -7.132781511613578E258

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide v2, -0x64af077af02a776eL

    aput-wide v2, v0, v1

    const/16 v1, 0x17

    const-wide v2, 0x4975488358b74de8L    # 7.594118858722089E45

    aput-wide v2, v0, v1

    const/16 v1, 0x18

    const-wide v2, -0x5ccab0096eace39fL    # -4.474180239574518E-139

    aput-wide v2, v0, v1

    const/16 v1, 0x19

    const-wide v2, 0x702bbe481d2c6eeL    # 6.76368621836515E-275

    aput-wide v2, v0, v1

    const/16 v1, 0x1a

    const-wide v2, -0x7604dbfa82121268L

    aput-wide v2, v0, v1

    const/16 v1, 0x1b

    const-wide v2, -0x53cf8aec7a6916feL    # -7.70478886471848E-96

    aput-wide v2, v0, v1

    const/16 v1, 0x1c

    const-wide v2, 0x1d2d3580172772edL

    aput-wide v2, v0, v1

    const/16 v1, 0x1d

    const-wide v2, -0x148c703d71943cf3L    # -4.019393628992649E209

    aput-wide v2, v0, v1

    const/16 v1, 0x1e

    const-wide v2, 0x5854ef8f63044326L    # 3.2996471945679717E117

    aput-wide v2, v0, v1

    const/16 v1, 0x1f

    const-wide v2, -0x61a3adcda522c442L    # -1.967216570817893E-162

    aput-wide v2, v0, v1

    const/16 v1, 0x20

    const-wide v2, -0x6f55ac30cda3b9ddL    # -2.170605739029278E-228

    aput-wide v2, v0, v1

    const/16 v1, 0x21

    const-wide v2, -0x3e2db2aecb622f99L    # -1.2282277944658449E9

    aput-wide v2, v0, v1

    const/16 v1, 0x22

    const-wide v2, 0x2051cfeea69ea624L    # 5.313988794045176E-153

    aput-wide v2, v0, v1

    const/16 v1, 0x23

    const-wide v2, 0x13220f0a862e7e4fL    # 1.637046125672716E-216

    aput-wide v2, v0, v1

    const/16 v1, 0x24

    const-wide v2, -0x31c6c66bfb1fb79cL    # -6.800623588080926E68

    aput-wide v2, v0, v1

    const/16 v1, 0x25

    const-wide v2, -0x263bd35b8f790349L    # -2.667279411614013E124

    aput-wide v2, v0, v1

    const/16 v1, 0x26

    const-wide v2, 0x685ad2238a03e7ccL    # 4.894742290628791E194

    aput-wide v2, v0, v1

    const/16 v1, 0x27

    const-wide v2, 0x66484b2ab2ff1dbL    # 7.23429927949831E-278

    aput-wide v2, v0, v1

    const/16 v1, 0x28

    const-wide v2, -0x162a28f10408614L

    aput-wide v2, v0, v1

    const/16 v1, 0x29

    const-wide v2, 0x5b13b9dd9c481854L    # 5.469378707528468E130

    aput-wide v2, v0, v1

    const/16 v1, 0x2a

    const-wide v2, 0x15f0d475ed1509adL    # 5.367908403261285E-203

    aput-wide v2, v0, v1

    const/16 v1, 0x2b

    const-wide v2, 0xbebcd060ec79851L

    aput-wide v2, v0, v1

    const/16 v1, 0x2c

    const-wide v2, -0x2a73986ee7c54808L    # -1.2723791760822734E104

    aput-wide v2, v0, v1

    const/16 v1, 0x2d

    const-wide v2, -0x2ee783afad0c111cL    # -4.645255340367416E82

    aput-wide v2, v0, v1

    const/16 v1, 0x2e

    const-wide v2, -0x36a2ee6d1ab17d01L    # -2.5930100225786622E45

    aput-wide v2, v0, v1

    const/16 v1, 0x2f

    const-wide v2, -0x79115eb34653935eL

    aput-wide v2, v0, v1

    const/16 v1, 0x30

    const-wide v2, 0x3485beb153677d5dL    # 1.1085316348140725E-55

    aput-wide v2, v0, v1

    const/16 v1, 0x31

    const-wide v2, -0x22e6e287e073b6d6L

    aput-wide v2, v0, v1

    const/16 v1, 0x32

    const-wide v2, -0x9f79945587b1407L

    aput-wide v2, v0, v1

    const/16 v1, 0x33

    const-wide v2, 0x518f643ba2d08c74L    # 7.622919808923351E84

    aput-wide v2, v0, v1

    const/16 v1, 0x34

    const-wide v2, -0x77ad16a91ef783deL    # -1.431889281778202E-268

    aput-wide v2, v0, v1

    const/16 v1, 0x35

    const-wide v2, -0x589734723bef5173L    # -7.681714193832243E-119

    aput-wide v2, v0, v1

    const/16 v1, 0x36

    const-wide v2, 0x38047726bfec8e1aL    # 7.517813517906938E-39

    aput-wide v2, v0, v1

    const/16 v1, 0x37

    const-wide v2, -0x5988c74b32c4ba56L    # -2.195493830242527E-123

    aput-wide v2, v0, v1

    const/16 v1, 0x38

    const-wide v2, -0x52e996e313f221e7L    # -1.7189955947618687E-91

    aput-wide v2, v0, v1

    const/16 v1, 0x39

    const-wide v2, -0x392bce6c7fb9d1f9L    # -1.638304085626383E33

    aput-wide v2, v0, v1

    const/16 v1, 0x3a

    const-wide v2, -0x3a5a7892f459e6c8L    # -3.331452572362849E27

    aput-wide v2, v0, v1

    const/16 v1, 0x3b

    const-wide v2, 0x16b9fa1fa58fd840L

    aput-wide v2, v0, v1

    const/16 v1, 0x3c

    const-wide v2, 0x188ab1173ca74f18L

    aput-wide v2, v0, v1

    const/16 v1, 0x3d

    const-wide v2, -0x5425d0673663fde1L    # -1.9155316621796E-97

    aput-wide v2, v0, v1

    const/16 v1, 0x3e

    const-wide v2, 0x3e0580ab134ae816L    # 6.258083275419918E-10

    aput-wide v2, v0, v1

    const/16 v1, 0x3f

    const-wide v2, 0x5f3b05b773645abbL    # 5.528415176082126E150

    aput-wide v2, v0, v1

    const/16 v1, 0x40

    const-wide v2, 0x2501a2be5575f2f6L

    aput-wide v2, v0, v1

    const/16 v1, 0x41

    const-wide v2, 0x1b2f74004e7e8ba9L    # 9.702338820118762E-178

    aput-wide v2, v0, v1

    const/16 v1, 0x42

    const-wide v2, 0x1cd7580371e8d953L    # 9.664826355803884E-170

    aput-wide v2, v0, v1

    const/16 v1, 0x43

    const-wide v2, 0x7f6ed89562764e30L    # 6.769005778948101E305

    aput-wide v2, v0, v1

    const/16 v1, 0x44

    const-wide v2, -0x4ea6d900a690ffc3L    # -5.694286579359057E-71

    aput-wide v2, v0, v1

    const/16 v1, 0x45

    const-wide v2, -0x609ad6c2573a2947L    # -1.926595121903186E-157

    aput-wide v2, v0, v1

    const/16 v1, 0x46

    const-wide v2, 0x6ecef04dd690f84cL

    aput-wide v2, v0, v1

    const/16 v1, 0x47

    const-wide v2, 0x4782275fff33af88L    # 3.016318818712634E36

    aput-wide v2, v0, v1

    const/16 v1, 0x48

    const-wide v2, -0x1bebccf7c07df7ffL    # -1.2489780027041294E174

    aput-wide v2, v0, v1

    const/16 v1, 0x49

    const-wide v2, -0x2f201bf65e5064bL

    aput-wide v2, v0, v1

    const/16 v1, 0x4a

    const-wide v2, 0x4325a3342cdb396bL    # 3.0452094985576215E15

    aput-wide v2, v0, v1

    const/16 v1, 0x4b

    const-wide v2, -0x7518819d4cfe4daeL

    aput-wide v2, v0, v1

    const/16 v1, 0x4c

    const-wide v2, -0x3c90616099aa9ea6L    # -7.1201053855124176E16

    aput-wide v2, v0, v1

    const/16 v1, 0x4d

    const-wide v2, -0x7abaa5d26d2cd3f7L    # -2.871824493080037E-283

    aput-wide v2, v0, v1

    const/16 v1, 0x4e

    const-wide v2, -0xd382156b6b88b7bL    # -8.149195514428722E244

    aput-wide v2, v0, v1

    const/16 v1, 0x4f

    const-wide v2, 0x63cfb4c133a39ebaL    # 6.1264654454815025E172

    aput-wide v2, v0, v1

    const/16 v1, 0x50

    const-wide v2, -0x7c4fbf339143ab9eL    # -6.514797527911475E-291

    aput-wide v2, v0, v1

    const/16 v1, 0x51

    const-wide v2, 0x3b9454c8fdb326b0L    # 1.0763243361803224E-21

    aput-wide v2, v0, v1

    const/16 v1, 0x52

    const-wide v2, 0x56f56a9e87ffd78cL    # 8.047603002221186E110

    aput-wide v2, v0, v1

    const/16 v1, 0x53

    const-wide v2, 0x2dc2940d99f42bc6L    # 2.9184886678809794E-88

    aput-wide v2, v0, v1

    const/16 v1, 0x54

    const-wide v2, -0x670820f694f691d3L

    aput-wide v2, v0, v1

    const/16 v1, 0x55

    const-wide v2, 0x19a6e01e3ad852bfL    # 4.205934794665124E-185

    aput-wide v2, v0, v1

    const/16 v1, 0x56

    const-wide v2, 0x42a99ccbdbd4b40bL    # 1.4080612887130021E13

    aput-wide v2, v0, v1

    const/16 v1, 0x57

    const-wide v2, -0x5a666750ba163aa7L

    aput-wide v2, v0, v1

    const/16 v1, 0x58

    const-wide v2, 0x366295e807d93186L

    aput-wide v2, v0, v1

    const/16 v1, 0x59

    const-wide v2, 0x6b48181bfaa1f773L    # 6.1884104036933755E208

    aput-wide v2, v0, v1

    const/16 v1, 0x5a

    const-wide v2, 0x1fec57e2157a0a1dL    # 6.606060640313397E-155

    aput-wide v2, v0, v1

    const/16 v1, 0x5b

    const-wide v2, 0x4667446af6201ad5L    # 1.4747376215417555E31

    aput-wide v2, v0, v1

    const/16 v1, 0x5c

    const-wide v2, -0x19ea1435304f0f8bL    # -5.82155480860373E183

    aput-wide v2, v0, v1

    const/16 v1, 0x5d

    const-wide v2, -0x470ce0b097d6f888L    # -2.3017637863072572E-34

    aput-wide v2, v0, v1

    const/16 v1, 0x5e

    const-wide v2, 0x22713ed6ce22d11eL    # 8.838874695799312E-143

    aput-wide v2, v0, v1

    const/16 v1, 0x5f

    const-wide v2, 0x3057c1a72ec3c93bL    # 8.2065907651025E-76

    aput-wide v2, v0, v1

    const/16 v1, 0x60

    const-wide v2, -0x34b9533c83c0e0d1L    # -4.3436398218547E54

    aput-wide v2, v0, v1

    const/16 v1, 0x61

    const-wide v2, -0x24476c02fd550af2L    # -6.978242134421372E133

    aput-wide v2, v0, v1

    const/16 v1, 0x62

    const-wide v2, 0x331fd92e600b9fcfL    # 1.9354770995527779E-62

    aput-wide v2, v0, v1

    const/16 v1, 0x63

    const-wide v2, -0x5b67069eb715c52aL

    aput-wide v2, v0, v1

    const/16 v1, 0x64

    const-wide v2, -0x5727bd9174957c16L    # -6.304685892251626E-112

    aput-wide v2, v0, v1

    const/16 v1, 0x65

    const-wide v2, -0x5f764d8b488ca324L

    aput-wide v2, v0, v1

    const/16 v1, 0x66

    const-wide v2, -0x78094c8ce1adb5efL

    aput-wide v2, v0, v1

    const/16 v1, 0x67

    const-wide v2, 0x118808e5cbc96749L    # 3.246631245285264E-224

    aput-wide v2, v0, v1

    const/16 v1, 0x68

    const-wide v2, -0x66f91b384e642c6cL    # -4.110628004638872E-188

    aput-wide v2, v0, v1

    const/16 v1, 0x69

    const-wide v2, -0x5012808164db5df4L    # -7.960935036388479E-78

    aput-wide v2, v0, v1

    const/16 v1, 0x6a

    const-wide v2, 0x6509eadeeb3644a7L    # 5.2512168092361484E178

    aput-wide v2, v0, v1

    const/16 v1, 0x6b

    const-wide v2, 0x6c1ef1d3e8ef0edeL    # 6.510920417943807E212

    aput-wide v2, v0, v1

    const/16 v1, 0x6c

    const-wide v2, -0x463682bc1686704cL    # -2.5134407600626995E-30

    aput-wide v2, v0, v1

    const/16 v1, 0x6d

    const-wide v2, -0x5d0d287b8bf3d75dL    # -2.472213155159341E-140

    aput-wide v2, v0, v1

    const/16 v1, 0x6e

    const-wide v2, 0x7b8496476197566fL    # 9.796242171093319E286

    aput-wide v2, v0, v1

    const/16 v1, 0x6f

    const-wide v2, 0x7a5be3e6b65f069dL    # 2.5313267324908054E281

    aput-wide v2, v0, v1

    const/16 v1, 0x70

    const-wide v2, -0x69ccf12874190f0L    # -5.315528285066246E276

    aput-wide v2, v0, v1

    const/16 v1, 0x71

    const-wide v2, -0x1119f21885f895ebL    # -1.6326770981486106E226

    aput-wide v2, v0, v1

    const/16 v1, 0x72

    const-wide v2, 0x2b4bee4aa08b9bd0L

    aput-wide v2, v0, v1

    const/16 v1, 0x73

    const-wide v2, 0x6a56a63ec7b8894eL    # 1.7753079258019607E204

    aput-wide v2, v0, v1

    const/16 v1, 0x74

    const-wide v2, 0x2121359ba34fef4L

    aput-wide v2, v0, v1

    const/16 v1, 0x75

    const-wide v2, 0x4cbf99f8283703fcL    # 5.0781560731671635E61

    aput-wide v2, v0, v1

    const/16 v1, 0x76

    const-wide v2, 0x398071350caf30c8L    # 1.0133297795461086E-31

    aput-wide v2, v0, v1

    const/16 v1, 0x77

    const-wide v2, -0x2f5885760fe89786L    # -3.479864236906893E80

    aput-wide v2, v0, v1

    const/16 v1, 0x78

    const-wide v2, -0xe3e561461bdca97L    # -9.201730463280786E239

    aput-wide v2, v0, v1

    const/16 v1, 0x79

    const-wide v2, -0x738689d7d2117e67L

    aput-wide v2, v0, v1

    const/16 v1, 0x7a

    const-wide v2, 0x5d1737a5dd1f7abdL    # 2.764847015145026E140

    aput-wide v2, v0, v1

    const/16 v1, 0x7b

    const-wide v2, 0x4f53433c09a9fa80L

    aput-wide v2, v0, v1

    const/16 v1, 0x7c

    const-wide v2, -0x574f3ac20835e27L

    aput-wide v2, v0, v1

    const/16 v1, 0x7d

    const-wide v2, 0x3fd9dcbc886ccb77L    # 0.40409768412353436

    aput-wide v2, v0, v1

    const/16 v1, 0x7e

    const-wide v2, -0x3fbf6e8356e4b8e0L    # -33.136616838759664

    aput-wide v2, v0, v1

    const/16 v1, 0x7f

    const-wide v2, 0x7dd00142f9d1dcdfL    # 1.0467174283240415E298

    aput-wide v2, v0, v1

    const/16 v1, 0x80

    const-wide v2, -0x7b8903e2b0c784a8L    # -3.773681948048133E-287

    aput-wide v2, v0, v1

    const/16 v1, 0x81

    const-wide v2, 0x23f8e7c5f3316503L    # 2.141582736511702E-135

    aput-wide v2, v0, v1

    const/16 v1, 0x82

    const-wide v2, 0x32a2244e7e37339L

    aput-wide v2, v0, v1

    const/16 v1, 0x83

    const-wide v2, 0x5c87a5d750f5a74bL    # 5.500207658772382E137

    aput-wide v2, v0, v1

    const/16 v1, 0x84

    const-wide v2, 0x82b4cc43698992eL

    aput-wide v2, v0, v1

    const/16 v1, 0x85

    const-wide v2, -0x206e841347a709c4L    # -2.289289036732329E152

    aput-wide v2, v0, v1

    const/16 v1, 0x86

    const-wide v2, 0x3270b8fc5bf86ddaL    # 9.92441173755525E-66

    aput-wide v2, v0, v1

    const/16 v1, 0x87

    const-wide v2, 0x10ae72bb29b5dd76L

    aput-wide v2, v0, v1

    const/16 v1, 0x88

    const-wide v2, 0x576ac94e7700362bL    # 1.2883741060921578E113

    aput-wide v2, v0, v1

    const/16 v1, 0x89

    const-wide v2, 0x1ad112dac61efb8fL

    aput-wide v2, v0, v1

    const/16 v1, 0x8a

    const-wide v2, 0x691bc30ec5faa427L    # 2.0752338406837823E198

    aput-wide v2, v0, v1

    const/16 v1, 0x8b

    const-wide v2, -0xdb9cee33cd8ebdL

    aput-wide v2, v0, v1

    const/16 v1, 0x8c

    const-wide v2, 0x3142368e30e53206L    # 2.061650668640979E-71

    aput-wide v2, v0, v1

    const/16 v1, 0x8d

    const-wide v2, 0x71380e31e02ca396L    # 2.4475414744685993E237

    aput-wide v2, v0, v1

    const/16 v1, 0x8e

    const-wide v2, -0x6a72a369f552890fL    # -7.316335842741017E-205

    aput-wide v2, v0, v1

    const/16 v1, 0x8f

    const-wide v2, -0x7290bcf3e925acaL    # -1.241743711771751E274

    aput-wide v2, v0, v1

    const/16 v1, 0x90

    const-wide v2, -0x37002ec0e4181e2eL    # -4.434694023727874E43

    aput-wide v2, v0, v1

    const/16 v1, 0x91

    const-wide v2, 0x7578ae66004ddbe1L    # 7.411794161791422E257

    aput-wide v2, v0, v1

    const/16 v1, 0x92

    const-wide v2, 0x5833f01067be646L

    aput-wide v2, v0, v1

    const/16 v1, 0x93

    const-wide v2, -0x44cb4a52c401a793L    # -1.713064131842507E-23

    aput-wide v2, v0, v1

    const/16 v1, 0x94

    const-wide v2, 0x95f34c9a12b97f0L

    aput-wide v2, v0, v1

    const/16 v1, 0x95

    const-wide v2, 0x247ab64525d60ca8L

    aput-wide v2, v0, v1

    const/16 v1, 0x96

    const-wide v2, -0x2324390cfe8b882fL    # -2.0674053099294047E139

    aput-wide v2, v0, v1

    const/16 v1, 0x97

    const-wide v2, 0x4a2e14d4decad24dL    # 2.1981988050634853E49

    aput-wide v2, v0, v1

    const/16 v1, 0x98

    const-wide v2, -0x424a192641f5e115L    # -1.99195346653737E-11

    aput-wide v2, v0, v1

    const/16 v1, 0x99

    const-wide v2, 0x2a7e70f7794301abL    # 5.309142274850783E-104

    aput-wide v2, v0, v1

    const/16 v1, 0x9a

    const-wide v2, -0x210bd275d8fabf03L    # -2.5800825501868155E149

    aput-wide v2, v0, v1

    const/16 v1, 0x9b

    const-wide v2, 0x1078ec0a34c22c1L

    aput-wide v2, v0, v1

    const/16 v1, 0x9c

    const-wide v2, -0x1a21aee50b3e9c79L    # -5.03200425974023E182

    aput-wide v2, v0, v1

    const/16 v1, 0x9d

    const-wide v2, 0x7ebb3a52bd9a330aL    # 2.91748488659096E302

    aput-wide v2, v0, v1

    const/16 v1, 0x9e

    const-wide v2, 0x77697857aa7d6435L    # 1.6425424837782135E267

    aput-wide v2, v0, v1

    const/16 v1, 0x9f

    const-wide v2, 0x4e831603ae4c32L

    aput-wide v2, v0, v1

    const/16 v1, 0xa0

    const-wide v2, -0x185defdf52871ceeL    # -1.6095968473535728E191

    aput-wide v2, v0, v1

    const/16 v1, 0xa1

    const-wide v2, -0x62be58f3954bdf0eL

    aput-wide v2, v0, v1

    const/16 v1, 0xa2

    const-wide v2, 0x28e06c18ea1141e6L    # 8.535803584478321E-112

    aput-wide v2, v0, v1

    const/16 v1, 0xa3

    const-wide v2, -0x2d4d734267b094d8L    # -2.3616590467081395E90

    aput-wide v2, v0, v1

    const/16 v1, 0xa4

    const-wide v2, 0x26b75f6c446e9d83L    # 3.535668215939721E-122

    aput-wide v2, v0, v1

    const/16 v1, 0xa5

    const-wide v2, -0x45b8a973b2be7281L    # -5.891359232542409E-28

    aput-wide v2, v0, v1

    const/16 v1, 0xa6

    const-wide v2, -0x27f4524019e7c272L    # -1.3632458487848265E116

    aput-wide v2, v0, v1

    const/16 v1, 0xa7

    const-wide v2, 0xe206d7f5f166044L    # 1.231830325895608E-240

    aput-wide v2, v0, v1

    const/16 v1, 0xa8

    const-wide v2, -0x1da75bc6ee3435c2L    # -5.6760302297832394E165

    aput-wide v2, v0, v1

    const/16 v1, 0xa9

    const-wide v2, 0x723a1746b21dc0bcL    # 1.7397464767571535E242

    aput-wide v2, v0, v1

    const/16 v1, 0xaa

    const-wide v2, -0x383557ab0a28322dL    # -7.086791392547258E37

    aput-wide v2, v0, v1

    const/16 v1, 0xab

    const-wide v2, 0x7cac32883d261d9cL    # 3.517343141264849E292

    aput-wide v2, v0, v1

    const/16 v1, 0xac

    const-wide v2, 0x7690c26423ba942cL    # 1.3193291330466112E263

    aput-wide v2, v0, v1

    const/16 v1, 0xad

    const-wide v2, 0x17e55524478042b8L

    aput-wide v2, v0, v1

    const/16 v1, 0xae

    const-wide v2, -0x1f41b889a95dc761L    # -1.0393011715056921E158

    aput-wide v2, v0, v1

    const/16 v1, 0xaf

    const-wide v2, 0x4d289b5e67ab2da0L

    aput-wide v2, v0, v1

    const/16 v1, 0xb0

    const-wide v2, 0x44862b9c8fbbfd31L    # 1.3087069257573677E22

    aput-wide v2, v0, v1

    const/16 v1, 0xb1

    const-wide v2, -0x4b8337fb62ebec9bL    # -7.336206194781197E-56

    aput-wide v2, v0, v1

    const/16 v1, 0xb2

    const-wide v2, -0x7dd3e4c9d46e386dL    # -3.357514607937386E-298

    aput-wide v2, v0, v1

    const/16 v1, 0xb3

    const-wide v2, 0x4eb14655fb13dfd8L    # 1.1922593899427984E71

    aput-wide v2, v0, v1

    const/16 v1, 0xb4

    const-wide v2, 0x1ecbba0714e2a97bL    # 2.465187982932264E-160

    aput-wide v2, v0, v1

    const/16 v1, 0xb5

    const-wide v2, 0x6143459d5cde5f14L    # 3.3868266636964805E160

    aput-wide v2, v0, v1

    const/16 v1, 0xb6

    const-wide v2, 0x53a8fbf1d5f0ac89L    # 1.0423015517516867E95

    aput-wide v2, v0, v1

    const/16 v1, 0xb7

    const-wide v2, -0x6815fb27e3a1a500L    # -1.782141180701045E-193

    aput-wide v2, v0, v1

    const/16 v1, 0xb8

    const-wide v2, 0x622181a8d4fdb3f3L    # 5.040649936732193E164

    aput-wide v2, v0, v1

    const/16 v1, 0xb9

    const-wide v2, -0x16432cbea8d5edf8L    # -2.206427631961358E201

    aput-wide v2, v0, v1

    const/16 v1, 0xba

    const-wide v2, 0x1411258643cce58aL    # 5.09331540152809E-212

    aput-wide v2, v0, v1

    const/16 v1, 0xbb

    const-wide v2, -0x6ebb3a015b391f5cL

    aput-wide v2, v0, v1

    const/16 v1, 0xbc

    const-wide v2, 0xd33d06565cf620fL

    aput-wide v2, v0, v1

    const/16 v1, 0xbd

    const-wide v2, 0x54a48d489f219ca1L    # 5.619016864416283E99

    aput-wide v2, v0, v1

    const/16 v1, 0xbe

    const-wide v2, -0x3bc1a153929c37dfL    # -5.602242700221728E20

    aput-wide v2, v0, v1

    const/16 v1, 0xbf

    const-wide v2, -0x568d74c58d88f251L    # -4.934938352414423E-109

    aput-wide v2, v0, v1

    const/16 v1, 0xc0

    const-wide v2, -0x286cb184df207811L    # -7.428881294993556E113

    aput-wide v2, v0, v1

    const/16 v1, 0xc1

    const-wide v2, -0x1caafc49e5c1791bL    # -3.1723169446609597E170

    aput-wide v2, v0, v1

    const/16 v1, 0xc2

    const-wide v2, -0x351cde0437e62afcL    # -5.726728749673793E52

    aput-wide v2, v0, v1

    const/16 v1, 0xc3

    const-wide v2, 0x129a50b3ac60bfa6L    # 4.65919113406303E-219

    aput-wide v2, v0, v1

    const/16 v1, 0xc4

    const-wide v2, -0x32a197158160493dL    # -5.00395107325065E64

    aput-wide v2, v0, v1

    const/16 v1, 0xc5

    const-wide v2, -0x4fe36fe66b7c4e39L    # -6.16684838101003E-77

    aput-wide v2, v0, v1

    const/16 v1, 0xc6

    const-wide v2, 0x3de93cd5c295376cL    # 1.8362797505770556E-10

    aput-wide v2, v0, v1

    const/16 v1, 0xc7

    const-wide v2, -0x512ad120d54652edL    # -4.361647595503006E-83

    aput-wide v2, v0, v1

    const/16 v1, 0xc8

    const-wide v2, 0x2e60f512c0a07884L    # 2.727773994567166E-85

    aput-wide v2, v0, v1

    const/16 v1, 0xc9

    const-wide v2, -0x43c2795c1c9def37L    # -1.6006043189911669E-18

    aput-wide v2, v0, v1

    const/16 v1, 0xca

    const-wide v2, 0x35269d9b163951ceL    # 1.1805918951868194E-52

    aput-wide v2, v0, v1

    const/16 v1, 0xcb

    const-wide v2, 0xc7d6e2ad0cdb5faL

    aput-wide v2, v0, v1

    const/16 v1, 0xcc

    const-wide v2, 0x59e86297d87f5733L    # 1.2895948314722292E125

    aput-wide v2, v0, v1

    const/16 v1, 0xcd

    const-wide v2, 0x298ef221898db0e7L

    aput-wide v2, v0, v1

    const/16 v1, 0xce

    const-wide v2, 0x55000029d1a5aa7eL    # 2.799792583598655E101

    aput-wide v2, v0, v1

    const/16 v1, 0xcf

    const-wide v2, -0x743f751e4af9e4bbL    # -4.512684302971105E-252

    aput-wide v2, v0, v1

    const/16 v1, 0xd0

    const-wide v2, -0x3d3ce3d4936d8fc6L    # -4.202341709539245E13

    aput-wide v2, v0, v1

    const/16 v1, 0xd1

    const-wide v2, -0x6b33a69450da10beL

    aput-wide v2, v0, v1

    const/16 v1, 0xd2

    const-wide v2, 0xa1d73db22540456L

    aput-wide v2, v0, v1

    const/16 v1, 0xd3

    const-wide v2, 0x4b6a0f9d9c4179aL

    aput-wide v2, v0, v1

    const/16 v1, 0xd4

    const-wide v2, -0x1002505d51c2c3a0L    # -2.880510635716794E231

    aput-wide v2, v0, v1

    const/16 v1, 0xd5

    const-wide v2, -0x837f8a44b6b693cL    # -9.917385586228168E268

    aput-wide v2, v0, v1

    const/16 v1, 0xd6

    const-wide v2, -0x633a38ebe2e32b1dL    # -4.508203226144547E-170

    aput-wide v2, v0, v1

    const/16 v1, 0xd7

    const-wide v2, 0x78bd1638218e5534L    # 3.933796913764189E273

    aput-wide v2, v0, v1

    const/16 v1, 0xd8

    const-wide v2, -0x4d0eea9707afdb96L    # -2.5955007065561126E-63

    aput-wide v2, v0, v1

    const/16 v1, 0xd9

    const-wide v2, -0x120543056afd43d7L    # -6.040723681423413E221

    aput-wide v2, v0, v1

    const/16 v1, 0xda

    const-wide v2, 0x796ce5f2da23051bL    # 8.004189816145112E276

    aput-wide v2, v0, v1

    const/16 v1, 0xdb

    const-wide v2, -0x551ed74f236cac84L    # -3.830558985376715E-102

    aput-wide v2, v0, v1

    const/16 v1, 0xdc

    const-wide v2, 0x3a493da0ee4b29aeL    # 6.371657768817064E-28

    aput-wide v2, v0, v1

    const/16 v1, 0xdd

    const-wide v2, -0x4a2094d3be976a29L    # -3.3589857206675654E-49

    aput-wide v2, v0, v1

    const/16 v1, 0xde

    const-wide v2, -0x35442daedd280c9L    # -3.460144300021258E292

    aput-wide v2, v0, v1

    const/16 v1, 0xdf

    const-wide v2, 0x70810b58105dc4b1L    # 8.467713128140032E233

    aput-wide v2, v0, v1

    const/16 v1, 0xe0

    const-wide v2, -0x1ef022c80877d570L    # -3.4998534563220445E159

    aput-wide v2, v0, v1

    const/16 v1, 0xe1

    const-wide v2, 0x524dcab5518a3f5cL    # 2.963233783360269E88

    aput-wide v2, v0, v1

    const/16 v1, 0xe2

    const-wide v2, 0x3c9e85878451255bL    # 1.058930688733674E-16

    aput-wide v2, v0, v1

    const/16 v1, 0xe3

    const-wide v2, 0x4029828119bd34e2L    # 12.754891208979135

    aput-wide v2, v0, v1

    const/16 v1, 0xe4

    const-wide v2, 0x74a05b6f5d3ceccbL    # 5.996177455046732E253

    aput-wide v2, v0, v1

    const/16 v1, 0xe5

    const-wide v2, -0x49effdeabd1ec136L

    aput-wide v2, v0, v1

    const/16 v1, 0xe6

    const-wide v2, 0xff979d12f59e2acL    # 1.025585800159149E-231

    aput-wide v2, v0, v1

    const/16 v1, 0xe7

    const-wide v2, 0x6037da27e4f9cc50L    # 3.1980533070865445E155

    aput-wide v2, v0, v1

    const/16 v1, 0xe8

    const-wide v2, 0x5e92975a0df1847dL    # 3.7143748762153E147

    aput-wide v2, v0, v1

    const/16 v1, 0xe9

    const-wide v2, -0x29921e6f2c19dc02L    # -2.1930335527873684E108

    aput-wide v2, v0, v1

    const/16 v1, 0xea

    const-wide v2, 0x5032d6b87b568048L    # 2.1813785069752954E78

    aput-wide v2, v0, v1

    const/16 v1, 0xeb

    const-wide v2, -0x65c948317dcade92L

    aput-wide v2, v0, v1

    const/16 v1, 0xec

    const-wide v2, -0x7fd8d585db09b4b6L    # -6.443237120430989E-308

    aput-wide v2, v0, v1

    const/16 v1, 0xed

    const-wide v2, -0x6c1012747396e909L

    aput-wide v2, v0, v1

    const/16 v1, 0xee

    const-wide v2, 0x37ddbff44cce1555L    # 1.3660448077678231E-39

    aput-wide v2, v0, v1

    const/16 v1, 0xef

    const-wide v2, 0x4b95db5d4b99bd25L    # 1.3398236009195963E56

    aput-wide v2, v0, v1

    const/16 v1, 0xf0

    const-wide v2, -0x6d2c025e967ed040L    # -5.663072349047359E-218

    aput-wide v2, v0, v1

    const/16 v1, 0xf1

    const-wide v2, -0x4e5b5656f99f44aL    # -9.773946878984624E284

    aput-wide v2, v0, v1

    const/16 v1, 0xf2

    const-wide v2, 0x730c196946a4b9b2L    # 1.5349046377976493E246

    aput-wide v2, v0, v1

    const/16 v1, 0xf3

    const-wide v2, -0x7e1d765580b62598L

    aput-wide v2, v0, v1

    const/16 v1, 0xf4

    const-wide v2, 0x64669a0f83b1a05fL    # 4.472089662333588E175

    aput-wide v2, v0, v1

    const/16 v1, 0xf5

    const-wide v2, 0x27b3ff7d9644f48bL

    aput-wide v2, v0, v1

    const/16 v1, 0xf6

    const-wide v2, -0x33949ea372498a4dL    # -1.3749523584420205E60

    aput-wide v2, v0, v1

    const/16 v1, 0xf7

    const-wide v2, 0x674f20b9bcebbe95L    # 4.33407271738126E189

    aput-wide v2, v0, v1

    const/16 v1, 0xf8

    const-wide v2, 0x6f31238275655982L    # 4.060082459492963E227

    aput-wide v2, v0, v1

    const/16 v1, 0xf9

    const-wide v2, 0x5ae488713e45cf05L    # 7.116395713202206E129

    aput-wide v2, v0, v1

    const/16 v1, 0xfa

    const-wide v2, -0x409e6066ab3deea9L    # -0.0021512980220583055

    aput-wide v2, v0, v1

    const/16 v1, 0xfb

    const-wide v2, -0x15453b9fbf571517L    # -1.3427596143701857E206

    aput-wide v2, v0, v1

    const/16 v1, 0xfc

    const-wide v2, 0x454c6fe9f2c0c1cdL    # 6.875684242474272E25

    aput-wide v2, v0, v1

    const/16 v1, 0xfd

    const-wide v2, 0x419cf6496412691cL    # 1.2147567301797909E8

    aput-wide v2, v0, v1

    const/16 v1, 0xfe

    const-wide v2, -0x2c23c410d9a4f090L    # -9.423079652623552E95

    aput-wide v2, v0, v1

    const/16 v1, 0xff

    const-wide v2, 0x6d0e60f5c3578a9eL    # 2.094482768059814E217

    aput-wide v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/TigerDigest;->t3:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    const-wide v2, 0x5b0e608526323c55L    # 4.211273758989403E130

    aput-wide v2, v0, v4

    const-wide v2, 0x1a46c1a9fa1b59f5L    # 4.284479777505123E-182

    aput-wide v2, v0, v5

    const-wide v2, -0x561dba5e83b37006L    # -6.224113782858567E-107

    aput-wide v2, v0, v6

    const-wide v2, 0x65ca5159db2955d7L    # 2.1841205366506524E182

    aput-wide v2, v0, v7

    const-wide v2, 0x5db0a76ce35afc2L

    aput-wide v2, v0, v8

    const/4 v1, 0x5

    const-wide v2, -0x7e15388156eec2bbL    # -1.9993699541017664E-299

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, 0x528ef88ab6ac0a0dL    # 4.928810115974753E89

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, -0x5f615daca6841c01L

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide v2, 0x430ddfb3ac48cd56L    # 1.0510921384001708E15

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide v2, -0x3b4c59850ba31b91L    # -9.279598249926217E22

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide v2, 0x4ececfd8fbe2d05eL    # 4.2531190087740883E71

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide v2, 0x3ef56f10b39935f0L    # 2.044091090729576E-5

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide v2, 0xb22d6829cd619c6L

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide v2, 0x17fd460a74df2069L    # 4.010133981376156E-193

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide v2, 0x6cf8cc8e8510ed40L    # 8.548933405437041E216

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide v2, -0x2937db40c5913559L    # -1.1340427725372722E110

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide v2, 0x61243d581a817049L    # 8.89221980693906E159

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide v2, 0x48bacb6bbc163a2L

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide v2, -0x265c753d82bb33ceL    # -6.459187843633077E123

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide v2, 0x7fddff5baaf410abL    # 8.425982236142884E307

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide v2, -0x5292b6a557fb7db5L    # -7.188517997690202E-90

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide v2, -0x1e5958b0d273606cL    # -2.5479094295022212E162

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide v2, -0x2b087aedca21171dL    # -2.0577487817047144E101

    aput-wide v2, v0, v1

    const/16 v1, 0x17

    const-wide v2, -0x2b480779abf276dL

    aput-wide v2, v0, v1

    const/16 v1, 0x18

    const-wide v2, 0x247c20042aa4bfdaL

    aput-wide v2, v0, v1

    const/16 v1, 0x19

    const-wide v2, 0x96ea1c517d1327cL

    aput-wide v2, v0, v1

    const/16 v1, 0x1a

    const-wide v2, -0x2a96994bc9e5997bL    # -2.844608785777181E103

    aput-wide v2, v0, v1

    const/16 v1, 0x1b

    const-wide v2, 0x277da5c31221057dL    # 1.837003183682838E-118

    aput-wide v2, v0, v1

    const/16 v1, 0x1c

    const-wide v2, -0x6b2a676c5bc53009L

    aput-wide v2, v0, v1

    const/16 v1, 0x1d

    const-wide v2, 0x64f0c51ccdc02281L    # 1.6989075868503276E178

    aput-wide v2, v0, v1

    const/16 v1, 0x1e

    const-wide v2, 0x3d33bcc4ff6189dbL    # 7.012126326540134E-14

    aput-wide v2, v0, v1

    const/16 v1, 0x1f

    const-wide v2, -0x1ffa34e7b319950fL    # -3.6525113845649887E154

    aput-wide v2, v0, v1

    const/16 v1, 0x20

    const-wide v2, -0xa332e2e2466416L

    aput-wide v2, v0, v1

    const/16 v1, 0x21

    const-wide v2, -0x4f47ab5801bd67f1L    # -5.379172501746717E-74

    aput-wide v2, v0, v1

    const/16 v1, 0x22

    const-wide v2, 0x7bd46a6a718d4b9fL    # 3.1087074632583004E288

    aput-wide v2, v0, v1

    const/16 v1, 0x23

    const-wide v2, -0x2ef05733dd5a0274L    # -3.0031085574999853E82

    aput-wide v2, v0, v1

    const/16 v1, 0x24

    const-wide v2, -0x2ceb7b6ad41b42cfL    # -1.6718281141614503E92

    aput-wide v2, v0, v1

    const/16 v1, 0x25

    const-wide v2, -0x380568a034dbc7b9L    # -5.655345222317665E38

    aput-wide v2, v0, v1

    const/16 v1, 0x26

    const-wide v2, 0x4886ed1e5846c407L    # 2.4964469333203556E41

    aput-wide v2, v0, v1

    const/16 v1, 0x27

    const-wide v2, 0x28cddb791eb70b04L    # 3.879738045228423E-112

    aput-wide v2, v0, v1

    const/16 v1, 0x28

    const-wide v2, -0x3d4ff41d0a8cbe81L    # -1.7643238421313496E13

    aput-wide v2, v0, v1

    const/16 v1, 0x29

    const-wide v2, 0x5c9590452180f877L    # 1.0030865088603612E138

    aput-wide v2, v0, v1

    const/16 v1, 0x2a

    const-wide v2, 0x7a6bddfff370eb00L    # 5.058468980845342E281

    aput-wide v2, v0, v1

    const/16 v1, 0x2b

    const-wide v2, -0x31af61c72926295cL    # -1.792087484295921E69

    aput-wide v2, v0, v1

    const/16 v1, 0x2c

    const-wide v2, -0x1414f0ff9b8058feL    # -7.116595596948957E211

    aput-wide v2, v0, v1

    const/16 v1, 0x2d

    const-wide v2, 0x1dcc06cf76606f06L    # 3.802269123214325E-165

    aput-wide v2, v0, v1

    const/16 v1, 0x2e

    const-wide v2, -0x1b260d745d7900f6L    # -6.571613730541273E177

    aput-wide v2, v0, v1

    const/16 v1, 0x2f

    const-wide v2, -0x27a5cfa236e73d9eL    # -4.127585694616368E117

    aput-wide v2, v0, v1

    const/16 v1, 0x30

    const-wide v2, 0x475b1d8732225f54L    # 5.6316366550675925E35

    aput-wide v2, v0, v1

    const/16 v1, 0x31

    const-wide v2, 0x2d4fb51668ccb5feL

    aput-wide v2, v0, v1

    const/16 v1, 0x32

    const-wide v2, -0x5986462628d445e0L

    aput-wide v2, v0, v1

    const/16 v1, 0x33

    const-wide v2, 0x53841c0d912d43a5L    # 2.0973538323781553E94

    aput-wide v2, v0, v1

    const/16 v1, 0x34

    const-wide v2, 0x3b7eaa48bf12a4e8L    # 4.058501790479189E-22

    aput-wide v2, v0, v1

    const/16 v1, 0x35

    const-wide v2, 0x781e0e47f22f1ddfL    # 3.96957675197505E270

    aput-wide v2, v0, v1

    const/16 v1, 0x36

    const-wide v2, -0x100df319f54af68dL    # -1.751471845837635E231

    aput-wide v2, v0, v1

    const/16 v1, 0x37

    const-wide v2, 0x20d261d19dffb742L

    aput-wide v2, v0, v1

    const/16 v1, 0x38

    const-wide v2, 0x16a12b03062a2e39L

    aput-wide v2, v0, v1

    const/16 v1, 0x39

    const-wide v2, 0x1960eb2239650495L    # 1.944170354638861E-186

    aput-wide v2, v0, v1

    const/16 v1, 0x3a

    const-wide v2, 0x251c16fed50eb8b8L    # 6.331854545999627E-130

    aput-wide v2, v0, v1

    const/16 v1, 0x3b

    const-wide v2, -0x653f3ccf07d9fe92L

    aput-wide v2, v0, v1

    const/16 v1, 0x3c

    const-wide v2, -0x12ead99a6ac1898fL    # -2.9163994150698443E217

    aput-wide v2, v0, v1

    const/16 v1, 0x3d

    const-wide v2, 0x2d63194a6369570L

    aput-wide v2, v0, v1

    const/16 v1, 0x3e

    const-wide v2, 0x5074f08394b1c987L    # 3.879406962597419E79

    aput-wide v2, v0, v1

    const/16 v1, 0x3f

    const-wide v2, 0x70ba598c90b25ce1L    # 1.0472586993699856E235

    aput-wide v2, v0, v1

    const/16 v1, 0x40

    const-wide v2, 0x794a15810b9742f6L    # 1.8061767110371565E276

    aput-wide v2, v0, v1

    const/16 v1, 0x41

    const-wide v2, 0xd5925e9fcaf8c6cL

    aput-wide v2, v0, v1

    const/16 v1, 0x42

    const-wide v2, 0x3067716cd868744eL    # 1.6196662312635578E-75

    aput-wide v2, v0, v1

    const/16 v1, 0x43

    const-wide v2, -0x6ef54f8817288ce5L    # -1.4082862530006454E-226

    aput-wide v2, v0, v1

    const/16 v1, 0x44

    const-wide v2, 0x6a61bbdb5ac42f61L    # 2.780028621691697E204

    aput-wide v2, v0, v1

    const/16 v1, 0x45

    const-wide v2, -0x6caec1040f7aea99L

    aput-wide v2, v0, v1

    const/16 v1, 0x46

    const-wide v2, -0xb6b8db4617c162bL    # -3.747612067089177E253

    aput-wide v2, v0, v1

    const/16 v1, 0x47

    const-wide v2, -0x17781e67a3f69b73L    # -3.4866143564986046E195

    aput-wide v2, v0, v1

    const/16 v1, 0x48

    const-wide v2, 0x34b1d3c675370cfdL    # 7.270513396862227E-55

    aput-wide v2, v0, v1

    const/16 v1, 0x49

    const-wide v2, -0x23ca1bcc43f2daa3L    # -1.591152772059304E136

    aput-wide v2, v0, v1

    const/16 v1, 0x4a

    const-wide v2, -0x2f5547bdcbece420L    # -3.9602391751959066E80

    aput-wide v2, v0, v1

    const/16 v1, 0x4b

    const-wide v2, 0x8042a50b48b7eafL    # 4.77131902186522E-270

    aput-wide v2, v0, v1

    const/16 v1, 0x4c

    const-wide v2, -0x66683b11bb5c54cbL    # -2.18513540263437E-185

    aput-wide v2, v0, v1

    const/16 v1, 0x4d

    const-wide v2, -0x7d6584b6dfe86630L

    aput-wide v2, v0, v1

    const/16 v1, 0x4e

    const-wide v2, 0x263b8307b7c54441L

    aput-wide v2, v0, v1

    const/16 v1, 0x4f

    const-wide v2, 0x752f95f4fd6a6ca6L    # 2.964133700832877E256

    aput-wide v2, v0, v1

    const/16 v1, 0x50

    const-wide v2, -0x6d8de8bfd3f7391bL    # -8.007583886652934E-220

    aput-wide v2, v0, v1

    const/16 v1, 0x51

    const-wide v2, 0x2a8ab754a795d9eeL    # 9.318910520681144E-104

    aput-wide v2, v0, v1

    const/16 v1, 0x52

    const-wide v2, -0x5bbd08aad08d6bc3L    # -5.218803825717068E-134

    aput-wide v2, v0, v1

    const/16 v1, 0x53

    const-wide v2, 0x2c31334e19781208L    # 8.052675491170891E-96

    aput-wide v2, v0, v1

    const/16 v1, 0x54

    const-wide v2, 0x4fa98d7ceaee6291L    # 5.778904400497404E75

    aput-wide v2, v0, v1

    const/16 v1, 0x55

    const-wide v2, 0x55c3862f665db309L    # 1.3993323653725694E105

    aput-wide v2, v0, v1

    const/16 v1, 0x56

    const-wide v2, -0x42f9efe8a2ac4e0dL    # -9.797876516722676E-15

    aput-wide v2, v0, v1

    const/16 v1, 0x57

    const-wide v2, 0x46fe6cb840413f27L    # 9.873375241316304E33

    aput-wide v2, v0, v1

    const/16 v1, 0x58

    const-wide v2, 0x3fe03792df0cfa59L    # 0.5067839008768927

    aput-wide v2, v0, v1

    const/16 v1, 0x59

    const-wide v2, -0x3018ffc8d147a171L    # -8.322861098430486E76

    aput-wide v2, v0, v1

    const/16 v1, 0x5a

    const-wide v2, -0x5841d61852431ee8L

    aput-wide v2, v0, v1

    const/16 v1, 0x5b

    const-wide v2, -0x1abb11a3217bce23L    # -6.785464397948941E179

    aput-wide v2, v0, v1

    const/16 v1, 0x5c

    const-wide v2, -0x7587e4e4be0e78c2L

    aput-wide v2, v0, v1

    const/16 v1, 0x5d

    const-wide v2, -0x5a36b3875f2d0f19L

    aput-wide v2, v0, v1

    const/16 v1, 0x5e

    const-wide v2, 0x39412e2877b60728L    # 6.617612765594025E-33

    aput-wide v2, v0, v1

    const/16 v1, 0x5f

    const-wide v2, -0x5ed9a10c503659d4L    # -5.467335504547864E-149

    aput-wide v2, v0, v1

    const/16 v1, 0x60

    const-wide v2, -0x433d88f395daf93bL    # -5.125076247331491E-16

    aput-wide v2, v0, v1

    const/16 v1, 0x61

    const-wide v2, 0x3ab66dd5dce1ce12L    # 7.247215156111756E-26

    aput-wide v2, v0, v1

    const/16 v1, 0x62

    const-wide v2, -0x19ab662fb598a4c9L    # -8.75350871483979E184

    aput-wide v2, v0, v1

    const/16 v1, 0x63

    const-wide v2, 0x7d8f523481bfd216L    # 6.401222783324485E296

    aput-wide v2, v0, v1

    const/16 v1, 0x64

    const-wide v2, 0xf6f64fcec15f389L

    aput-wide v2, v0, v1

    const/16 v1, 0x65

    const-wide v2, 0x74efbe618b5b13c8L    # 1.861845164791916E255

    aput-wide v2, v0, v1

    const/16 v1, 0x66

    const-wide v2, -0x53237d48ebd8c1e3L    # -1.3668088857324088E-92

    aput-wide v2, v0, v1

    const/16 v1, 0x67

    const-wide v2, -0x22bf401ffce662e9L    # -1.5956959382122087E141

    aput-wide v2, v0, v1

    const/16 v1, 0x68

    const-wide v2, 0x37e99257e7e061f8L    # 2.3483855175694692E-39

    aput-wide v2, v0, v1

    const/16 v1, 0x69

    const-wide v2, -0x5ad9d96fb88a556L    # -1.668575187185849E281

    aput-wide v2, v0, v1

    const/16 v1, 0x6a

    const-wide v2, -0x744409c5b9c2a907L    # -3.813898948215108E-252

    aput-wide v2, v0, v1

    const/16 v1, 0x6b

    const-wide v2, -0xffec0eabc5d919cL    # -3.3469220384462505E231

    aput-wide v2, v0, v1

    const/16 v1, 0x6c

    const-wide v2, -0x57cf816078613768L

    aput-wide v2, v0, v1

    const/16 v1, 0x6d

    const-wide v2, -0x33b3d85beafe8834L    # -3.5346168349359895E59

    aput-wide v2, v0, v1

    const/16 v1, 0x6e

    const-wide v2, 0x1b432f2cca1d3348L

    aput-wide v2, v0, v1

    const/16 v1, 0x6f

    const-wide v2, -0x21e2e07060905fedL    # -2.2728893385183122E145

    aput-wide v2, v0, v1

    const/16 v1, 0x70

    const-wide v2, 0x606602a047a7ddd6L    # 2.3608745130336606E156

    aput-wide v2, v0, v1

    const/16 v1, 0x71

    const-wide v2, -0x2dc8549b33e34d39L    # -1.1771395723480828E88

    aput-wide v2, v0, v1

    const/16 v1, 0x72

    const-wide v2, -0x646c718dda032e2dL    # -7.721685381786603E-176

    aput-wide v2, v0, v1

    const/16 v1, 0x73

    const-wide v2, -0x13b1fc8f71f00b8aL    # -5.0519921054305746E213

    aput-wide v2, v0, v1

    const/16 v1, 0x74

    const-wide v2, -0x14d0425c2fc3ed3L

    aput-wide v2, v0, v1

    const/16 v1, 0x75

    const-wide v2, -0x51f4312d11bc7766L    # -6.989394424861336E-87

    aput-wide v2, v0, v1

    const/16 v1, 0x76

    const-wide v2, 0x22cb8923ebfb4f43L    # 4.516148694186863E-141

    aput-wide v2, v0, v1

    const/16 v1, 0x77

    const-wide v2, 0x69360d013cf7396dL    # 6.593279834311918E198

    aput-wide v2, v0, v1

    const/16 v1, 0x78

    const-wide v2, -0x7aa1c9fd2d2b1fdeL    # -8.126600420446757E-283

    aput-wide v2, v0, v1

    const/16 v1, 0x79

    const-wide v2, 0x73805bad01f784cL

    aput-wide v2, v0, v1

    const/16 v1, 0x7a

    const-wide v2, 0x33e17a133852f546L    # 8.700699239329596E-59

    aput-wide v2, v0, v1

    const/16 v1, 0x7b

    const-wide v2, -0x20b78bfa753849c8L    # -1.0005613315735636E151

    aput-wide v2, v0, v1

    const/16 v1, 0x7c

    const-wide v2, -0x456d4d6398755eb6L    # -1.5103881003350545E-26

    aput-wide v2, v0, v1

    const/16 v1, 0x7d

    const-wide v2, 0xce89fc76cfaadcdL

    aput-wide v2, v0, v1

    const/16 v1, 0x7e

    const-wide v2, 0x5f9d4e0908339e34L    # 3.8370455984734964E152

    aput-wide v2, v0, v1

    const/16 v1, 0x7f

    const-wide v2, -0xe5016d6e0a6dc47L    # -4.1558899700874843E239

    aput-wide v2, v0, v1

    const/16 v1, 0x80

    const-wide v2, 0x6e3480f60f4a265fL    # 7.411569807530451E222

    aput-wide v2, v0, v1

    const/16 v1, 0x81

    const-wide v2, -0x1140c5d54d647be4L    # -2.8896817404268362E225

    aput-wide v2, v0, v1

    const/16 v1, 0x82

    const-wide v2, -0x1de6c757706e4b53L    # -3.630993715685137E164

    aput-wide v2, v0, v1

    const/16 v1, 0x83

    const-wide v2, 0x57dfeff845c6d3c3L    # 1.9662451983681515E115

    aput-wide v2, v0, v1

    const/16 v1, 0x84

    const-wide v2, 0x2f006b0bf62caaf2L    # 2.704428133568258E-82

    aput-wide v2, v0, v1

    const/16 v1, 0x85

    const-wide v2, 0x62f479ef6f75ee78L    # 4.82980147334159E168

    aput-wide v2, v0, v1

    const/16 v1, 0x86

    const-wide v2, 0x11a55ad41c8916a9L    # 1.153848313627599E-223

    aput-wide v2, v0, v1

    const/16 v1, 0x87

    const-wide v2, -0xdd62d6f7b012badL    # -8.609246033434355E241

    aput-wide v2, v0, v1

    const/16 v1, 0x88

    const-wide v2, 0x42f1c27b16b000e6L    # 3.124317825925264E14

    aput-wide v2, v0, v1

    const/16 v1, 0x89

    const-wide v2, 0x2b1f76749823c074L

    aput-wide v2, v0, v1

    const/16 v1, 0x8a

    const-wide v2, 0x4b76eca3c2745360L    # 3.51315005842692E55

    aput-wide v2, v0, v1

    const/16 v1, 0x8b

    const-wide v2, -0x73670b9c46e96e43L    # -5.576670777237794E-248

    aput-wide v2, v0, v1

    const/16 v1, 0x8c

    const-wide v2, 0x14bcc93cf1ade66aL    # 8.755997706927361E-209

    aput-wide v2, v0, v1

    const/16 v1, 0x8d

    const-wide v2, -0x777adec192ba7c69L

    aput-wide v2, v0, v1

    const/16 v1, 0x8e

    const-wide v2, -0x71e8820fd8b2b8efL    # -8.807699030355422E-241

    aput-wide v2, v0, v1

    const/16 v1, 0x8f

    const-wide v2, -0x4b648c4aafc0d6afL    # -2.7989462939957105E-55

    aput-wide v2, v0, v1

    const/16 v1, 0x90

    const-wide v2, 0x10168168c3f96b6bL    # 3.624032621044915E-231

    aput-wide v2, v0, v1

    const/16 v1, 0x91

    const-wide v2, 0xe3d963b63cab0aeL

    aput-wide v2, v0, v1

    const/16 v1, 0x92

    const-wide v2, -0x7203b4a9aa5e24ecL

    aput-wide v2, v0, v1

    const/16 v1, 0x93

    const-wide v2, -0x8760eca91eb21a4L    # -6.691959842931859E267

    aput-wide v2, v0, v1

    const/16 v1, 0x94

    const-wide v2, 0x683e68af4e51dac1L    # 1.3873891435887787E194

    aput-wide v2, v0, v1

    const/16 v1, 0x95

    const-wide v2, -0x3657b06272b4f027L    # -6.939563103946774E46

    aput-wide v2, v0, v1

    const/16 v1, 0x96

    const-wide v2, 0x3691e03f52a0f9d1L    # 7.827988757718869E-46

    aput-wide v2, v0, v1

    const/16 v1, 0x97

    const-wide v2, 0x5ed86e46e1878e80L

    aput-wide v2, v0, v1

    const/16 v1, 0x98

    const-wide v2, 0x3c711a0e99d07150L    # 1.483343421278378E-17

    aput-wide v2, v0, v1

    const/16 v1, 0x99

    const-wide v2, 0x5a0865b20c4e9310L

    aput-wide v2, v0, v1

    const/16 v1, 0x9a

    const-wide v2, 0x56fbfc1fe4f0682eL    # 1.0515782288163801E111

    aput-wide v2, v0, v1

    const/16 v1, 0x9b

    const-wide v2, -0x1572a21cefa12065L    # -1.8414625500807994E205

    aput-wide v2, v0, v1

    const/16 v1, 0x9c

    const-wide v2, 0x71abfdb12379187aL    # 3.645396219457309E239

    aput-wide v2, v0, v1

    const/16 v1, 0x9d

    const-wide v2, 0x2eb99de1bee77b9cL    # 1.3186357159901095E-83

    aput-wide v2, v0, v1

    const/16 v1, 0x9e

    const-wide v2, 0x21ecc0ea33cf4523L

    aput-wide v2, v0, v1

    const/16 v1, 0x9f

    const-wide v2, 0x59a4d7521805c7a1L    # 6.888565586522737E123

    aput-wide v2, v0, v1

    const/16 v1, 0xa0

    const-wide v2, 0x3896f5eb56ae7c72L    # 4.318413076023216E-36

    aput-wide v2, v0, v1

    const/16 v1, 0xa1

    const-wide v2, -0x559c70c24e708a24L

    aput-wide v2, v0, v1

    const/16 v1, 0xa2

    const-wide v2, -0x60c6ca7254167f72L

    aput-wide v2, v0, v1

    const/16 v1, 0xa3

    const-wide v2, -0x4821056e3ff48d54L    # -1.4224761129762406E-39

    aput-wide v2, v0, v1

    const/16 v1, 0xa4

    const-wide v2, 0x6b5541fd62492d92L    # 1.0919802025892583E209

    aput-wide v2, v0, v1

    const/16 v1, 0xa5

    const-wide v2, 0x6dc6dee8f92e4d5bL    # 6.458729575933227E220

    aput-wide v2, v0, v1

    const/16 v1, 0xa6

    const-wide v2, 0x353f57abc4beea7eL

    aput-wide v2, v0, v1

    const/16 v1, 0xa7

    const-wide v2, 0x735769d6da5690ceL    # 4.092621491666842E247

    aput-wide v2, v0, v1

    const/16 v1, 0xa8

    const-wide v2, 0xa234aa642391484L

    aput-wide v2, v0, v1

    const/16 v1, 0xa9

    const-wide v2, -0x906af7fd707f263L

    aput-wide v2, v0, v1

    const/16 v1, 0xaa

    const-wide v2, -0x471ce65d854c0debL    # -1.1495475899129204E-34

    aput-wide v2, v0, v1

    const/16 v1, 0xab

    const-wide v2, 0x31ad9c1151341a4dL    # 2.1450831247435237E-69

    aput-wide v2, v0, v1

    const/16 v1, 0xac

    const-wide v2, 0x773c22a57bef5805L    # 2.2680274931370115E266

    aput-wide v2, v0, v1

    const/16 v1, 0xad

    const-wide v2, 0x45c7561a07968633L    # 1.4444491535759941E28

    aput-wide v2, v0, v1

    const/16 v1, 0xae

    const-wide v2, -0x6ec2561db6241caL

    aput-wide v2, v0, v1

    const/16 v1, 0xaf

    const-wide v2, -0x259ad2648759b398L    # -2.8671886980201316E127

    aput-wide v2, v0, v1

    const/16 v1, 0xb0

    const-wide v2, 0x4c27a97f3bc334efL    # 7.42646971997832E58

    aput-wide v2, v0, v1

    const/16 v1, 0xb1

    const-wide v2, 0x76621220e66b17f4L

    aput-wide v2, v0, v1

    const/16 v1, 0xb2

    const-wide v2, -0x6988bc76653282f5L

    aput-wide v2, v0, v1

    const/16 v1, 0xb3

    const-wide v2, -0xc11a4351f12987eL

    aput-wide v2, v0, v1

    const/16 v1, 0xb4

    const-wide v2, 0x409f753600c879fcL    # 2013.3027373623327

    aput-wide v2, v0, v1

    const/16 v1, 0xb5

    const-wide v2, 0x6d09a39b5926db6L

    aput-wide v2, v0, v1

    const/16 v1, 0xb6

    const-wide v2, 0x6f83aeb0317ac588L    # 1.492052970380428E229

    aput-wide v2, v0, v1

    const/16 v1, 0xb7

    const-wide v2, 0x1e6ca4a86381f21L

    aput-wide v2, v0, v1

    const/16 v1, 0xb8

    const-wide v2, 0x66ff3462d19f3025L    # 1.3577392997657777E188

    aput-wide v2, v0, v1

    const/16 v1, 0xb9

    const-wide v2, 0x72207c24ddfd3bfbL    # 5.496090074757168E241

    aput-wide v2, v0, v1

    const/16 v1, 0xba

    const-wide v2, 0x4af6b6d3e2ece2ebL    # 1.359740828335783E53

    aput-wide v2, v0, v1

    const/16 v1, 0xbb

    const-wide v2, -0x6366b2413815f722L    # -6.547663772191977E-171

    aput-wide v2, v0, v1

    const/16 v1, 0xbc

    const-wide v2, 0x49ace597b09a8bc4L    # 8.248591314191505E46

    aput-wide v2, v0, v1

    const/16 v1, 0xbd

    const-wide v2, -0x4c73b89930f86846L    # -2.1997513055531296E-60

    aput-wide v2, v0, v1

    const/16 v1, 0xbe

    const-wide v2, 0x131b9373c57c2a75L

    aput-wide v2, v0, v1

    const/16 v1, 0xbf

    const-wide v2, -0x4e7dd3319e6ce1a8L    # -3.291743714781483E-70

    aput-wide v2, v0, v1

    const/16 v1, 0xc0

    const-wide v2, -0x628aaa46f645e3f4L    # -9.045073502769379E-167

    aput-wide v2, v0, v1

    const/16 v1, 0xc1

    const-wide v2, 0x127fafdd937d11d2L

    aput-wide v2, v0, v1

    const/16 v1, 0xc2

    const-wide v2, 0x29da3badc66d92e4L    # 4.467982916751037E-107

    aput-wide v2, v0, v1

    const/16 v1, 0xc3

    const-wide v2, -0x5d3e2a8eab3d1344L

    aput-wide v2, v0, v1

    const/16 v1, 0xc4

    const-wide v2, 0x58c5134d82f6fe24L    # 4.251715071075892E119

    aput-wide v2, v0, v1

    const/16 v1, 0xc5

    const-wide v2, 0x1c3ae3515b62274fL    # 1.087127178812014E-172

    aput-wide v2, v0, v1

    const/16 v1, 0xc6

    const-wide v2, -0x16f837d1fe347edaL    # -8.888626693949207E197

    aput-wide v2, v0, v1

    const/16 v1, 0xc7

    const-wide v2, -0x712f6e6ec1c8035L

    aput-wide v2, v0, v1

    const/16 v1, 0xc8

    const-wide v2, 0x3249d8f9c80046c9L    # 1.9174786714963253E-66

    aput-wide v2, v0, v1

    const/16 v1, 0xc9

    const-wide v2, -0x7f3064121c77049dL    # -9.002570123047875E-305

    aput-wide v2, v0, v1

    const/16 v1, 0xca

    const-wide v2, 0x1881539a116cf19eL

    aput-wide v2, v0, v1

    const/16 v1, 0xcb

    const-wide v2, 0x5103f3f76bd52457L    # 1.8926787569032368E82

    aput-wide v2, v0, v1

    const/16 v1, 0xcc

    const-wide v2, 0x15b7e6f5ae47f7a8L    # 4.764755010453731E-204

    aput-wide v2, v0, v1

    const/16 v1, 0xcd

    const-wide v2, -0x242839212b816331L    # -2.7003009876882443E134

    aput-wide v2, v0, v1

    const/16 v1, 0xce

    const-wide v2, 0x44e55c410228bb1aL    # 8.069718475711225E23

    aput-wide v2, v0, v1

    const/16 v1, 0xcf

    const-wide v2, -0x49b82bdaa124b167L    # -3.2608509796281796E-47

    aput-wide v2, v0, v1

    const/16 v1, 0xd0

    const-wide v2, 0x5d11882bb8aafc30L    # 2.0877928505108043E140

    aput-wide v2, v0, v1

    const/16 v1, 0xd1

    const-wide v2, -0xaf67444d62cded6L    # -5.993303386382394E255

    aput-wide v2, v0, v1

    const/16 v1, 0xd2

    const-wide v2, -0x704a15eb16fd694dL    # -5.513819994107631E-233

    aput-wide v2, v0, v1

    const/16 v1, 0xd3

    const-wide v2, 0x677b942157dd025aL    # 3.0719208721477642E190

    aput-wide v2, v0, v1

    const/16 v1, 0xd4

    const-wide v2, -0x4a7183f5c6f534bL

    aput-wide v2, v0, v1

    const/16 v1, 0xd5

    const-wide v2, -0x762c98b37c42b5ffL

    aput-wide v2, v0, v1

    const/16 v1, 0xd6

    const-wide v2, -0x61d25b20b40c46c5L

    aput-wide v2, v0, v1

    const/16 v1, 0xd7

    const-wide v2, -0x33be1cd7354b7d7L

    aput-wide v2, v0, v1

    const/16 v1, 0xd8

    const-wide v2, 0x3f38c96ba582c52L

    aput-wide v2, v0, v1

    const/16 v1, 0xd9

    const-wide v2, -0x352e42428027a24eL    # -2.655104314167237E52

    aput-wide v2, v0, v1

    const/16 v1, 0xda

    const-wide v2, -0x444bbd3e9f7d517dL    # -4.290383491467139E-21

    aput-wide v2, v0, v1

    const/16 v1, 0xdb

    const-wide v2, -0x46a017945a256550L    # -2.4580946309836124E-32

    aput-wide v2, v0, v1

    const/16 v1, 0xdc

    const-wide v2, -0x4dd1fb98c88e56c1L    # -5.5669991359009555E-67

    aput-wide v2, v0, v1

    const/16 v1, 0xdd

    const-wide v2, -0x7baca736b6cead28L    # -7.94097403391739E-288

    aput-wide v2, v0, v1

    const/16 v1, 0xde

    const-wide v2, -0x41d5b779684babe2L    # -3.0597792612414057E-9

    aput-wide v2, v0, v1

    const/16 v1, 0xdf

    const-wide v2, -0x6a5d23d22c71969aL

    aput-wide v2, v0, v1

    const/16 v1, 0xe0

    const-wide v2, -0x3fd3ee536dc37ad5L    # -14.03451973904392

    aput-wide v2, v0, v1

    const/16 v1, 0xe1

    const-wide v2, 0x2388b1990df2a87bL    # 1.658894972122064E-137

    aput-wide v2, v0, v1

    const/16 v1, 0xe2

    const-wide v2, 0x7c8008fa1b4f37beL    # 5.00053620899505E291

    aput-wide v2, v0, v1

    const/16 v1, 0xe3

    const-wide v2, 0x1f70d0c84d54e503L    # 3.061917699482543E-157

    aput-wide v2, v0, v1

    const/16 v1, 0xe4

    const-wide v2, 0x5490adec7ece57d4L    # 2.2801254755825375E99

    aput-wide v2, v0, v1

    const/16 v1, 0xe5

    const-wide v2, 0x2b3c27d9063a3aL

    aput-wide v2, v0, v1

    const/16 v1, 0xe6

    const-wide v2, 0x7eaea3848030a2bfL    # 1.6414837106804563E302

    aput-wide v2, v0, v1

    const/16 v1, 0xe7

    const-wide v2, -0x39fdcd9212dffc40L    # -1.8021425855669822E29

    aput-wide v2, v0, v1

    const/16 v1, 0xe8

    const-wide v2, -0x7c58d7829656bf7aL

    aput-wide v2, v0, v1

    const/16 v1, 0xe9

    const-wide v2, -0x3a85a034cf0a8576L    # -5.101511094841689E26

    aput-wide v2, v0, v1

    const/16 v1, 0xea

    const-wide v2, -0x4a97bb1b86141887L    # -2.0270507547004217E-51

    aput-wide v2, v0, v1

    const/16 v1, 0xeb

    const-wide v2, -0x5c8c4bf0fa234317L    # -6.618234631453512E-138

    aput-wide v2, v0, v1

    const/16 v1, 0xec

    const-wide v2, -0x28e5879177a8f11eL    # -3.9786846415344597E111

    aput-wide v2, v0, v1

    const/16 v1, 0xed

    const-wide v2, -0x7863453242170960L

    aput-wide v2, v0, v1

    const/16 v1, 0xee

    const-wide v2, -0x68952e433e9b5cd1L    # -7.175630216046167E-196

    aput-wide v2, v0, v1

    const/16 v1, 0xef

    const-wide v2, -0x54de1da169992875L    # -6.387962147302085E-101

    aput-wide v2, v0, v1

    const/16 v1, 0xf0

    const-wide v2, -0x6fef9c551a1a3cc4L    # -2.639152246981608E-231

    aput-wide v2, v0, v1

    const/16 v1, 0xf1

    const-wide v2, -0x67e74cbbb7967270L

    aput-wide v2, v0, v1

    const/16 v1, 0xf2

    const-wide v2, -0x1c9b7851c1e17545L    # -6.198356635853463E170

    aput-wide v2, v0, v1

    const/16 v1, 0xf3

    const-wide v2, -0x504206ce76c4234cL    # -1.0111540592072376E-78

    aput-wide v2, v0, v1

    const/16 v1, 0xf4

    const-wide v2, 0x6345a0dc5fbbd519L    # 1.6324925582579804E170

    aput-wide v2, v0, v1

    const/16 v1, 0xf5

    const-wide v2, -0x79d701d9646b9a36L    # -5.507424288167028E-279

    aput-wide v2, v0, v1

    const/16 v1, 0xf6

    const-wide v2, 0x1e5d01603f9c51ecL

    aput-wide v2, v0, v1

    const/16 v1, 0xf7

    const-wide v2, 0x4de44006a15049b7L    # 1.7060676483988662E67

    aput-wide v2, v0, v1

    const/16 v1, 0xf8

    const-wide v2, -0x40938f1a0889344fL    # -0.0034718028579958306

    aput-wide v2, v0, v1

    const/16 v1, 0xf9

    const-wide v2, 0x411218f2ef552bedL    # 296508.7337233413

    aput-wide v2, v0, v1

    const/16 v1, 0xfa

    const-wide v2, -0x34f3f8f78fa5c95dL    # -3.3556231761016176E53

    aput-wide v2, v0, v1

    const/16 v1, 0xfb

    const-wide v2, -0x18b2eb8ab0679fbcL    # -4.048931440916525E189

    aput-wide v2, v0, v1

    const/16 v1, 0xfc

    const-wide v2, -0x32a926bcf157d7f2L    # -3.759760618428918E64

    aput-wide v2, v0, v1

    const/16 v1, 0xfd

    const-wide v2, -0x3eda6e28aca0af9bL    # -706795.6628365634

    aput-wide v2, v0, v1

    const/16 v1, 0xfe

    const-wide v2, -0x37cddc0e8df5106aL    # -6.172859241033396E39

    aput-wide v2, v0, v1

    const/16 v1, 0xff

    const-wide v2, -0x3c5fc6908c9c5ae1L    # -5.8454405983152115E17

    aput-wide v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/TigerDigest;->t4:[J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    iput v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    new-array v0, v2, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/TigerDigest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/TigerDigest;)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    iput v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    new-array v0, v2, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/TigerDigest;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method private finish()V
    .registers 5

    const/4 v3, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/TigerDigest;->update(B)V

    :goto_9
    iget v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    if-nez v2, :cond_14

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/TigerDigest;->processLength(J)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/TigerDigest;->processBlock()V

    return-void

    :cond_14
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/digests/TigerDigest;->update(B)V

    goto :goto_9
.end method

.method private keySchedule()V
    .registers 16

    const/4 v14, 0x0

    const/4 v13, 0x7

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v14

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v1, v13

    const-wide v6, -0x5a5a5a5a5a5a5a5bL

    xor-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v14

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v10

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v1, v14

    xor-long/2addr v2, v4

    aput-wide v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v11

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v1, v10

    add-long/2addr v2, v4

    aput-wide v2, v0, v11

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v1, 0x3

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v4, v11

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v6, v6, v10

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    const/16 v8, 0x13

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v12

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v12

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-wide v2, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v4, v12

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget-wide v2, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v6, v6, v12

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    const/16 v8, 0x17

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v13

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v4, 0x6

    aget-wide v4, v1, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v13

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v14

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v1, v13

    add-long/2addr v2, v4

    aput-wide v2, v0, v14

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v10

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v1, v14

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v6, v1, v13

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    const/16 v1, 0x13

    shl-long/2addr v6, v1

    xor-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v11

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v1, v10

    xor-long/2addr v2, v4

    aput-wide v2, v0, v11

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v1, 0x3

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v4, v11

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v12

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v6, v1, v11

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    const/16 v1, 0x17

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v12

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-wide v2, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v4, v4, v12

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget-wide v2, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aget-wide v2, v0, v13

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v4, 0x6

    aget-wide v4, v1, v4

    const-wide v6, 0x123456789abcdefL

    xor-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v13

    return-void
.end method

.method private processBlock()V
    .registers 11

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundABC(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundBCA(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundCAB(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundABC(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundBCA(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x5

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundCAB(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundABC(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x7

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundBCA(JJ)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/TigerDigest;->keySchedule()V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x7

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundCAB(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x7

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundABC(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x7

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundBCA(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x7

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundCAB(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x7

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundABC(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x5

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x7

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundBCA(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x7

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundCAB(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x7

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x7

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundABC(JJ)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/TigerDigest;->keySchedule()V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundBCA(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundCAB(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundABC(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundBCA(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundCAB(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x5

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundABC(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundBCA(JJ)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v7, 0x7

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/TigerDigest;->roundCAB(JJ)V

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    xor-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    const/4 v0, 0x0

    :goto_10f
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    array-length v1, v1

    if-ne v0, v1, :cond_115

    return-void

    :cond_115
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10f
.end method

.method private processLength(J)V
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    const/4 v1, 0x7

    aput-wide p1, v0, v1

    return-void
.end method

.method private processWord([BI)V
    .registers 10

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    array-length v1, v1

    if-eq v0, v1, :cond_69

    :goto_65
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    return-void

    :cond_69
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/TigerDigest;->processBlock()V

    goto :goto_65
.end method

.method private roundABC(JJ)V
    .registers 14

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    sget-object v2, Lorg/bouncycastle/crypto/digests/TigerDigest;->t1:[J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-wide v2, v2, v3

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t2:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    const/16 v5, 0x10

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t3:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    const/16 v5, 0x20

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t4:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    const/16 v5, 0x30

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    sget-object v2, Lorg/bouncycastle/crypto/digests/TigerDigest;->t4:[J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    const/16 v3, 0x8

    shr-long/2addr v4, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-wide v2, v2, v3

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t3:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    const/16 v5, 0x18

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t2:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    const/16 v5, 0x28

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t1:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    const/16 v5, 0x38

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    return-void
.end method

.method private roundBCA(JJ)V
    .registers 14

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    sget-object v2, Lorg/bouncycastle/crypto/digests/TigerDigest;->t1:[J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-wide v2, v2, v3

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t2:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    const/16 v5, 0x10

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t3:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    const/16 v5, 0x20

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t4:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    const/16 v5, 0x30

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    sget-object v2, Lorg/bouncycastle/crypto/digests/TigerDigest;->t4:[J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    const/16 v3, 0x8

    shr-long/2addr v4, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-wide v2, v2, v3

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t3:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    const/16 v5, 0x18

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t2:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    const/16 v5, 0x28

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t1:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    const/16 v5, 0x38

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    return-void
.end method

.method private roundCAB(JJ)V
    .registers 14

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    sget-object v2, Lorg/bouncycastle/crypto/digests/TigerDigest;->t1:[J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-wide v2, v2, v3

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t2:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    const/16 v5, 0x10

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t3:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    const/16 v5, 0x20

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t4:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    const/16 v5, 0x30

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    sget-object v2, Lorg/bouncycastle/crypto/digests/TigerDigest;->t4:[J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    const/16 v3, 0x8

    shr-long/2addr v4, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-wide v2, v2, v3

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t3:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    const/16 v5, 0x18

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t2:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    const/16 v5, 0x28

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/digests/TigerDigest;->t1:[J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    const/16 v5, 0x38

    shr-long/2addr v6, v5

    long-to-int v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/TigerDigest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/TigerDigest;-><init>(Lorg/bouncycastle/crypto/digests/TigerDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/TigerDigest;->finish()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/digests/TigerDigest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    add-int/lit8 v2, p2, 0x8

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/TigerDigest;->unpackWord(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    add-int/lit8 v2, p2, 0x10

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/bouncycastle/crypto/digests/TigerDigest;->unpackWord(J[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/TigerDigest;->reset()V

    const/16 v0, 0x18

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Tiger"

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public reset()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide v2, 0x123456789abcdefL

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    const-wide v2, -0x123456789abcdf0L

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    const-wide v2, -0xf695a4b3c4d1e79L    # -2.2502609078413763E234

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    move v0, v1

    :goto_1b
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    array-length v2, v2

    if-ne v0, v2, :cond_2b

    iput v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    move v0, v1

    :goto_23
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    array-length v2, v2

    if-ne v0, v2, :cond_32

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->byteCount:J

    return-void

    :cond_2b
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_32
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 6

    const/4 v3, 0x0

    check-cast p1, Lorg/bouncycastle/crypto/digests/TigerDigest;

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->a:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->b:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->c:J

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->x:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->xOff:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/TigerDigest;->byteCount:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->byteCount:J

    return-void
.end method

.method public unpackWord(J[BI)V
    .registers 10

    add-int/lit8 v0, p4, 0x7

    const/16 v1, 0x38

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    const/16 v1, 0x30

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    const/16 v1, 0x28

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    const/16 v1, 0x20

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x18

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0x10

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    const/16 v1, 0x8

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    long-to-int v0, p1

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    return-void
.end method

.method public update(B)V
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1a

    :goto_12
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->byteCount:J

    return-void

    :cond_1a
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/TigerDigest;->processWord([BI)V

    goto :goto_12
.end method

.method public update([BII)V
    .registers 8

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->bOff:I

    if-nez v0, :cond_d

    :cond_4
    :goto_4
    move v0, p3

    move v1, p2

    const/16 v2, 0x8

    if-gt v0, v2, :cond_19

    :goto_a
    if-gtz v0, :cond_28

    return-void

    :cond_d
    if-lez p3, :cond_4

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/TigerDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_19
    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/digests/TigerDigest;->processWord([BI)V

    add-int/lit8 p2, v1, 0x8

    add-int/lit8 p3, v0, -0x8

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->byteCount:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/TigerDigest;->byteCount:J

    goto :goto_4

    :cond_28
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/TigerDigest;->update(B)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method