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
