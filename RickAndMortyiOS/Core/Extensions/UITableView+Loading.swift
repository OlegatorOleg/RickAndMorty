import Foundation
import UIKit

extension UITableView {
    func setLoading() { 
        let activityIndicatorView = UIActivityIndicatorView(style: .medium)
        activityIndicatorView.color = .rickBlue
        self.backgroundView = activityIndicatorView
        activityIndicatorView.startAnimating()
        self.separatorStyle = .none
    }
}
