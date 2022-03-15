// Import modules
const express = require("express");
const router = express.Router();
const {
	getAllCompanyInfo,
	getCompanyInfoByTicker,
} = require("../controllers/companyinfo.controller");

// @desc Get all company info
// @method GET
// @route /api/companyinfo
router.route("/").get(getAllCompanyInfo);

// @desc Get company info by ticker
// @method GET
// @route /api/companyinfo/:ticker
router.route("/:ticker").get(getCompanyInfoByTicker);

module.exports = router;
