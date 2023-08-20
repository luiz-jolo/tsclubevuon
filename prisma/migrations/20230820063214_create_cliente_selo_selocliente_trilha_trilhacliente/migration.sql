-- CreateTable
CREATE TABLE "cliente" (
    "id" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "fotourl" TEXT,
    "seloid" TEXT,
    "pontos" INTEGER NOT NULL DEFAULT 0,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "cliente_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "selo" (
    "id" TEXT NOT NULL,
    "titulo" TEXT NOT NULL,
    "fotourl" TEXT,
    "capafotourl" TEXT,

    CONSTRAINT "selo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "selocliente" (
    "clientid" TEXT NOT NULL,
    "seloid" TEXT,

    CONSTRAINT "selocliente_pkey" PRIMARY KEY ("clientid")
);

-- CreateTable
CREATE TABLE "trilha" (
    "id" TEXT NOT NULL,
    "titulo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "tipo" TEXT NOT NULL,
    "fotourl" TEXT,
    "createdAt" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "seloid" TEXT,

    CONSTRAINT "trilha_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "trilhacliente" (
    "clientid" TEXT NOT NULL,
    "trilhaid" TEXT,

    CONSTRAINT "trilhacliente_pkey" PRIMARY KEY ("clientid")
);
