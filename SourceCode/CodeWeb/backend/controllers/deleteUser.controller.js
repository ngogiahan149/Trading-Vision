const User = require("../models/User");
const Favorite = require("../models/Favorite");
const Reminder = require("../models/Reminder");
const CLIENT_URL = "http://ec2-3-14-136-159.us-east-2.compute.amazonaws.com/";

exports.deleteUser = async (req, res) => {
	await User.findByIdAndDelete(req.user._id).lean();
	await Reminder.deleteMany({
		UserId: req.user._id,
	}).lean();
	await Favorite.deleteMany({
		UserId: req.user._id,
	}).lean();
	req.logout();
	req.session.destroy();
	res.redirect(CLIENT_URL + "login");
};
