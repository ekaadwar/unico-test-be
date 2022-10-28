const modelUsers = require("../models/users");
const { response } = require("../helpers/standardResponse");

exports.getUsers = (req, res) => {
  const condition = req.query;

  modelUsers.getUserByCond((error, resUser) => {
    if (!error) {
      if (resUser.length > 0) {
        return response(res, 200, true, "Users List", resUser);
      } else {
        response(res, 404, false, `Data not found.`);
      }
    } else {
      response(res, 500, false, `An error occured : ${error}`);
    }
  });
};

exports.getProfile = (req, res) => {
  const id = req.authUser.id;
  modelUsers.getUserById(id, (error, results) => {
    if (!error) {
      return response(res, 200, true, "Get profile successfuly!", results[0]);
    } else {
      return response(
        res,
        404,
        false,
        `Data not found! error : ${error.sqlMessage}`
      );
    }
  });
};
