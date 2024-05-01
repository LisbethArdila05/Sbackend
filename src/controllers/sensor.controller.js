import { prisma } from "../database/db.js";
import dataEmitter from "../../arduinoConecct.js";

let datosArduino
dataEmitter.on('dataReceived', async(data) => {
    try {
        datosArduino = data
    } catch (error) {
        console.log('error en la conexión',error);
    }
}); 
let nombreU;
export const getInfo = async (req, res) => {
    try {
        const decode = req.body.usuario
        nombreU = decode
        //console.log(nombreU) 
    } catch (error) {
        console.log(error)
        res.status(400).json({message:'Not Found'})
    } 
}    
export const postData = async (req, res) => {
    let {idPlanta, idUser} = req.body
    idPlanta = Number(idPlanta)
    idUser = Number(idUser)
    try {
        const NewsensorData = await prisma.sensor.create({
            data: {
                sHumedad: datosArduino.humedad,
                sTemperaturaC: datosArduino.temperaturaC,
                sTemperaturaF: datosArduino.temperaturaF,
                sHumedadS: datosArduino.humedadS,
                fecha: new Date(), 
                idtipoPlanta: idPlanta,
                idUser: idUser
            }
        });
        res.status(200).json({message:'Analisis creado', NewsensorData})
    } catch (error) {
        res.status(400).json({message:'Error en el analisis'})
        console.log(error)
    }
}
export const GetDataDB = async (req, res) => {
    try {
        const GetSensor = await prisma.sensor.findMany({
            where:{
                nombreUser: nombreU
            },
            include:{
                tipoPlanta: true
            }
        })
        res.status(200).json({GetSensor})
    } catch (error) {
        res.status(500).json({message:'Datos no existentes'})
    }
}
export const GetFirst = async (req, res) => {
    try {
        const GetFirstsensor = await prisma.sensor.findFirst({
            where:{
                nombreUser:nombreU
            },
            orderBy:{
                fecha: 'desc'
            },
            include:{
                tipoPlanta : true
            }
        })
        res.status(200).json({GetFirstsensor})
    } catch (error) {
        res.status(500).json({message: 'Datos no existentes'})
    }
}

