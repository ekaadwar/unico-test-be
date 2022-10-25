const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const { response } = require("../helpers/standardResponse");
const modelUsers = require("../models/users");

exports.signup = async (req, res) => {
  const data = req.body;
  if (data.email && data.password && data.firstName && data.lastName) {
    data.password = await bcrypt.hash(data.password, await bcrypt.genSalt());
    modelUsers.createUsers(data, (error) => {
      if (!error) {
        return response(res, 200, true, "Register successfully");
      } else {
        return response(
          res,
          500,
          false,
          `Register failed! Error : ${error.sqlMessage}. sql : ${error.sql}`
        );
      }
    });
  } else {
    return response(res, 400, true, "Form can't be empty.");
  }
};
