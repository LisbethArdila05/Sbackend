import { SerialPort } from "serialport";
import { ReadlineParser } from "@serialport/parser-readline";
import { EventEmitter } from "events";

    export const Port = new SerialPort ({path:'COM3', baudRate: 9600 });
    export const Parser = Port.pipe(new ReadlineParser({delimiter: '\r\n'}));
    let arduinoData
    
    const dataEmitter = new EventEmitter();
    Port.on('error',(error) => {
        console.log('Parece que Arduino no esta en la sala', error)
    })

    Port.on('open',() => {
            console.log('Conexion Arduino')
    });
    //recibe datos de arduino y los envia al controlador 
     const getDataArduino = () => {
        Parser.on('data', async (line) => {
            try {
                arduinoData = JSON.parse(line.trim());
                dataEmitter.emit('dataReceived', arduinoData)
            } catch (error) {
                console.log(error)
            } finally { }
        });
    }
    dataEmitter.on('dataReceived', (data) =>{
        //console.log(data)
    })
    getDataArduino();

    export default dataEmitter;