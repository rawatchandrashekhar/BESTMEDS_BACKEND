var express = require('express');
var router = express.Router();
var pool=require("./pool")
var upload=require("./multer")

/* GET users listing. */
router.post('/saveproduct',upload.single("icon"), function(req, res, next) {
    console.log(req.body)
    pool.query("insert into products(categoryid,subcategoryid,brandid,productname,price,offerprice,offertype,stock,rating,salestatus,description,status,icon) values(?,?,?,?,?,?,?,?,?,?,?,?,?)",[req.body.categoryid,req.body.subcategoryid,req.body.brandid,req.body.productname,req.body.price,req.body.offerprice,req.body.offertype,req.body.stock,req.body.rating,req.body.salestatus,req.body.description,req.body.status,req.myfilename],function(error,result){
        if(error){
            console.log(error)
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }
    })
});

router.post('/savemoreimages',upload.any(), function(req, res, next) {
    console.log(req.body)
    var q="insert into productimages(categoryid,subcategoryid,brandid,productid,images) values ?"
    pool.query(q,[req.files.map((item)=>[req.body.categoryid,req.body.subcategoryid,req.body.brandid,req.body.productid,item.filename])],function(error,result){
        if(error){
            console.log(error)
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }
    })
});

router.get('/displayallproductimages',function(req, res, next) {
    pool.query("select PI.*,(select categoryname from categories C where C.categoryid=PI.categoryid) as categoryname,(select subcategoryname from subcategories S where S.subcategoryid=PI.subcategoryid) as subcategoryname,(select brandname from brands B where B.brandid=PI.brandid) as brandname,(select productname from products P where P.productid=PI.productid) as productname from productimages PI",function(error,result){
        if(error){
            console.log(error)
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/fetchproductmoreimages',upload.any(), function(req, res, next) {
    console.log(req.body)
    pool.query("select * from productimages where productid=?",[req.body.productid],function(error,result){
        if(error){
            console.log(error)
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.get('/displayallproducts',function(req, res, next) {
    pool.query("select P.*,(select categoryname from categories C where C.categoryid=P.categoryid) as categoryname,(select subcategoryname from subcategories S where S.subcategoryid=P.subcategoryid) as subcategoryname,(select brandname from brands B where B.brandid=P.brandid) as brandname from products P",function(error,result){
        if(error){
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/searchproducts',function(req, res, next) {
    pool.query("select * from products where productname=?",[req.body.productname],function(error,result){
        if(error){
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/displayallproductsbysalestatus',function(req, res, next) {
    pool.query("select P.*,(select categoryname from categories C where C.categoryid=P.categoryid) as categoryname,(select subcategoryname from subcategories S where S.subcategoryid=P.subcategoryid) as subcategoryname,(select brandname from brands B where B.brandid=P.brandid) as brandname from products P where P.salestatus=?",[req.body.salestatus],function(error,result){
        if(error){
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/displayallproductsbysubcategoryid',function(req, res, next) {
    pool.query("select P.*,(select categoryname from categories C where C.categoryid=P.categoryid) as categoryname,(select subcategoryname from subcategories S where S.subcategoryid=P.subcategoryid) as subcategoryname,(select brandname from brands B where B.brandid=P.brandid) as brandname from products P where P.subcategoryid=?",[req.body.subcategoryid],function(error,result){
        if(error){
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/displayallproductsbycategoryid',function(req, res, next) {
    pool.query("select P.*,(select categoryname from categories C where C.categoryid=P.categoryid) as categoryname,(select subcategoryname from subcategories S where S.subcategoryid=P.subcategoryid) as subcategoryname,(select brandname from brands B where B.brandid=P.brandid) as brandname from products P where P.categoryid=?",[req.body.categoryid],function(error,result){
        if(error){
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/displayallproductsbybrandid',function(req, res, next) {
    pool.query("select P.*,(select categoryname from categories C where C.categoryid=P.categoryid) as categoryname,(select subcategoryname from subcategories S where S.subcategoryid=P.subcategoryid) as subcategoryname,(select brandname from brands B where B.brandid=P.brandid) as brandname from products P where P.brandid=?",[req.body.brandid],function(error,result){
        if(error){
            res.status(500).json({data:[]})
        }else{
            res.status(200).json({data:result})
        }
    })
});

router.post('/editproduct',function(req, res, next) {
    pool.query("update products set categoryid=?,subcategoryid=?,brandid=?,productname=?,price=?,offerprice=?,offertype=?,stock=?,rating=?,salestatus=?,description=?,status=? where productid=?",[req.body.categoryid,req.body.subcategoryid,req.body.brandid,req.body.productname,req.body.price,req.body.offerprice,req.body.offertype,req.body.stock,req.body.rating,req.body.salestatus,req.body.description,req.body.status,req.body.productid],function(error,result){
        if(error){
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }       
    })
})

router.post('/editicon',upload.single("icon"),function(req, res, next) {
    pool.query("update products set icon=? where productid=?",[req.myfilename,req.body.productid],function(error,result){
        if(error){
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }       
    })
})

router.post('/deleteproduct',function(req, res, next) {
    pool.query("delete from products where productid=?",[req.body.productid],function(error,result){
        if(error){
            res.status(500).json({result:false})
        }else{
            res.status(200).json({result:true})
        }       
    })
})

module.exports = router;