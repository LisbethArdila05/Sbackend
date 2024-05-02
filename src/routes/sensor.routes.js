import { Router } from "express";
import { GetDataDB, postData, GetFirst} from "../controllers/sensor.controller.js";

const routes = Router();

routes
.post('/', postData)
.get('/:id', GetDataDB)
.get('/primer/:id', GetFirst)
  
export default routes;     