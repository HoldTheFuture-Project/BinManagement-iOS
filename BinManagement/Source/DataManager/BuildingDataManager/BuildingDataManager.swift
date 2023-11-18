//
//  BuildingDataManager.swift
//  BinManagement
//
//  Created by hwijinjeong on 2023/11/18.
//

import Alamofire

//class BuildingDataManager {
//    func buildingDataManager(_ parameters : BuildingAPIInput, _ viewController : SearchBuildingViewController) {
//        AF.request("https://api.thecatapi.com/v1/images/search", method: .get, parameters: parameters).validate().responseDecodable(of: [BuildingModel].self) { response in
//            switch response.result {
//            case .success(let result):
//                viewController.successAPI(result)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//    }
//}

// client와 server를 연결


class BuildingDataManager {
    func buildingDataManager(_ parameters: BuildingAPIInput, _ viewController: SearchBuildingViewController) {
        AF.request("https://8ee3-218-148-90-111.ngrok-free.app/trashcan", method: .get, parameters: parameters)
            .validate()
            .responseDecodable(of: BuildingDataResponse.self) { response in
                switch response.result {
                case .success(let result):
                    viewController.successAPI(result.ret)
                case .failure(let error):
                    print(error.localizedDescription)
                }
        }
    }
}
