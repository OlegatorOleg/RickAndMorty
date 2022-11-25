import Foundation

struct APIError: Decodable, Error {
    let errorMessage: String
    
    enum CodingKeys: String, CodingKey {
        case errorMessage = "error"
    }
}
