var express = require('express');
var router = express.Router();
var pool = require("./pool")
var upload = require("./multer")

/* GET users listing. */
router.post('/savebrand', upload.single("icon"), function (req, res, next) {
    console.log(req.body)
    pool.query("insert into brands(categoryid,subcategoryid,brandname,status,icon) values(?,?,?,?,?)", [req.body.categoryid, req.body.subcategoryid, req.body.brandname, req.body.status, req.myfilename], function (error, result) {
        if (error) {
            console.log(error)
            res.status(500).json({ result: false })
        } else {
            res.status(200).json({ result: true })
        }
    })
});

router.get('/displayallbrands', function (req, res, next) {
    pool.query("select B.*,(select categoryname from categories C where C.categoryid=B.categoryid) as categoryname,(select subcategoryname from subcategories C where C.subcategoryid=B.subcategoryid) as subcategoryname from brands B", function (error, result) {
        if (error) {
            res.status(500).json({ data: [] })
        } else {
            res.status(200).json({ data: result })
        }
    })
});

router.get('/displayalltopbrands', function (req, res, next) {
    pool.query("select B.*,(select categoryname from categories C where C.categoryid=B.categoryid) as categoryname,(select subcategoryname from subcategories C where C.subcategoryid=B.subcategoryid) as subcategoryname from brands B where B.status='Top Brand' group by B.brandid", function (error, result) {
        if (error) {
            res.status(500).json({ data: [] })
        } else {
            res.status(200).json({ data: result })
        }
    })
});

router.post('/displayallbrandsbysubcategories', function (req, res, next) {
    pool.query("select B.*,(select categoryname from categories C where C.categoryid=B.categoryid) as categoryname,(select subcategoryname from subcategories C where C.subcategoryid=B.subcategoryid) as subcategoryname from brands B where B.subcategoryid=?", [req.body.subcategoryid], function (error, result) {
        if (error) {
            res.status(500).json({ data: [] })
        } else {
            res.status(200).json({ data: result })
        }
    })
});

router.post('/editbrand', function (req, res, next) {
    pool.query("update brands set categoryid=?,subcategoryid=?,brandname=?,status=? where brandid=?", [req.body.categoryid, req.body.subcategoryid, req.body.brandname, req.body.status, req.body.brandid], function (error, result) {
        if (error) {
            res.status(500).json({ result: false })
        } else {
            res.status(200).json({ result: true })
        }
    })
})

router.post('/editicon', upload.single("icon"), function (req, res, next) {
    pool.query("update brands set icon=? where brandid=?", [req.myfilename, req.body.brandid], function (error, result) {
        if (error) {
            res.status(500).json({ result: false })
        } else {
            res.status(200).json({ result: true })
        }
    })
})

router.post('/deletebrand', function (req, res, next) {
    pool.query("delete from brands where brandid=?", [req.body.brandid], function (error, result) {
        if (error) {
            res.status(500).json({ result: false })
        } else {
            console.log(result)
            res.status(200).json({ result: true })
        }
    })
})

module.exports = router;