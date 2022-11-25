import Foundation
import UIKit

extension UICollectionView {
    func setLoading(){
        let activityIndicatorView = UIActivityIndicatorView(style: .medium)
        activityIndicatorView.color = .rickBlue
        self.backgroundView = activityIndicatorView
        activityIndicatorView.startAnimating()
    }
}
