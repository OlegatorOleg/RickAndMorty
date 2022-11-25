final class CharactersRequest: NetworkRequestProtocol {
    typealias ResponseType = GeneralAPIResponse<RickAndMortyCharacter>

    let endpoint: Endpoint
    let method: HTTPMethod = .GET

    init(name: String, status: String, gender: String, page: Int) {
        endpoint = .getCharacters(name: name, status: status,
                                  gender: gender, page: page)
    }
}
