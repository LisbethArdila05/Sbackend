import { prisma } from "../database/db.js";

export const getPlantaNombre = async (req, res) => {
    try {
        const planta = await prisma.planta.findMany()
        res.status(200).json({planta})
    } catch (error) {
        console.log(error)
        res.status(400).json({message:'No existe'})
    }
}

