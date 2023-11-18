//
//  BuildingModel.swift
//  BinManagement
//
//  Created by hwijinjeong on 2023/11/18.
//
//
//struct BuildingModel : Decodable {
//    var id : String?
//    var url : String?
//}


struct BuildingModel: Decodable {
    var id: Int?
    var location: String?
    var building_id: Int?
}
