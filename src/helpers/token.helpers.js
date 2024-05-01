import jws from 'jsonwebtoken'

export const tokenSign = async (login) =>{
    console.log(login.id, login.email)
    return jws.sign({
        nombreUsuario: login.nombreUsuario,
        id: login.id,
        email: login.email
    },
    process.env.JWL_SECRET,
    {
        expiresIn: "5h"
    })
    
}
export const verifyToken = async (token) => {
    try {
        return jws.verify(token, process.env.JWL_SECRET);
    } catch (error) {
        return null
    }
}