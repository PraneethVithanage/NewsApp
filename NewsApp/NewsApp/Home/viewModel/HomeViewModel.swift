//
//  HomeViewModel.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-21.
//

import Foundation

class HomeViewModel : ObservableObject {
    
    @Published var promotionLists : TopNews?
    
    init() {
      //  getPromotionData()
    }
    
//    func getPromotionData() {
//        
//        URLSession.fetch(request: URLRequest.getForSample(), completion: { resp in
//           // let _ = print("jdsjdsjddsdsdsdjdj>",resp)
//            switch resp {
//            case .success(let result):
//                if let data = result.data(using: .utf8){
//                    do {
//                        let decodedResponse = try JSONDecoder().decode(TopNews.self, from: data)
//                       
//                        DispatchQueue.main.async {
//                           
//                            self.promotionLists = decodedResponse
//                        }
//                    } catch let jsonError as NSError {
//                        print("JSON decode failed: \(jsonError.localizedDescription)")
//                    }
//                    return
//                }
//                
//            case .failure(_):
//                print("Error")
//                
//            }
//        })
//    }
    
}

extension String {
    func toJSON() -> Any? {
        guard let data = self.data(using: .utf8, allowLossyConversion: false) else { return nil }
        return try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
    }
}
