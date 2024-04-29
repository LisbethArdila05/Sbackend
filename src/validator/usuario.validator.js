import {check} from "express-validator"
import {ValResult} from "../helpers/validator.helpers.js"

export const VRegistro = [
    check('nombreUsuario')
    .exists()
    .notEmpty(),
    check('email')
    .exists()
    .isEmail()
    .notEmpty(),
    check('contrasena')
    .exists()
    .trim()
    .notEmpty()
    .isLength({min: 8}),
    (req, res, next) => {
        ValResult(req, res, next)
    }
]
export const VLogin = [
    check('nombreUsuario')
    .exists()
    .notEmpty(),
    check('contrasena')
    .exists()
    .trim()
    .notEmpty()
    .isLength({min:8}),
    (req, res, next) => {
        ValResult(req, res, next)
    }
]