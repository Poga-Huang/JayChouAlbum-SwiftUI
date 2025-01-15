//
//  AlbumInfo.swift
//  JayChouAlbum-SwiftUI
//
//  Created by 黃柏嘉 on 2025/01/14.
//

import Foundation

struct AlbumInfo {
    
    var index: String
    var title: String
    var releaseDate: String
    var count: Int
    
    static let infos: [AlbumInfo] = [
        AlbumInfo(index: "1",
                  title: "Jay",
                  releaseDate: "2000/11/07",
                  count: 10),
        AlbumInfo(index: "2",
                  title: "范特西",
                  releaseDate: "2001/09/14",
                  count: 10),
        AlbumInfo(index: "3",
                  title: "八度空間",
                  releaseDate: "2002/07/18",
                  count: 10),
        AlbumInfo(index: "4",
                  title: "葉惠美",
                  releaseDate: "2003/07/31",
                  count: 11),
        AlbumInfo(index: "5",
                  title: "七里香",
                  releaseDate: "2004/08/03",
                  count: 10),
        AlbumInfo(index: "6",
                  title: "11月的蕭邦",
                  releaseDate: "2005/11/01",
                  count: 12),
        AlbumInfo(index: "7",
                  title: "依然范特西",
                  releaseDate: "2006/09/05",
                  count: 11),
        AlbumInfo(index: "8",
                  title: "我很忙",
                  releaseDate: "2007/11/02",
                  count: 10),
        AlbumInfo(index: "9",
                  title: "魔杰座",
                  releaseDate: "2008/10/14",
                  count: 11),
        AlbumInfo(index: "10",
                  title: "跨時代",
                  releaseDate: "2010/05/18",
                  count: 11),
        AlbumInfo(index: "11",
                  title: "驚嘆號",
                  releaseDate: "2011/11/11",
                  count: 11),
        AlbumInfo(index: "12",
                  title: "12新作",
                  releaseDate: "2012/12/28",
                  count: 12),
        AlbumInfo(index: "13",
                  title: "哎呦，不錯哦",
                  releaseDate: "2014/12/26",
                  count: 12),
        AlbumInfo(index: "14",
                  title: "周杰倫的床邊故事",
                  releaseDate: "2016/06/24",
                  count: 10),
        AlbumInfo(index: "15",
                  title: "最偉大的作品",
                  releaseDate: "2022/07/15",
                  count: 12)
    ]
}
