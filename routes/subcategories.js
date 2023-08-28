var express = require('express');
var router = express.Router();
var pool=require("./pool")
var upload=require("./multer")

/* GET users listing. */
router.post('/savesubcategory',upload.single("icon"), function(req, res, next) {
    pool.query("insert into subcategories(categoryid,subcategoryname,description,icon) values(?,?,?,?)",[req.body.categoryid,req.body.subcategoryname,req.body.description,req.myfilename],function(error,result){
        if(error){
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }
    })
});

router.get('/displayallsubcategories',function(req, res, next) {
    pool.query("select S.*,(select categoryname from categories C where C.categoryid=S.categoryid) as categoryname from subcategories S",function(error,result){
        if(error){
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/displayallsubcategoriesbycategories',function(req, res, next) {
    pool.query("select S.*,(select categoryname from categories C where C.categoryid=S.categoryid) as categoryname from subcategories S where S.categoryid=?",[req.body.categoryid],function(error,result){
        if(error){
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/editsubcategory',function(req, res, next) {
    pool.query("update subcategories set categoryid=?,subcategoryname=?,description=? where subcategoryid=?",[req.body.categoryid,req.body.subcategoryname,req.body.description,req.body.subcategoryid],function(error,result){
        if(error){
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }       
    })
})

router.post('/editicon',upload.single("icon"),function(req, res, next) {
    pool.query("update subcategories set icon=? where subcategoryid=?",[req.myfilename,req.body.subcategoryid],function(error,result){
        if(error){
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }       
    })
})

router.post('/deletesubcategory',function(req, res, next) {
    pool.query("delete from subcategories where subcategoryid=?",[req.body.subcategoryid],function(error,result){
        if(error){
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }       
    })
})

module.exports = router;