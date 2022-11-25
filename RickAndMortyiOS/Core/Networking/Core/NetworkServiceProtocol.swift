import Foundation
import Combine

protocol NetworkServiceProtocol: AnyObject {
    var customDecoder: JSONDecoder { get }
    
    func fetch<T: NetworkRequestProtocol>(_ request: T) async throws -> T.ResponseType
}
