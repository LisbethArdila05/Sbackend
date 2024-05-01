import { Router } from "express";
import { GetDataDB, postData, GetFirst} from "../controllers/sensor.controller.js";

const routes = Router();

routes
.post('/', postData)
.get('/', GetDataDB)
.get('/primer', GetFirst)
  
export default routes;     