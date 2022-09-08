var express = require('express');
var router = express.Router();
var novedadesModel = require('./../models/novedadesModel');
const cloudinary = require ('cloudinary').v2;
var nodemailer = require('nodemailer');

//cloudinary- imagenes en "nuestromenu - REACT"
router.get('/novedades', async function (req, res, next) {

    let novedades = await novedadesModel.getNovedades();
    
    novedades = novedades.map(novedades => {
      if (novedades.img_id) {
        const imagen = cloudinary.url(novedades.img_id, {
          width: 250,
          height: 250,
          crop: 'fill'
        });
        return {
          ...novedades,
          imagen
        }
      } else{
        return{
          ...novedades,
          imagen:''
        }
      }
    });
    res.json(novedades);
});

//nodemailer

router.post('/contacto', async(req, res) => {
  const mail = {
    to: 'marceldanveron@gmail.com',
    subject: 'Contacto Comidas_Online',
    html: `${req.body.nombre} Se contacta desde el sitio "Comidas ONline" y quiere mas informacion a este correo: ${req.body.email} <br>Su comentario fue: ${req.body.mensaje}</br> Su telefono de contacto es: ${req.body.telefono}`
  }

  const transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
    }
  });

  await transport.sendMail(mail)

  res.status(201).json({
    error: false,
    message: 'Su mensaje ha sido enviado. Gracias.'
  });
});

module.exports = router;