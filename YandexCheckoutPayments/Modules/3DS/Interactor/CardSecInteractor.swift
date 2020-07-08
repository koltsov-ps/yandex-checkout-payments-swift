//import Foundation
//import FunctionalSwift
//
//class CardSecInteractor {
//
//    private let options = WebBrowserOptions.all
//
//    // MARK: - VIPER module
//
//    weak var output: WebBrowserInteractorOutput?
//    weak var cardSecPresenter: CardSecInteractorOutput?
//
//    // MARK: - VIPER module properties
//
//    private let analyticsService: AnalyticsProcessing
//    private let requestUrl: String
//    private let redirectUrl: String
//    private let logger: WebLogger
//
//    fileprivate lazy var redirectPaths = [
//        redirectUrl,
//    ]
//
//    init(analyticsService: AnalyticsProcessing,
//         requestUrl: String,
//         redirectUrl: String,
//         logger: WebLogger) {
//        self.analyticsService = analyticsService
//        self.requestUrl = requestUrl
//        self.redirectUrl = redirectUrl
//        self.logger = logger
//    }
//}
//
//// MARK: - WebBrowserInteractorInput
//
//extension CardSecInteractor: WebBrowserInteractorInput {
//    func createRequest() {
//        func makeRequest(url: URL) -> URLRequest {
//            return URLRequest(url: url)
//        }
//
//        let url = URL(string: requestUrl)
//
//        guard let output = output,
//              let request = makeRequest(url:) <^> url else {
//            return
//        }
//
//        output.didCreateRequest(request, options)
//    }
//
//    func shouldProcessRequest(_ request: URLRequest) -> Bool {
//        logger.trace(request)
//        let path = request.url?.absoluteString ?? ""
//        let availableRedirects = redirectPaths.filter { path.hasPrefix($0) == true }
//        return availableRedirects.isEmpty == false
//    }
//
//    func processRequest(_ request: URLRequest) {
//        cardSecPresenter?.didSuccessfullyPassedCardSec()
//    }
//}
//
//// MARK: - CardSecInteractorInput
//
//extension CardSecInteractor: CardSecInteractorInput {
//    func trackEvent(_ event: AnalyticsEvent) {
//        analyticsService.trackEvent(event)
//    }
//}
