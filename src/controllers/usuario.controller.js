import { prisma } from "../database/db.js"
import {encrypt, compare} from "../helpers/bcrypt.helpers.js"
import {tokenSign, verifyToken} from "../helpers/token.helpers.js"
import  jwt, { decode } from "jsonwebtoken"

export const CreateUser = async (req, res) => {
    try {
        const {nombreUsuario, email, contrasena} = req.body;
        const contrasenaHash = await encrypt(contrasena)
        const Newusuario = await prisma.usuario.create({
            data:{
                nombreUsuario,
                email,
                contrasena: contrasenaHash
            } 
        })
        res.status(201).json({message:'Usuario nuevo creado'}) 
    } catch (error) {
        console.log(error)
        return res.status(500).json({message:'Usuario existente'})
    }
}
export const LoginUser = async (req, res) => {
    try {
        const {nombreUsuario, contrasena} = req.body
        const login = await prisma.usuario.findUnique({
            where:{
                nombreUsuario,
            }
        })
        if(!login){
            res.status(404).json({message: 'El usuario no existe'})
        }
        const checkContrasena = await compare(contrasena, login.contrasena)
        const tokenSession = await tokenSign(login)

        if(checkContrasena){
            res.status(201).json({tokenSession, message:'Proceso exitoso'})
        }
        if(!checkContrasena){
            res.status(400).json({message:'La contraseña no es valida'})
        }
    } catch (error) {
        console.log(error)
        return res.status(500).json({message:'Proceso no exitoso'})   
    }
} 
let nombreU;
export const getInfo = async (req, res) => {
    try {
        const decode = req.body.usuario
        nombreU = decode
        console.log(nombreU) 
    } catch (error) {
        console.log(error)
        res.status(400).json({message:'Not Found'})
    } 
}
export const infoUser = async (req, res) =>{
    try {
        //console.log(nombreU)
        const user = await prisma.usuario.findUnique({
            where:{
                nombreUsuario: nombreU
            }
        })
    res.status(200).json(user)
    } catch (error) {
        console.log(error)
        res.status(400).json({message:'No Found'})
    }
}
export const DeleteUser = async (req, res) =>{
    try {
        const deletes = await prisma.usuario.delete({
            where:{
                nombreUsuario
            }
        })
        res.status(200).json({message:'Cuenta eliminada'})
    } catch (error) {
        console.log(error)
        res.status(400).json({message:'Error al eliminar cuenta'})
    }
}