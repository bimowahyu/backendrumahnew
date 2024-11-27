const Foto = require('../models/Foto');
const Questionnaire = require('../models/Questionnaire');
const multer = require('multer');
const path = require('path');
const fs = require('fs')

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'uploads/images');
  },
  filename: (req, file, cb) => {
    cb(null, `${req.body.questionnaireId}_${Date.now()}${path.extname(file.originalname)}`);
  },
});

const fileFilter = (req, file, cb) => {
  if (file.mimetype.startsWith('image/')) {
    cb(null, true);
  } else {
    cb(new Error('File harus berupa gambar!'), false);
  }
};

const upload = multer({ storage, fileFilter });


const uploadFoto = async (req, res) => {
  try {
    const { questionnaireId } = req.body;
    const questionnaire = await Questionnaire.findByPk(questionnaireId, {
      attributes: ['namaLengkapKK', 'alamatRumah'],
    });

    if (!questionnaire) {
      return res.status(404).json({ message: 'Questionnaire tidak ditemukan' });
    }
    const existingFoto = await Foto.findOne({ where: { questionnaireId } });

    if (existingFoto) {
      const oldFotoPath = path.join(__dirname, '..', 'uploads', 'images', existingFoto.foto_rumah);
      if (fs.existsSync(oldFotoPath)) {
        fs.unlinkSync(oldFotoPath);
      }
      existingFoto.foto_rumah = `images/${req.file.filename}`;
      await existingFoto.save();

      return res.status(200).json({
        message: 'Foto berhasil diperbarui',
        data: {
          foto: existingFoto,
          questionnaire: {
            namaLengkapKK: questionnaire.namaLengkapKK,
            alamatRumah: questionnaire.alamatRumah,
          },
        },
      });
    }
    const fotoPath = `images/${req.file.filename}`;
    const newFoto = await Foto.create({
      questionnaireId,
      foto_rumah: fotoPath,
    });

    res.status(201).json({
      message: 'Foto berhasil diunggah',
      data: {
        foto: newFoto,
        questionnaire: {
          namaLengkapKK: questionnaire.namaLengkapKK,
          alamatRumah: questionnaire.alamatRumah,
        },
      },
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Gagal mengunggah foto' });
  }
};


  const getFotoByQuestionnaireId = async (req, res) => {
    try {
      const { id } = req.params; 
      const foto = await Foto.findOne({
        where: { questionnaireId: id },
      });
  
      if (!foto) {
        return res.status(404).json({ message: 'Foto tidak ditemukan' });
      }

      res.status(200).json({
        message: 'Foto ditemukan',
        data: {
          foto_rumah: foto.foto_rumah,
          foto_url: path.join(__dirname, '..', 'uploads', 'images', foto.foto_rumah),
        },
      });
    } catch (error) {
      console.error(error);
      res.status(500).json({ message: 'Gagal mengambil foto' });
    }
  };
  
  
  module.exports = {
    uploadFoto,
    upload, 
    getFotoByQuestionnaireId
  };
  