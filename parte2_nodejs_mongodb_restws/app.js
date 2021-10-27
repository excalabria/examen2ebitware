global.TextEncoder = require("util").TextEncoder;
global.TextDecoder = require("util").TextDecoder;
const MongoClient = require('mongodb').MongoClient;
const express = require('express');
const url = "mongodb://localhost:27017/";
const app = express();
const port = 3000;
var last_id = 0;
var db = undefined;
var dbo = undefined;
app.use(express.json());

async function main() {
    console.log("Iniciando");
    try {
        db = await MongoClient.connect(url);
        dbo = db.db("clientes");
        await dbo.collection("customers").createIndexes([{key:{"Cliente_ID":1},unique:true},{key:{"Nombre_Usuario":1},unique:true},{key:{"Correo_Electronico":1},unique:true}]);
        app.listen(port, async () => {
            await getLastIndex();
            console.log(`Servicio activo en: http://localhost:${port}`);
        });
    } catch {
        console.log("Servidor no iniciado");
    }
};

app.get("/NutriNET/Cliente", async (req, res) => {
    var r;
    try {
        var result = await dbo.collection("customers").find({}).toArray();
        r = {
            Cve_Error: 0,
            Cve_Mensaje: "Proceso Exitoso.",
            Clientes: result
        };
        res.json(r);
    }  catch (err){
        if(!err.code) {
            err.code = 5;
        }
        r = {
            Cve_Error: -1 * err.code,
            Cve_Mensaje: err.message
        };
        res.json(r);
    }
      
});

app.get("/NutriNET/Cliente/:custID", async (req, res) => {
    try {
        var Cliente_ID = req.params.custID;
        var r;
        if(isNaN(Cliente_ID)){
            r = {
                Cve_Error: -2,
                Cve_Mensaje: "Cliente_ID incorrecto."
            };
            res.json(r);
            return;
        }
        Cliente_ID = 1*Cliente_ID;
        var result = await dbo.collection("customers").findOne({"Cliente_ID": Cliente_ID});
        if(result){
            r = {
                Cve_Error: 0,
                Cve_Mensaje: "Proceso Exitoso.",
                Cliente: result
            };
        } else {
            r = {
                Cve_Error: -3,
                Cve_Mensaje: "Cliente_ID no existe.",
            };
        }
        res.json(r);
    }  catch (err){
        if(!err.code) {
            err.code = 5;
        }
        r = {
            Cve_Error: -1 * err.code,
            Cve_Mensaje: err.message
        };
        res.json(r);
    }
      
});


app.post("/NutriNET/Cliente", async (req, res) => {
    var myobj = req.body;
    var fecha = new Date();
    var r;
    var nreg = {
        Cliente_ID: last_id + 1,
        Nombre_Usuario: checkValue(myobj.Nombre_Usuario,"string",undefined),
        "Contraseña": checkValue(myobj["Contraseña"],"string",undefined),
        Nombre: checkValue(myobj.Nombre,"string",undefined),
        Apellidos: checkValue(myobj.Apellidos,"string",undefined),
        Correo_Electronico: checkValue(myobj.Correo_Electronico,"string",undefined),
        Edad: checkValue(myobj.Edad,"number",0),
        Estatura: checkValue(myobj.Edad,"number",0),
        Peso: checkValue(myobj.Peso,"number",0),
        IMC: checkValue(myobj.IMC,"number",0),
        GEB: checkValue(myobj.GEB,"number",0),
        ETA: checkValue(myobj.ETA,"number",0),
        Fecha_Creacion: fecha,
        Fecha_Actualizacion: fecha
    };
    if(!nreg.Nombre_Usuario||!nreg["Contraseña"]||!nreg.Nombre||!nreg.Apellidos||!nreg.Correo_Electronico){
        r = {
            Cve_Error: -1,
            Cve_Mensaje: "Faltan datos de entrada o están incorrectos."
        };
        res.json(r);
    }
    try {
        await dbo.collection("customers").insertOne(nreg)
        last_id +=1;
        await updateID();
        r = {
            Cve_Error: 0,
            Cve_Mensaje: "Proceso Exitoso.",
            Cliente_ID: nreg.Cliente_ID
        };
        res.json(r);
    }  catch (err){
        if(!err.code) {
            err.code = 5;
        }
        r = {
            Cve_Error: -1 * err.code,
            Cve_Mensaje: err.message
        };
        res.json(r);
    }
      
});

app.put("/NutriNET/Cliente/:custID", async (req, res) => {
    var Cliente_ID = req.params.custID;
    var r;
    if(isNaN(Cliente_ID)){
        r = {
            Cve_Error: -2,
            Cve_Mensaje: "Cliente_ID incorrecto."
        };
        res.json(r);
        return;
    }
    Cliente_ID = 1*Cliente_ID;
    var myobj = req.body;
    var fecha = new Date();
    var nreg = {
        Nombre_Usuario: checkValue(myobj.Nombre_Usuario,"string",undefined),
        "Contraseña": checkValue(myobj["Contraseña"],"string",undefined),
        Nombre: checkValue(myobj.Nombre,"string",undefined),
        Apellidos: checkValue(myobj.Apellidos,"string",undefined),
        Correo_Electronico: checkValue(myobj.Correo_Electronico,"string",undefined),
        Edad: checkValue(myobj.Edad,"number",undefined),
        Estatura: checkValue(myobj.Edad,"number",undefined),
        Peso: checkValue(myobj.Peso,"number",undefined),
        IMC: checkValue(myobj.IMC,"number",undefined),
        GEB: checkValue(myobj.GEB,"number",undefined),
        ETA: checkValue(myobj.ETA,"number",undefined),
        Fecha_Actualizacion: fecha
    };
    var strjson = JSON.stringify(nreg);
    nreg = JSON.parse(strjson);
    try {
        var result = await dbo.collection("customers").updateOne({"Cliente_ID":Cliente_ID},{$set:nreg});
        if(result.matchedCount==1){
            r = {
                Cve_Error: 0,
                Cve_Mensaje: "Proceso Exitoso.",
                Cliente_ID: nreg.Cliente_ID
            };
        } else {
            r = {
                
                Cve_Error: -3,
                Cve_Mensaje: "Cliente_ID no existe."
            };
        }
        
        res.json(r);
    }  catch (err){
        if(!err.code) {
            err.code = 5;
        }
        r = {
            Cve_Error: -1 * err.code,
            Cve_Mensaje: err.message
        };
        res.json(r);
    }
      
});

async function getLastIndex(){
    try {
        var result = await dbo.collection("ids").findOne({"_id":0});
        if(result!=undefined){
            last_id = result.CustomerID;
        } else {
            await createID();
        }
    }  catch (err){
        console.log(err);
    }
}

async function createID(){
    await dbo.collection("ids").insertOne({"_id":0,"CustomerID":last_id});
}

async function updateID(){
    await dbo.collection("ids").updateOne({"_id":0},{$set:{"CustomerID":last_id}});
}

function checkValue(dato, tipo, predeterminado){
    if(dato==undefined){
        return predeterminado;
    }
    if(typeof dato!=tipo){
        return predeterminado;
    }
    if(tipo=="string"&&dato.length==0){
        return predeterminado;
    }
    return dato;
}

main();