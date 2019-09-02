const express=require("express")
var router=express.Router();
var pool=require("../pool")

router.get("/list",(req,res)=>{
    var p=req.query.pno;
    var ps=req.query.pagesize;
    if(!p){p=1}
    if(!ps){ps=9}
    var offset=(p-1)*ps;
    ps=parseInt(ps);
    var sql=`select * from s_detail LIMIT ?,?`
    pool.query(sql,[offset,ps],(err,result)=>{
        if(err) throw err;
        if(result.length){
            res.send({code:1,msg:"查询成功",data:result})
        }else{
            res.send({code:-1,msg:"无结果"})
        }
    })
})

router.get("/by",(req,res)=>{
    var type=req.query.type;
    var p=req.query.pno;
    var ps=req.query.pagesize;
    if(!p){p=1}
    if(!ps){ps=9}
    var offset=(p-1)*ps;
    ps=parseInt(ps);
    var sql;
    if(type=="系列单品"||type=="品牌专题"){
        sql=`select * from s_detail where sd_type=? LIMIT ?,?`
    // }else if(type=="穿搭达人"){
    //     sql=``
    }else{
        sql=`select * from t_detail where td_type=? LIMIT ?,?`
    }
    pool.query(sql,[type,offset,ps],(err,result)=>{
        if(err) throw err;
        if(result.length){
            res.send({code:1,msg:"查询成功",data:result})
        }else{
            res.send({code:-1,msg:"无结果"})
        }
    })
})

//单品detail
router.get("/sdBy",(req,res)=>{
    var sid=req.query.id;
    var sql=`select * from s_detail where sd_id=?`
    pool.query(sql,[sid],(err,result)=>{
        if(err) throw err;
        if(result.length){
            res.send({code:1,msg:"查询成功",data:result})
        }else{
            res.send({code:-1,msg:"查询失败"})
        }
    })
})
//套装detail
router.get("/tdBy",(req,res)=>{
    var sid=req.query.id;
    var sql=`select * from t_detail where td_id=?`
    pool.query(sql,[sid],(err,result)=>{
        if(err) throw err;
        if(result.length){
            res.send({code:1,msg:"查询成功",data:result})
        }else{
            res.send({code:-1,msg:"查询失败"})
        }
    })
})
// 浏览数
router.post("/view",(req,res)=>{
    var stat=req.body.stat;
    var id=req.body.id;
    var sql;
    if(stat==1){
        sql=`update s_detail set view_num=view_num+1 where sd_id=?`
    }else{
        sql=`update t_detail set view_num=view_num+1 where td_id=?`
    }
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:1,msg:"阅览成功"})
        }else{
            res.send({code:-1,msg:"阅览失败"})
        }
    })
})

//搜索
router.get("/search",(req,res)=>{
    var tag=req.query.tag;
    var p=req.query.pno;
    var ps=req.query.pagesize;
    if(!p){p=1}
    if(!ps){ps=9}
    var offset=(p-1)*ps;
    ps=parseInt(ps);
    var data=[];
    var sql=`select * from s_detail where sd_type=? or title like '%${tag}%' limit ?,?`
    pool.query(sql,[tag,offset,ps],(err,result)=>{
        if(err) throw err;
        if(result.length>0 && result.length<9){
            data=data.concat(result);
            sql=`select * from t_detail where td_type=? or title like '%${tag}%' limit ?,?`
            pool.query(sql,[tag,offset,ps-result.length],(err,result)=>{
                if(err) throw err;
                if(result.length){
                    data=data.concat(result)
                    res.send({code:1,msg:"查询成功",data:data})
                }else{
                    res.send({code:1,msg:"查询成功",data:data})
                }
            })
        }else{
            if(result.length>=9){
                data=result;
                res.send({code:1,msg:"查询成功",data:data})
            }else if(result.length<=0){
                sql=`select * from t_detail where td_type=? or title like '%${tag}%' limit ?,?`
                pool.query(sql,[tag,offset,ps],(err,result)=>{
                    if(err) throw err;
                    if(result.length){
                        data=result
                        res.send({code:1,msg:"查询成功",data:data})
                    }else{
                        res.send({code:-1,msg:"查询失败"})
                    }
                })
            }
        }
    })
})

module.exports=router;