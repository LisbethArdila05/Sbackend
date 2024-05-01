import Router from "express";
import { CreateUser, LoginUser, DeleteUser } from "../controllers/usuario.controller.js";
import {VRegistro, VLogin} from '../validator/usuario.validator.js'

const routes = Router()

routes
.post('/registro', VRegistro, CreateUser)//crear usuario
.post('/', VLogin, LoginUser)//iniciar sesion





export default routes; 