var express = require('express');
var router = express.Router();
var pool=require("./pool")

/* GET users listing. */
router.post('/checkuser', function(req, res, next) {
  pool.query("select * from users where mobileno=?",[req.body.mobileno],function(error,result){
    if(error){
      console.log(error)
      res.status(500).json({result:false})
  }else{
    if(result.length==1){
         res.status(200).json({result:true,data:result})
    }else{
      console.log(error)
      res.status(500).json({result:false})
    }
  }
  })
});

router.post('/insertuser', function(req, res, next) {
  pool.query("insert into users(mobileno,emailid,firstname,lastname) values(?,?,?,?)",[req.body.mobileno,req.body.emailid,req.body.firstname,req.body.lastname],function(error,result){
    if(error){
      res.status(500).json({result:false})
  }else{
         res.status(200).json({result:true})
  }
  })
});

router.post('/addaddress', function (req, res, next) {
  console.log(req.body)
  pool.query("insert into usersaddress(mobileno,emailid,pincode,state,city,firstname,lastname,address,landmark,deliverymobileno)values(?,?,?,?,?,?,?,?,?,?)", [req.body.mobileno, req.body.emailid, req.body.pincode, req.body.state, req.body.city, req.body.firstname, req.body.lastname, req.body.address, req.body.landmark, req.body.dmobileno], function (error, result) {

    if (error) {
      console.log(error)
      res.status(500).json({ result: false })
    }
    else {
      res.status(200).json({ result: true })
    }


  })
});

router.post('/getAddress', function (req, res, next) {
  console.log(req.body)
  pool.query("select * from usersaddress where mobileno=?", [req.body.mobileno], function (error, result) {
    if (error) {
      res.status(500).json({ result: false, data: [] })
    }
    else {
      res.status(200).json({ result: true, data: result })
    }
  })
});

module.exports = router;
