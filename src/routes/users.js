const route = require("express").Router();
const { getUsers, getProfile } = require("../controllers/users");
const auth = require("../middlewares/auth");

route.get("/", auth, getUsers);
route.get("/profile", auth, getProfile);

module.exports = route;
