import Foundation

struct GeneralAPIResponse<T: Decodable>: Decodable {
    let pageInfo: PageInfo
    let results: [T]
    
    enum CodingKeys: String, CodingKey {
        case pageInfo = "info"
        case results = "results"
    }
}
