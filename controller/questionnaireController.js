const Questionnaire = require("../models/Questionnaire");
const Admin = require("../models/Admin");
const XLSX = require("xlsx");
const fs = require("fs");
const { validationResult } = require('express-validator');

function calculateScore(data) {
  let score = 3; // Start with an initial score
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

//   const { AdminId, ...data } = req.body;

//   try {
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

    // if (data.statusrumah === "kosong") {
    //   data.usia = data.usia || "-";
    //   data.jenisKelamin = data.jenisKelamin || "-";
    //   data.nomorKK = data.nomorKK || "-";
    //   data.nomorKTP = data.nomorKTP || "-";
    //   data.asalKTP = data.asalKTP || "-";
    //   data.jumlahKK = data.jumlahKK || "-";
    //   data.jumlahPenghuni = data.jumlahPenghuni || "-";
    //   data.pendidikanTerakhir = data.pendidikanTerakhir || "-";
    //   data.pekerjaan = data.pekerjaan || "-";
    //   data.fungsiBangunan = data.fungsiBangunan || "-";
    //   data.penghasilan = data.penghasilan || "-";
    //   data.statusKepemilikanRumah = data.statusKepemilikanRumah || "-";
    //   data.asetRumahDiTempatLain = data.asetRumahDiTempatLain || "-";
    //   data.statusKepemilikanTanah = data.statusKepemilikanTanah || "-";
    //   data.asetTanahDiTempatLain = data.asetTanahDiTempatLain || "-";
    //   data.sumberPenerangan = data.sumberPenerangan || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    //   data.dayaListrik = data.dayaListrik || "-";
    // }

    const { score, kategori } = calculateScore(data);
    const newQuestionnaire = await Questionnaire.create({ ...data, score, kategori, adminId: AdminId });
    
    res.status(201).json({ message: "Questionnaire berhasil dibuat", questionnaire: newQuestionnaire });
  } catch (error) {
    console.error("Error saving questionnaire:", error.message);
    res.status(500).json({ message: error.message });
  }
};


const getQuestionnaires = async (req, res) => {
  try {
    const questionnaires = await Questionnaire.findAll({
      include: { model: Admin, as: 'surveyor', attributes: ['username'] }
    });
    res.status(200).json(questionnaires);
  } catch (error) {
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
const getQuestionnaireById = async (req, res) => {
  try {
    const { id } = req.params;
    const questionnaire = await Questionnaire.findOne({
      where: { id },
      include: { model: Admin, as: 'surveyor', attributes: ['username'] }
    });
    if (!questionnaire) return res.status(404).json({ message: "Data tidak ditemukan" });

    res.status(200).json(questionnaire); // Pastikan data dikembalikan dalam format yang diinginkan
  } catch (error) {
    console.error("Error:", error.message);
    res.status(500).json({ message: "Server error" });
  }
};


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

const updateQuestionnaire = async (req, res) => {
  const { id } = req.params;

  try {
    const { score, kategori } = calculateScore(req.body);
    delete req.body.namaSurveyor;

    // Update data kecuali namaSurveyor
    const [updated] = await Questionnaire.update(
      { ...req.body, score, kategori },
      { where: { id } }
    );

    if (!updated) return res.status(404).json({ message: "Data tidak ditemukan" });

    const updatedQuestionnaire = await Questionnaire.findOne({ where: { id } });
    res.status(200).json({ message: "Data berhasil diperbarui", questionnaire: updatedQuestionnaire });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};


const deleteQuestionnaire = async (req, res) => {
  const { id } = req.params;

  try {
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
        as: 'surveyor', 
        attributes: ['username']
      }
    });

    // Hanya sertakan kolom yang diperlukan, dengan kolom "Surveyor"
    const data = questionnaires.map(q => ({
      nomorUrut: q.nomorUrut,
      nomorRumahPeta: q.nomorRumahPadaPeta,
      namaLengkapKK: q.namaLengkapKK,
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
      surveyor: q.surveyor?.username || "Tidak tersedia",
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

module.exports = {
  calculateScore,
  createQuestionnaire,
  getQuestionnaires,
  getQuestionnaireById,
  updateQuestionnaire,
  deleteQuestionnaire,
  downloadExcel,
  filterQuestionnaires

};
