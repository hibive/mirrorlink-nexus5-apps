.class public Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final MASK:I = 0xff

.field static final exps:[S

.field static final logs:[S


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x100

    new-array v0, v0, [S

    aput-short v3, v0, v4

    aput-short v5, v0, v3

    aput-short v7, v0, v5

    const/16 v1, 0x8

    aput-short v1, v0, v6

    const/16 v1, 0x10

    aput-short v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x20

    aput-short v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x40

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x80

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4d

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9a

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x79

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xf2

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xa9

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1f

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3e

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x7c

    aput-short v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xf8

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xbd

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x37

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x6e

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xdc

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xf5

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa7

    aput-short v2, v0, v1

    const/16 v1, 0x17

    aput-short v6, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x6

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x18

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x30

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x60

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xc0

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xcd

    aput-short v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xd7

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xe3

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x8b

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x5b

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xb6

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x21

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x42

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x84

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x45

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x8a

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x59

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xb2

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x29

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x52

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xa4

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x5

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xa

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x14

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x28

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x50

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xa0

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xd

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x1a

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x34

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x68

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xd0

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xed

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x97

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x63

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xc6

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xc1

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xcf

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xd3

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xeb

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x9b

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x7b

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xf6

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xa1

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x1e

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x3c

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x78

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xf0

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0xad

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x17

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x2e

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x5c

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xb8

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x3d

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x7a

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xf4

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xa5

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x7

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xe

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1c

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x38

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x70

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xe0

    aput-short v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x8d

    aput-short v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x57

    aput-short v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0xae

    aput-short v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x11

    aput-short v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x22

    aput-short v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x44

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x88

    aput-short v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x5d

    aput-short v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xba

    aput-short v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x39

    aput-short v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x72

    aput-short v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0xe4

    aput-short v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x85

    aput-short v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x47

    aput-short v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x8e

    aput-short v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x51

    aput-short v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xa2

    aput-short v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x9

    aput-short v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x12

    aput-short v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x24

    aput-short v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x48

    aput-short v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x90

    aput-short v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x6d

    aput-short v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xda

    aput-short v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xf9

    aput-short v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xbf

    aput-short v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x33

    aput-short v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x66

    aput-short v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xcc

    aput-short v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xd5

    aput-short v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xe7

    aput-short v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x83

    aput-short v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x4b

    aput-short v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x96

    aput-short v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x61

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xc2

    aput-short v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xc9

    aput-short v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0xdf

    aput-short v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xf3

    aput-short v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0xab

    aput-short v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x1b

    aput-short v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x36

    aput-short v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x6c

    aput-short v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0xd8

    aput-short v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0xfd

    aput-short v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0xb7

    aput-short v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x23

    aput-short v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x46

    aput-short v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x8c

    aput-short v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x55

    aput-short v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0xaa

    aput-short v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x19

    aput-short v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x32

    aput-short v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x64

    aput-short v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0xc8

    aput-short v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0xdd

    aput-short v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0xf7

    aput-short v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0xa3

    aput-short v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0xb

    aput-short v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x16

    aput-short v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x2c

    aput-short v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x58

    aput-short v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0xb0

    aput-short v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x2d

    aput-short v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x5a

    aput-short v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0xb4

    aput-short v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x25

    aput-short v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x4a

    aput-short v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x94

    aput-short v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x65

    aput-short v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0xca

    aput-short v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0xd9

    aput-short v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0xff

    aput-short v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0xb3

    aput-short v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x2b

    aput-short v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x56

    aput-short v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0xac

    aput-short v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x15

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x2a

    aput-short v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x54

    aput-short v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0xa8

    aput-short v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x1d

    aput-short v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x3a

    aput-short v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x74

    aput-short v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0xe8

    aput-short v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x9d

    aput-short v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x77

    aput-short v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0xee

    aput-short v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x91

    aput-short v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x6f

    aput-short v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0xde

    aput-short v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xf1

    aput-short v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0xaf

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x13

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x26

    aput-short v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x4c

    aput-short v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x98

    aput-short v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x7d

    aput-short v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0xfa

    aput-short v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0xb9

    aput-short v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x3f

    aput-short v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x7e

    aput-short v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0xfc

    aput-short v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0xb5

    aput-short v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x27

    aput-short v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x4e

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x9c

    aput-short v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x75

    aput-short v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0xea

    aput-short v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x99

    aput-short v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x7f

    aput-short v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0xfe

    aput-short v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xb1

    aput-short v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x2f

    aput-short v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x5e

    aput-short v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0xbc

    aput-short v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x35

    aput-short v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x6a

    aput-short v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0xd4

    aput-short v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0xe5

    aput-short v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x87

    aput-short v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x43

    aput-short v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x86

    aput-short v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x41

    aput-short v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x82

    aput-short v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x49

    aput-short v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x92

    aput-short v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x69

    aput-short v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0xd2

    aput-short v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0xe9

    aput-short v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x9f

    aput-short v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x73

    aput-short v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0xe6

    aput-short v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x81

    aput-short v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x4f

    aput-short v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x9e

    aput-short v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x71

    aput-short v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0xe2

    aput-short v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x89

    aput-short v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x5f

    aput-short v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0xbe

    aput-short v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x31

    aput-short v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x62

    aput-short v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0xc4

    aput-short v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0xc5

    aput-short v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xc7

    aput-short v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0xc3

    aput-short v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xcb

    aput-short v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0xdb

    aput-short v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0xfb

    aput-short v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xbb

    aput-short v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x3b

    aput-short v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x76

    aput-short v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0xec

    aput-short v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x95

    aput-short v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x67

    aput-short v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0xce

    aput-short v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0xd1

    aput-short v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0xef

    aput-short v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x93

    aput-short v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x6b

    aput-short v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0xd6

    aput-short v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xe1

    aput-short v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x8f

    aput-short v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x53

    aput-short v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xa6

    aput-short v2, v0, v1

    const/16 v1, 0xff

    aput-short v3, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->exps:[S

    const/16 v0, 0x100

    new-array v0, v0, [S

    aput-short v4, v0, v4

    aput-short v4, v0, v3

    aput-short v3, v0, v5

    const/16 v1, 0x17

    aput-short v1, v0, v6

    aput-short v5, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x2e

    aput-short v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x18

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x53

    aput-short v2, v0, v1

    const/16 v1, 0x8

    aput-short v6, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x6a

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2f

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x93

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x19

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x34

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x54

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x45

    aput-short v2, v0, v1

    const/16 v1, 0x10

    aput-short v7, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x5c

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x6b

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xb6

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x30

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xa6

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x94

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x4b

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x1a

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x8c

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x35

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x81

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x55

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xaa

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x46

    aput-short v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xd

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x5

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x24

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x5d

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x87

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6c

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x9b

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xb7

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xc1

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x31

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x2b

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xa7

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xa3

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x95

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x98

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x4c

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xca

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x1b

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xe6

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x8d

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x73

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x36

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xcd

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x82

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x12

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x56

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x62

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xab

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xf0

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x47

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x4f

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xe

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xbd

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x6

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xd4

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x25

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd2

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x5e

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x27

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x88

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x66

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x6d

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xd6

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9c

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x79

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb8

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x8

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xc2

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xdf

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x32

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x68

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x2c

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0xfd

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xa8

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x8a

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xa4

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x5a

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x96

    aput-short v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x29

    aput-short v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x99

    aput-short v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x22

    aput-short v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x4d

    aput-short v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x60

    aput-short v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xcb

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xe4

    aput-short v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x1c

    aput-short v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x7b

    aput-short v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xe7

    aput-short v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x3b

    aput-short v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x8e

    aput-short v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x9e

    aput-short v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x74

    aput-short v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0xf4

    aput-short v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x37

    aput-short v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xd8

    aput-short v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xce

    aput-short v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0xf9

    aput-short v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x83

    aput-short v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x6f

    aput-short v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x13

    aput-short v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xb2

    aput-short v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x57

    aput-short v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xe1

    aput-short v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x63

    aput-short v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0xdc

    aput-short v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0xac

    aput-short v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xc4

    aput-short v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xf1

    aput-short v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xaf

    aput-short v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x48

    aput-short v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0xa

    aput-short v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x50

    aput-short v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x42

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xf

    aput-short v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xba

    aput-short v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0xbe

    aput-short v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xc7

    aput-short v2, v0, v1

    const/16 v1, 0x80

    const/4 v2, 0x7

    aput-short v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0xde

    aput-short v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0xd5

    aput-short v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x78

    aput-short v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x26

    aput-short v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x65

    aput-short v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0xd3

    aput-short v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0xd1

    aput-short v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x5f

    aput-short v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0xe3

    aput-short v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x28

    aput-short v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x21

    aput-short v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x89

    aput-short v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x59

    aput-short v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x67

    aput-short v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0xfc

    aput-short v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x6e

    aput-short v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0xb1

    aput-short v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0xd7

    aput-short v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0xf8

    aput-short v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x9d

    aput-short v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0xf3

    aput-short v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x7a

    aput-short v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x3a

    aput-short v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0xb9

    aput-short v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0xc6

    aput-short v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x9

    aput-short v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x41

    aput-short v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0xc3

    aput-short v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0xae

    aput-short v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0xe0

    aput-short v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0xdb

    aput-short v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x33

    aput-short v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x44

    aput-short v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x69

    aput-short v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x92

    aput-short v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x2d

    aput-short v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x52

    aput-short v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0xfe

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x16

    aput-short v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0xa9

    aput-short v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x8b

    aput-short v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x80

    aput-short v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0xa5

    aput-short v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x4a

    aput-short v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x5b

    aput-short v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0xb5

    aput-short v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x97

    aput-short v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0xc9

    aput-short v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x2a

    aput-short v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0xa2

    aput-short v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x9a

    aput-short v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0xc0

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x23

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x86

    aput-short v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x4e

    aput-short v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0xbc

    aput-short v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x61

    aput-short v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0xef

    aput-short v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0xcc

    aput-short v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x11

    aput-short v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0xe5

    aput-short v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x72

    aput-short v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x1d

    aput-short v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x3d

    aput-short v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x7c

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0xeb

    aput-short v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0xe8

    aput-short v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0xe9

    aput-short v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x3c

    aput-short v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0xea

    aput-short v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x8f

    aput-short v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x7d

    aput-short v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x9f

    aput-short v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0xec

    aput-short v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x75

    aput-short v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x1e

    aput-short v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0xf5

    aput-short v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x3e

    aput-short v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x38

    aput-short v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0xf6

    aput-short v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0xd9

    aput-short v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x3f

    aput-short v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0xcf

    aput-short v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x76

    aput-short v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0xfa

    aput-short v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x1f

    aput-short v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x84

    aput-short v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0xa0

    aput-short v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x70

    aput-short v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0xed

    aput-short v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x14

    aput-short v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x90

    aput-short v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0xb3

    aput-short v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x7e

    aput-short v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x58

    aput-short v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0xfb

    aput-short v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0xe2

    aput-short v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x20

    aput-short v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x64

    aput-short v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0xd0

    aput-short v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0xdd

    aput-short v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x77

    aput-short v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0xad

    aput-short v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0xda

    aput-short v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xc5

    aput-short v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x40

    aput-short v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xf2

    aput-short v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x39

    aput-short v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0xb0

    aput-short v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xf7

    aput-short v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x49

    aput-short v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0xb4

    aput-short v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0xb

    aput-short v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x7f

    aput-short v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x51

    aput-short v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x15

    aput-short v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x43

    aput-short v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x91

    aput-short v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x10

    aput-short v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x71

    aput-short v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0xbb

    aput-short v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xee

    aput-short v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0xbf

    aput-short v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x85

    aput-short v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xc8

    aput-short v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0xa1

    aput-short v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addElem(SS)S
    .registers 3

    xor-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static getExp(S)S
    .registers 2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->exps:[S

    aget-short v0, v0, p0

    return v0
.end method

.method public static getLog(S)S
    .registers 2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    aget-short v0, v0, p0

    return v0
.end method

.method public static invElem(S)S
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->exps:[S

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    aget-short v1, v1, p0

    rsub-int v1, v1, 0xff

    aget-short v0, v0, v1

    return v0

    :cond_e
    return v0
.end method

.method public static multElem(SS)S
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    return v0

    :cond_4
    if-eqz p1, :cond_3

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->exps:[S

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    aget-short v1, v1, p0

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    aget-short v2, v2, p1

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0xff

    aget-short v0, v0, v1

    return v0
.end method
