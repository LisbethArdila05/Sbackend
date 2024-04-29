import bcrypt from "bcryptjs"

export const encrypt = (textPplaint) => {
    const hash = bcrypt.hash(textPplaint, 10)
    return hash
}
export const compare = async(passwordPlain, hashPassword) => {
    return await bcrypt.compare(passwordPlain, hashPassword)
}