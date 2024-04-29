import { Router } from "express";
import { GetDataDB, postData, GetFirst, getInfo} from "../controllers/sensor.controller.js";

const routes = Router();

routes
.post('/', postData)
.get('/', GetDataDB)
.get('/primer', GetFirst)
.post('/info', getInfo)



export default routes;     