import  Router  from "express";
import { getPlantaNombre } from "../controllers/planta.controller.js";

const routes = Router()

routes

.get('/', getPlantaNombre)

export default routes;