const Pdf = require('../models/Pdf');
const multer = require("multer");
const path = require("path");

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "uploads/pdf");
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + path.extname(file.originalname));
  }
});

const upload = multer({ storage });

const uploadPdf = async (req, res) => {
  try {
    if (!req.file) {
      return res.status(400).json({ message: "No file uploaded" });
    }
    const filePath = `uploads/pdf/${req.file.filename}`;
    const response = await Pdf.create({
      filename: req.file.filename,
      path: filePath
    });
    res.status(201).json({ message: "File uploaded successfully", data: response });
  } catch (error) {
    console.error("File upload failed:", error.message);
    res.status(500).json({ message: "File upload failed", error: error.message });
  }
};
const getPdfList = async (req, res) => {
    try {
      const pdfs = await Pdf.findAll();
      res.status(200).json({ message: "PDF list fetched successfully", data: pdfs });
    } catch (error) {
      console.error("Error fetching PDF list:", error.message);
      res.status(500).json({ message: "Error fetching PDF list", error: error.message });
    }
  };

  const downloadPdf = async (req, res) => {
    const { filename } = req.params; // Assuming the filename is passed as a parameter
  
    try {
      const pdf = await Pdf.findOne({ where: { filename } });
      if (!pdf) {
        return res.status(404).json({ message: "PDF not found" });
      }
  
      const filePath = join(__dirname, '..', pdf.path); // Join path to the file
  
      // Check if the file exists before sending the response
      if (!fs.existsSync(filePath)) {
        return res.status(404).json({ message: "File not found" });
      }
  
      res.download(filePath, pdf.filename, (err) => {
        if (err) {
          console.error("Error downloading file:", err.message);
          res.status(500).json({ message: "File download failed", error: err.message });
        }
      });
    } catch (error) {
      console.error("Error downloading PDF:", error.message);
      res.status(500).json({ message: "Error downloading PDF", error: error.message });
    }
  };

module.exports = {
  uploadPdf,
  upload,
  getPdfList,
  downloadPdf
};
