protocol NetworkRequestProtocol {
    associatedtype ResponseType: Decodable
    
    var endpoint: Endpoint { get }
    var method: HTTPMethod { get }
}
