import Router from "express";
import { CreateUser, LoginUser, infoUser, getInfo, DeleteUser } from "../controllers/usuario.controller.js";
import {VRegistro, VLogin} from '../validator/usuario.validator.js'

const routes = Router()

routes
.post('/registro', VRegistro, CreateUser)//crear usuario
.post('/', VLogin, LoginUser)//iniciar sesion
.post('/info', getInfo)
.get('/obtener', infoUser)




export default routes; 