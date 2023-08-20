import { PrismaClient } from "@prisma/client"
import fastify from "fastify"
//import {z} from 'zod'

const app = fastify()

const prisma = new PrismaClient()

app.get('/cliente', async () => {
    const clientes = await prisma.cliente.findMany()

    return { clientes }
})

app.get('/selo', async () => {
    const selos = await prisma.selo.findMany()

    return { selos }
})

app.get('/selocliente', async () => {
    const seloscliente = await prisma.selocliente.findMany()

    return { seloscliente }
})

app.get('/trilha', async () => {
    const trilhas = await prisma.trilha.findMany()

    return { trilhas }
})

// app.post('/cliente', (request) =>{
//     const {}
// })
app.listen({
    host: '0.0.0.0',
    port: process.env.PORT ? Number(process.env.PORT) : 3333
}).then(() => {
    console.log('HTTP Server Running')
})