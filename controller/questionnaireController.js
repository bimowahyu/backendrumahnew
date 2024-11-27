const Questionnaire = require("../models/Questionnaire");
const Foto = require('../models/Foto')
const Admin = require("../models/Admin");
const XLSX = require("xlsx");
const fs = require("fs");
const { validationResult } = require('express-validator');
const moment = require('moment'); 

function calculateScore(data) {
  let score = 3; 
  console.log("Initial Score (Model Rumah):", score);

  if (["PLN Tanpa Meteran", "Listrik Non PLN", "Bukan Listrik"].includes(data.sumberPenerangan)) {
    score += 3;
  } else if (data.sumberPenerangan === "PLN dengan Meteran") {
    score += 0;
  }

  console.log("Step 2 - After Sumber Penerangan:", score);

  score += data.pondasi === "Tidak Layak" ? 8 : 0;
  score += data.kolom === "Tidak Layak" ? 8 : 0;
  score += data.rangkaAtap === "Tidak Layak" ? 5 : 0;
  score += data.plafon === "Tidak Layak" ? 1 : 0;
  score += data.balok === "Tidak Layak" ? 8 : 0;
  score += data.sloof === "Tidak Layak" ? 8 : 0;
  score += data.pintuJendelaKonsen === "Tidak Layak" ? 3 : 0;
  score += data.ventilasi === "Tidak Layak" ? 2 : 0;
  score += data.kondisiLantai === "Tidak Layak" ? 12 : 0;
  score += data.kondisiDinding === "Tidak Layak" ? 9 : 0;
  score += data.kondisiPenutupAtap === "Tidak Layak" ? 5 : 0;
  score += data.luasRumah < data.jumlahPenghuni * 7.2 ? 6 : 0;

  console.log("Step 3 - After Kondisi Bangunan:", score);

  if (["Kolam/Sawah/Sungai", "Lubang Tanah", "Pantai/Tanah Lapangan/Kebun", "IPAL"].includes(data.jenisTempatPembuanganAirTinja)) {
    score += 3;
  } else if (data.jenisTempatPembuanganAirTinja === "Tangki Septik") {
    score += 0;
  }

  console.log("Step 4 - After Jenis Tempat Pembuangan Air Tinja:", score);

  if (data.jenisKloset === "Leher Angsa") {
    score += 0;
  } else if (["Cubluk", "Cemplung", "Plengsengan"].includes(data.jenisKloset)) {
    score += 1;
  }

  console.log("Step 5 - After Jenis Kloset:", score);

  if (data.materialTangkiSeptik === "Dinding Beton") {
    score += 0;
  } else if (["Batu Bata", "Tanah"].includes(data.materialTangkiSeptik)) {
    score += 1;
  }
  console.log("Step 6 - After Material Tangki Septik:", score);

  if (["Mata Air", "Air Hujan", "Sumur"].includes(data.sumberAirMinum)) {
    score += 5;
  } else if (["PDAM", "SPAMDES", "Air Kemasan/Isi Ulang"].includes(data.sumberAirMinum)) {
    score += 0;
  }

  console.log("Step 7 - After Sumber Air Minum:", score);

  if (data.kepemilikanKamarMandiDanJamban === "Sendiri") {
    score += 0;
  } else if (["Tidak Ada", "Bersama/MCK Komunal"].includes(data.kepemilikanKamarMandiDanJamban)) {
    score += 2;
  }

  console.log("Step 8 - After Kepemilikan Kamar Mandi dan Jamban:", score);

  if (data.alasTangkiSeptik === "Kedap") {
    score += 0;
  } else if (data.alasTangkiSeptik === "Tidak Kedap") {
    score += 1;
  }

  console.log("Step 9 - After Alas Tangki Septik:", score);

  const kategori = score >= 45 ? "Rumah Tidak Layak Huni" : "Rumah Layak Huni";
  console.log("Final Score:", score);
  console.log("Kategori:", kategori);
  
  return { score, kategori };
};

// const createQuestionnaire = async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const data = req.body;

//   try {
//     const AdminId = req.session.adminId; 

//     if (!AdminId) {
//       return res.status(401).json({ message: "User tidak terautentikasi" });
//     }

//     const admin = await Admin.findByPk(AdminId);
//     if (!admin) return res.status(404).json({ message: "Akun admin tidak ada" });
//     const { score, kategori } = calculateScore(data);
//     const newQuestionnaire = await Questionnaire.create({ ...data, score, kategori, adminId: AdminId });
    
//     res.status(201).json({ message: "Questionnaire berhasil dibuat", questionnaire: newQuestionnaire });
//   } catch (error) {
//     console.error("Error saving questionnaire:", error.message);
//     res.status(500).json({ message: error.message });
//   }
// };

const createQuestionnaire = async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const data = req.body;

  try {
    const AdminId = req.session.adminId;

    if (!AdminId) {
      return res.status(401).json({ message: "User tidak terautentikasi" });
    }

    const admin = await Admin.findByPk(AdminId);
    if (!admin) return res.status(404).json({ message: "Akun admin tidak ada" });

    // Format tanggallahir dari dd/mm/yyyy ke yyyy-mm-dd
    if (data.tanggallahir) {
      const formattedDate = formatDate(data.tanggallahir);
      data.tanggallahir = formattedDate;

      // Hitung usia berdasarkan tanggallahir yang sudah diformat
      const birthDate = new Date(formattedDate);
      const today = new Date();
      let age = today.getFullYear() - birthDate.getFullYear();
      const monthDiff = today.getMonth() - birthDate.getMonth();

      if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
        age--;
      }

      data.usia = age;
    }

    const { score, kategori } = calculateScore(data);
    const newQuestionnaire = await Questionnaire.create({ ...data, score, kategori, adminId: AdminId });

    res.status(201).json({ message: "Questionnaire berhasil dibuat", questionnaire: newQuestionnaire });
  } catch (error) {
    console.error("Error saving questionnaire:", error.message);
    res.status(500).json({ message: error.message });
  }
};
function formatDate(dateStr) {
  const [day, month, year] = dateStr.split('/');
  return `${year}-${month}-${day}`;
}


const getQuestionnaires = async (req, res) => {
  try {
    const questionnaires = await Questionnaire.findAll({
      include: [
        {
          model: Admin,
          // as: 'surveyor',
          attributes: ['username']
        },
        {
          model: Foto,
          attributes: ['foto_rumah'] // Include the foto_rumah field from Foto
        }
      ]
    });
    
    res.status(200).json(questionnaires);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: error.message });
  }
};

// const getQuestionnaireById = async (req, res) => {
//   try {
//     const { id } = req.params;
//     const questionnaire = await Questionnaire.findOne({
//       where: { id },
//       include: { model: Admin, as: 'surveyor', attributes: ['username'] }
//     });
//     if (!questionnaire) return res.status(404).json({ message: "Data tidak ditemukan" });

//     res.status(200).json(questionnaire);
//   } catch (error) {
//     res.status(500).json({ message: error.message });
//   }
// };

//normal
// const getQuestionnaireById = async (req, res) => {
//   try {
//     const { id } = req.params;
//     const questionnaire = await Questionnaire.findOne({
//       where: { id },
//       include: { model: Admin, as: 'surveyor', attributes: ['username'] },
//     });
//     if (!questionnaire) return res.status(404).json({ message: "Data tidak ditemukan" });

//     res.status(200).json(questionnaire); // Pastikan data dikembalikan dalam format yang diinginkan
//   } catch (error) {
//     console.error("Error:", error.message);
//     res.status(500).json({ message: "Server error" });
//   }
// };


// const updateQuestionnaire = async (req, res) => {
//   const { id } = req.params;

//   try {
//     const { score, kategori } = calculateScore(req.body);
//     const [updated] = await Questionnaire.update({ ...req.body, score, kategori }, { where: { id } });

//     if (!updated) return res.status(404).json({ message: "Data tidak ditemukan" });

//     const updatedQuestionnaire = await Questionnaire.findOne({ where: { id } });
//     res.status(200).json({ message: "Data berhasil diperbarui", questionnaire: updatedQuestionnaire });
//   } catch (error) {
//     res.status(500).json({ message: error.message });
//   }
// };
const getQuestionnaireById = async (req, res) => {
  try {
    const { id } = req.params;
    const questionnaire = await Questionnaire.findOne({
      where: { id },
      include: [
        {
          model: Admin,
          // as: 'surveyor',
          attributes: ['username'],
        },
        {
          model: Foto,
          attributes: ['foto_rumah'], // Include only the foto_rumah field from Foto
        }
      ],
    });

    if (!questionnaire) return res.status(404).json({ message: "Data tidak ditemukan" });

    res.status(200).json(questionnaire);
  } catch (error) {
    console.error("Error:", error.message);
    res.status(500).json({ message: "Server error" });
  }
};
//updatebyuserinputdata
// const updateQuestionnaire = async (req, res) => {
//   const { id } = req.params;

//   try {
//     const questionnaire = await Questionnaire.findOne({ where: { id } });
//     if (!questionnaire) return res.status(404).json({ message: "Data tidak ditemukan" });

//     if (questionnaire.adminId !== req.session.adminId) {
//       return res.status(403).json({ message: "Anda tidak memiliki izin untuk mengedit data ini" });
//     }
//     const { score, kategori } = calculateScore(req.body);
//     delete req.body.namaSurveyor;
//     const [updated] = await Questionnaire.update(
//       { ...req.body, score, kategori },
//       { where: { id } }
//     );

//     if (!updated) return res.status(404).json({ message: "Data tidak ditemukan" });

//     const updatedQuestionnaire = await Questionnaire.findOne({ where: { id } });
//     res.status(200).json({ message: "Data berhasil diperbarui", questionnaire: updatedQuestionnaire });
//   } catch (error) {
//     res.status(500).json({ message: error.message });
//   }
// };
const updateQuestionnaire = async (req, res) => {
  const { id } = req.params;

  console.log("Session adminRole:", req.session.adminRole);
  console.log("Session adminId:", req.session.adminId);

  try {
    const questionnaire = await Questionnaire.findOne({ where: { id } });
    if (!questionnaire) {
      return res.status(404).json({ message: "Data tidak ditemukan" });
    }

    if (req.session.adminRole !== 'admin' && questionnaire.adminId !== req.session.adminId) {
      return res.status(403).json({ message: "Anda tidak memiliki izin untuk mengedit data ini" });
    }

    if (req.body.tanggallahir) {
      // Format tanggallahir menggunakan Moment.js
      const formattedDate = moment(req.body.tanggallahir, 'DD/MM/YYYY').format('YYYY-MM-DD');
      req.body.tanggallahir = formattedDate;

      // Hitung usia berdasarkan tanggallahir
      const birthDate = moment(req.body.tanggallahir, 'YYYY-MM-DD');
      const today = moment();
      const age = today.diff(birthDate, 'years');
      req.body.usia = age;
    }

    // Hitung skor dan kategori (asumsikan fungsi calculateScore tersedia)
    const { score, kategori } = calculateScore(req.body);
    delete req.body.namaSurveyor;

    // Update data ke database
    const [updated] = await Questionnaire.update(
      { ...req.body, score, kategori },
      { where: { id } }
    );

    if (!updated) {
      return res.status(404).json({ message: "Data tidak ditemukan" });
    }

    const updatedQuestionnaire = await Questionnaire.findOne({ where: { id } });
    res.status(200).json({ message: "Data berhasil diperbarui", questionnaire: updatedQuestionnaire });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: error.message });
  }
};

//updatenormal
// const updateQuestionnaire = async (req, res) => {
//   const { id } = req.params;
//   try {
//     const { score, kategori } = calculateScore(req.body);
//     delete req.body.namaSurveyor;
//     const [updated] = await Questionnaire.update(
//       { ...req.body, score, kategori },
//       { where: { id } }
//     );
//     if (!updated) return res.status(404).json({ message: "Data tidak ditemukan" });
//     const updatedQuestionnaire = await Questionnaire.findOne({ where: { id } });
//     res.status(200).json({ message: "Data berhasil diperbarui", questionnaire: updatedQuestionnaire });
//   } catch (error) {
//     res.status(500).json({ message: error.message });
//   }
// };

//updatelogic usia
// const updateQuestionnaire = async (req, res) => {
//   const { id } = req.params;

//   try {
//     // Calculate the age based on tanggallahir
//     if (req.body.tanggallahir) {
//       const birthDate = new Date(req.body.tanggallahir);
//       const today = new Date();
//       let age = today.getFullYear() - birthDate.getFullYear();
//       const monthDiff = today.getMonth() - birthDate.getMonth();

//       if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
//         age--;
//       }

//       // Add the calculated age to the request body
//       req.body.usia = age;
//     }

//     const { score, kategori } = calculateScore(req.body);
//     delete req.body.namaSurveyor; // Remove namaSurveyor from the request body before updating

//     // Update data except for namaSurveyor
//     const [updated] = await Questionnaire.update(
//       { ...req.body, score, kategori },
//       { where: { id } }
//     );

//     if (!updated) return res.status(404).json({ message: "Data tidak ditemukan" });

//     // Fetch the updated questionnaire to return
//     const updatedQuestionnaire = await Questionnaire.findOne({ where: { id } });
//     res.status(200).json({ message: "Data berhasil diperbarui", questionnaire: updatedQuestionnaire });
//   } catch (error) {
//     res.status(500).json({ message: error.message });
//   }
// };


//deletebyuserinputdata
// const deleteQuestionnaire = async (req, res) => {
//   const { id } = req.params;

//   try {
    
//     const questionnaire = await Questionnaire.findOne({ where: { id } });
//     if (!questionnaire) return res.status(404).json({ message: "Data tidak ditemukan" });

//     if (questionnaire.adminId !== req.session.adminId) {
//       return res.status(403).json({ message: "Anda tidak memiliki izin untuk menghapus data ini" });
//     }
//     await Foto.destroy({ where: { questionnaireId: id } });
//     const deleted = await Questionnaire.destroy({ where: { id } });
//     if (!deleted) return res.status(404).json({ message: "Data tidak ditemukan" });

//     res.status(200).json({ message: "Data berhasil dihapus" });
//   } catch (error) {
//     res.status(500).json({ message: error.message });
//   }
// };

//deletenormal
const deleteQuestionnaire = async (req, res) => {
  const { id } = req.params;

  try {
    await Foto.destroy({ where: { questionnaireId: id } });

    const deleted = await Questionnaire.destroy({ where: { id } });
    if (!deleted) return res.status(404).json({ message: "Data tidak ditemukan" });

    res.status(200).json({ message: "Data berhasil dihapus" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const downloadExcel = async (req, res) => {
  try {
    const questionnaires = await Questionnaire.findAll({
      include: {
        model: Admin,
        // as: 'surveyor',
        attributes: ['username']
      }
    });

    // Hanya sertakan kolom yang diperlukan, dengan kolom "Surveyor"
    const data = questionnaires.map(q => ({
      nomorUrut: q.nomorUrut,
      nomorRumahPeta: q.nomorRumahPadaPeta,
      namaLengkapKK: q.namaLengkapKK,
      tanggallahir: q.tanggallahir ? moment(q.tanggallahir).format('DD/MM/YYYY') : '',
      usia: q.usia,
      jenisKelamin: q.jenisKelamin,
      nomorKK: q.nomorKK,
      nomorKTP: q.nomorKTP,
      asalKTP: q.asalKTP,
      jumlahKK: q.jumlahKK,
      jumlahPenghuni: q.jumlahPenghuni,
      alamatRumah: q.alamatRumah,
      kecamatan: q.kecamatan,
      desaKelurahan: q.desaKelurahan,
      pendidikanTerakhir: q.pendidikanTerakhir,
      pekerjaan: q.pekerjaan,
      fungsiBangunan: q.fungsiBangunan,
      penghasilan: q.penghasilan,
      statusKepemilikanRumah: q.statusKepemilikanRumah,
      asetRumahDiTempatLain: q.asetRumahDiTempatLain,
      statusKepemilikanTanah: q.statusKepemilikanTanah,
      asetTanahDiTempatLain: q.asetTanahDiTempatLain,
      sumberPenerangan: q.sumberPenerangan,
      dayaListrik: q.dayaListrik,
      bantuanPerumahan: q.bantuanPerumahan,
      modelRumah: q.modelRumah,
      pondasi: q.pondasi,
      kolom: q.kolom,
      rangkaAtap: q.rangkaAtap,
      plafon: q.plafon,
      balok: q.balok,
      sloof: q.sloof,
      pintuJendelaKonsen: q.pintuJendelaKonsen,
      ventilasi: q.ventilasi,
      materialLantaiTerluas: q.materialLantaiTerluas,
      kondisiLantai: q.kondisiLantai,
      materialDindingTerluas: q.materialDindingTerluas,
      kondisiDinding: q.kondisiDinding,
      materialPenutupAtapTerluas: q.materialPenutupAtapTerluas,
      kondisiPenutupAtap: q.kondisiPenutupAtap,
      luasRumah: q.luasRumah,
      luasTanah: q.luasTanah,
      buanganAirLimbahRumahTangga: q.buanganAirLimbahRumahTangga,
      saranaPengelolaanLimbahCair: q.saranaPengelolaanLimbahCair,
      pemiliharaanSaranaPengelolaanLimbah: q.pemiliharaanSaranaPengelolaanLimbah,
      jenisTempatPembuanganAirTinja: q.jenisTempatPembuanganAirTinja,
      kepemilikanKamarMandiDanJamban: q.kepemilikanKamarMandiDanJamban,
      jumlahJamban: q.jumlahJamban,
      jenisKloset: q.jenisKloset,
      jenisTangkiSeptik: q.jenisTangkiSeptik,
      materialTangkiSeptik: q.materialTangkiSeptik,
      alasTangkiSeptik: q.alasTangkiSeptik,
      lubangPenyedotan: q.lubangPenyedotan,
      posisiTangkiSeptik: q.posisiTangkiSeptik,
      jarakTangkiSeptikDenganSumberAir: q.jarakTangkiSeptikDenganSumberAir,
      sumberAirMinum: q.sumberAirMinum,
      titikKoordinatRumah: q.titikKoordinatRumah,
      manualTitikKoordinatRumah: q.manualTitikKoordinatRumah,
      tanggalPendataan: q.tanggalPendataan,
      surveyor: q.Admin ? q.Admin.username : "Tidak tersedia",
      score: q.score,
      kategori: q.kategori,
      // Tambahkan kolom lain yang ingin ditampilkan
    }));

    const ws = XLSX.utils.json_to_sheet(data);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, "Questionnaires");

    const filePath = "./public/questionnaires.xlsx";
    XLSX.writeFile(wb, filePath);

    res.download(filePath, "questionnaires.xlsx", (err) => {
      if (err) {
        res.status(500).json({ error: err.message });
      } else {
        fs.unlinkSync(filePath);
      }
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};


// const filterQuestionnaires = async (req, res) => {
//   try {
//     const questionnaires = await Questionnaire.findAll({
//       attributes:['nomorRumahPadaPeta','namaLengkapKK','alamatRumah','kecamatan','desaKelurahan']
//     });
    
//     const layakHuni = [];
//     const tidakLayakHuni = [];

//     questionnaires.forEach((questionnaire) => {
//       if (questionnaire.kategori === "Rumah Layak Huni") {
//         layakHuni.push(questionnaire);
//       } else {
//         tidakLayakHuni.push(questionnaire);
//       }
//     });

//     res.status(200).json({
//       layakHuni,
//       tidakLayakHuni,
//     });
//   } catch (error) {
//     console.error(error);
//     res.status(500).json({ message: error.message });
//   }
// };
const filterQuestionnaires = async (req, res) => {
  try {
    const questionnaires = await Questionnaire.findAll({
      attributes: ['nomorRumahPadaPeta', 'namaLengkapKK', 'alamatRumah', 'kecamatan', 'desaKelurahan', 'kategori']
    });
    
    const layakHuni = [];
    const tidakLayakHuni = [];

    questionnaires.forEach((questionnaire) => {
      if (questionnaire.kategori === "Rumah Layak Huni") {
        layakHuni.push(questionnaire);
      } else {
        tidakLayakHuni.push(questionnaire);
      }
    });

    res.status(200).json({
      layakHuni,
      tidakLayakHuni,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: error.message });
  }
};
const getStatusRumah = async (req, res) => {
  try {
    const response = await Questionnaire.findAll({
      attributes: ['statusrumah'], 
    });
    let countBerpenghuni = 0;
    let countTidakBerpenghuni = 0;
    response.forEach((item) => {
      if (item.statusrumah === 'Berpenghuni') {
        countBerpenghuni += 1;
      } else if (item.statusrumah === 'Tidak Berpenghuni') {
        countTidakBerpenghuni += 1;
      }
    });
    return res.status(200).json({
      status: 'success',
      data: {
        Berpenghuni: countBerpenghuni,
        TidakBerpenghuni: countTidakBerpenghuni,
      },
    });
  } catch (error) {
    console.error("Error in getStatusRumah:", error);
    return res.status(500).json({
      status: 'error',
      message: 'Terjadi kesalahan pada server',
    });
  }
};
const getStatusRumah2 = async (req, res) => {
  try {
    const response = await Questionnaire.findAll({
      attributes: ['statusrumah', 'kecamatan'],
    });
    const groupedByKecamatan = {};

    response.forEach((item) => {
      const { kecamatan, statusrumah } = item;
      if (!groupedByKecamatan[kecamatan]) {
        groupedByKecamatan[kecamatan] = {
          Berpenghuni: 0,
          TidakBerpenghuni: 0,
        };
      }

      if (statusrumah === 'Berpenghuni') {
        groupedByKecamatan[kecamatan].Berpenghuni += 1;
      } else if (statusrumah === 'Tidak Berpenghuni') {
        groupedByKecamatan[kecamatan].TidakBerpenghuni += 1;
      }
    });

    return res.status(200).json({
      status: 'success',
      data: groupedByKecamatan,
    });
  } catch (error) {
    console.error("Error in getStatusRumah:", error);
    return res.status(500).json({
      status: 'error',
      message: 'Terjadi kesalahan pada server',
    });
  }
};

const getDatabacklog = async (req, res) => {
  try {
    const data = await Questionnaire.findAll();

    // Hitung backlog per kecamatan berdasarkan jumlahKK
    const backlogCounts = data.reduce((acc, record) => {
      const { kecamatan, jumlahKK } = record;

      // Pastikan hanya menghitung jika jumlahKK lebih besar dari 1
      if (jumlahKK > 1) {
        if (!acc[kecamatan]) {
          acc[kecamatan] = 0;
        }
        acc[kecamatan] += 1;  // Hitung setiap rumah dengan jumlahKK > 1
      }
      return acc;
    }, {});

    // Format data backlog untuk setiap kecamatan
    const backlogMessages = Object.entries(backlogCounts).map(
      ([kecamatan, count]) => `Total Data Backlog Kecamatan ${kecamatan} = ${count} Kk`
    );

    res.status(200).json({
      message: "Total Data Backlog per Kecamatan",
      data: backlogMessages
    });
  } catch (error) {
    console.error("Error fetching backlog data:", error);
    res.status(500).json({ error: "Failed to fetch backlog data" });
  }
};



const getAll = async (req, res) => {
  try {
    // Ambil semua data dari Questionnaire
    const questionnaires = await Questionnaire.findAll({
      attributes: ['nomorRumahPadaPeta', 'namaLengkapKK', 'alamatRumah', 'kecamatan', 'desaKelurahan', 'kategori', 'statusrumah', 'jumlahKK']
    });

    // Hitung total data backlog
    const totalBacklog = questionnaires.filter(item => item.jumlahKK > 1).length;

    // Hitung data lainnya
    const totalLayakHuni = questionnaires.filter(item => item.kategori === 'Rumah Layak Huni').length;
    const totalTidakLayakHuni = questionnaires.filter(item => item.kategori === 'Rumah Tidak Layak Huni').length;
    const totalBerpenghuni = questionnaires.filter(item => item.statusrumah === 'Berpenghuni').length;
    const totalTidakBerpenghuni = questionnaires.filter(item => item.statusrumah === 'Tidak Berpenghuni').length;

    res.status(200).json({
      message: 'Total Data Keseluruhan',
      data: {
        totalLayakHuni,
        totalTidakLayakHuni,
        totalBerpenghuni,
        totalTidakBerpenghuni,
        totalBacklog
      }
    });
  } catch (error) {
    console.error('Error fetching all data:', error);
    res.status(500).json({ error: 'Gagal mengambil semua data' });
  }
};


module.exports = {
  calculateScore,
  createQuestionnaire,
  getQuestionnaires,
  getQuestionnaireById,
  updateQuestionnaire,
  deleteQuestionnaire,
  downloadExcel,
  filterQuestionnaires,
  getStatusRumah,
  getStatusRumah2,
  getDatabacklog,
  getAll

};
