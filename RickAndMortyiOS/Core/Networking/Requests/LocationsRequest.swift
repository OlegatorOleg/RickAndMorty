final class LocationsRequest: NetworkRequestProtocol {
    typealias ResponseType = GeneralAPIResponse<Location>

    let endpoint: Endpoint
    let method: HTTPMethod = .GET

    init(name: String, page: Int) {
        endpoint = .getLocations(for: name, page: page)
    }
}
