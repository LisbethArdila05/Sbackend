import express  from "express";
import cors from "cors";
import bodyParser from "body-parser";
import usuario from "./src/routes/usuario.routes.js"
import planta from "./src/routes/planta.routes.js"
import sensorArduino from "./src/routes/sensor.routes.js"


 
const app = express()
app.use(bodyParser.json())
app.use(express.json())
app.use(cors({
    origin: 'http://localhost:8100',
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    allowedHeaders: 'Content-Type,Authorization'
}))

const PORT = process.env.PORT || 3000;

app.use('/usuario', usuario),
app.use('/planta', planta),
app.use('/sensor', sensorArduino)
//si no encuentra la ruta o si la ruta no existe
app.use((req, res, next) => {
    res.status(404).json({message:'Not Found endpoint'})
})
app.listen(PORT, () => {
    console.log(`port ${PORT}`)
}) 
