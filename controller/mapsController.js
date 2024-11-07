
const { where } = require("sequelize");
const Questionnaire = require("../models/Questionnaire");

const getAllMaps = async (req,res) =>{
    try {
        const response = await Questionnaire.findAll({
            attributes: ['id', 'namaLengkapKK', 'titikKoordinatRumah','manualTitikKoordinatRumah','alamatRumah','kecamatan'],
        }) 
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json(error.message)
    }
}

const getMapById = async (req,res) =>{
    try {
        const { id } = req.params;
        const response = await Questionnaire.findOne({
            where:{id}
            ,attributes: ['id', 'namaLengkapKK', 'titikKoordinatRumah','manualTitikKoordinatRumah','alamatRumah','kecamatan']
        })
        return res.status(200).json(response)
    } catch (error) {
        return res.status(500).json(error.message)
    }
}

module.exports = {
    getAllMaps,
    getMapById
}