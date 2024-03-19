
using CSV
using DataFrames
using Random

origonal_data = CSV.read("mtcars.csv", DataFrame)

function data_split(dat, trf=0.5, vlf=0.25, tsf=0.25)
    nrows = size(dat, 1)
    trnr = Int(nrows * trf)
    vlnr = Int(nrows * vlf)
    tsnr = Int(nrows * tsf)
    
    # 随机划分数据集
    idxs = shuffle(1:nrows)
    tr_idxs = idxs[1:trnr]
    vl_idxs = idxs[trnr+1:trnr+vlnr]
    ts_idxs = idxs[trnr+vlnr+1:end]
    
    tr_data = dat[tr_idxs, :]
    vl_data = dat[vl_idxs, :]
    ts_data = dat[ts_idxs, :]
    
    return tr_data, vl_data, ts_data
end

train_data, validation_data, test_data = data_split(origonal_data, 0.5, 0.25, 0.25)
